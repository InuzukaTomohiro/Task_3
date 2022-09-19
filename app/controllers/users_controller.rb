class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "You have updated user successfully."
            redirect_to user_path(current_user.id)
        else
            render :edit
        end
    end

    private

    def user_params
        params.require(:user).permit(:profile_image, :name, :introduction)
    end

end
