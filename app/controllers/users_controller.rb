class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        return unless User.exists?(params[:id])
    
        @user = User.find_by(id: params[:id])
    end
end