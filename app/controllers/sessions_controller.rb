class SessionsController < ApplicationController

# loggin in 
def create 
user = User.find_by(username: params[:username])
session[:user_id] = user.id 
render json: user





end


# logging out 
def destroy 
    session.destroy :user_id
    head :no_content
end


end
