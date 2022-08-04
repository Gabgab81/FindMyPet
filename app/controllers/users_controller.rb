class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def user_adverts
        @user = User.find(params[:id])
        @adverts = Advert.where(user_id: @user)
    end

end
