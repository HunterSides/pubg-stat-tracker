require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "game_secret"
  end

  get '/' do
    erb :index
  end

  helpers do

    def logged_in? #method which evaluates to true or false based on if current_user is defined or not (if defined method returns true, else false)
      !!current_user
    end

    def current_user #sets @current_user = User.find_by() if its undefined only if session[:user_id]==true
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

  end
end

