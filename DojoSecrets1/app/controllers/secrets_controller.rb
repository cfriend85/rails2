class SecretsController < ApplicationController
  before_action :require_login
  # except: [:index] you can add this as a pram to the before action and reference many methods
  # the way it is now is how you do it when you include the action on the app controller
  
  def index
    @secrets = Secret.all
  end

  def add
    @user = User.find(params[:id])
  end

  def create
  @secret = Secret.create(content: params[:content], user_id: params[:id])
  if @secret.valid?
    redirect_to '/secrets'
  elsif @secret.errors
    flash[:errors] = @secret.errors.full_messages
    redirect_to "/secrets/add/#{params[:id]}"
  end
  end

  def destroy
  @secret = Secret.find(params[:id])
  @secret.destroy
  redirect_to '/secrets'
  end

end
