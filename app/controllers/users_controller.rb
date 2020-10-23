class UsersController < ApplicationController
    include UsersHelper
    
    def new
        @user = User.new(username: "kazee", email: "kas@example.com", password: "password")
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end
end
