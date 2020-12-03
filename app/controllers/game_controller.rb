class GamesController < ApplicationController
    get '/games' do #method which should reference games.erb and display current_users saved games
      if logged_in? #logged_in method implicitely references the current user
        @games = Game.all #@games = @current_user.games
        erb :'games/games' 
      else
        redirect to '/login'
      end
    end
  
    get '/games/new' do
      if logged_in?
        erb :'games/create_game'
      else
        redirect to '/login'
      end
    end
  
    post '/games' do #method which saves game for current_user) 
      if logged_in?  #if logged_in == true save @game with params, else redirect to games/new 
        if params[:content] == ""
          redirect to "/games/new"
        else
          @game = current_user.games.build(content: params[:content],damage_done: params[:damage_done],kill_amount: params[:kill_amount],placement: params[:placement])
          
          if @game.save #if @game.save method == true redirect to /games/id, else games/new 
            redirect to "/games/#{@game.id}"
          else
            redirect to "/games/new"
          end
        end
      else
        redirect to '/login'
      end
    end
  
    get '/games/:id' do
      if logged_in?
        @game = Game.find_by_id(params[:id])
        erb :'games/show_game'
      else
        redirect to '/login'
      end
    end
  
    get '/games/:id/edit' do
      if logged_in?
        @game = Game.find_by_id(params[:id])
        if @game && @game.user == current_user
          erb :'games/edit_game'
        else
          redirect to '/games'
        end
      else
        redirect to '/login'
      end
    end
  
    patch '/games/:id' do
      if logged_in?
        if params[:content] == ""
          redirect to "/games/#{params[:id]}/edit"
        else
          @game = Game.find_by_id(params[:id])
          if @game && @game.user == current_user
            if @game.update(content: params[:content])
              redirect to "/games/#{@game.id}"
            else
              redirect to "/games/#{@game.id}/edit"
            end
          else
            redirect to '/games'
          end
        end
      else
        redirect to '/login'
      end
    end
  
    delete '/games/:id/delete' do
      if logged_in?
        @game = Game.find_by_id(params[:id])
        if @game && @game.user == current_user
          @game.delete
        end
        redirect to '/games'
      else
        redirect to '/login'
      end
    end
  end