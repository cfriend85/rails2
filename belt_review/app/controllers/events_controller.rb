class EventsController < ApplicationController
    def index
    @user = User.find(current_user.id)
    @events = Event.where(state: @user.state)
    @other_events = Event.where.not(state: @user.state)
    end 

    def add 
        @event = Event.create(event_params)
        if @event.valid?
            redirect_to '/events'
        else
            flash[:errors] = @event.errors.full_messages
            redirect_to :back
        end
    end

    def show
        @event = Event.find(params[:id])
        @user = User.find(current_user.id)
        @attendees = Attendee.where(event_id:@event)
        @comments = Comment.where(event_id:@event.id)
    end

    def new_attendee
        Attendee.create(user_id:current_user.id, event_id:params[:id])
        redirect_to '/events'
    end

    def destroy_attendee
        @attendee = Attendee.find_by(user_id:current_user.id, event_id:params[:id])
        @attendee.destroy
        redirect_to events_path
    end 

    def new_comment
    @comment = Comment.create(content:params[:content], user_id: current_user.id, event_id:params[:id])
    redirect_to "/events/#{params[:id]}"
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path 
    end

    private
    def event_params
        params.require(:event).permit(:name, :date, :city, :state, :user_id)
    end
    
end
