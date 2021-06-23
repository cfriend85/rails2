class RpgController < ApplicationController
    def index
        session[:gold] ||= 0
        session[:activities] ||= "Find some Gold! \n"
    end
    def calculate
        if params[:location].include? "Farm"
            session[:gold] += @g = rand(10..20)
            session[:activities] += "You earned #{@g} gold! \n"
        elsif params[:location].include? "Cave"
            session[:gold] += @g = rand(5..10)
            session[:activities] += "You earned #{@g} gold! \n"
        elsif params[:location].include? "House"
            session[:gold] += @g = rand(2..5)
            session[:activities] += "You earned #{@g} gold! \n"
        elsif params[:location].include? "Casino"
            session[:gold] += @g = rand(-50..50)
                if @g < 0
                    session[:activities] += "You lost #{@g} gold! \n".tr!('-', '')
                else
                    session[:activities] += "You earned #{@g} gold! \n"
                end
        end
        redirect_to '/'
    end
    def clear
        reset_session
        redirect_to '/'
    end
end
