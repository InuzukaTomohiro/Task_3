class UsersController < ApplicationController

    def index
    end

    def show
        @users = Book.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        redirect_to user_path(current_user.id)
    end

    private

    def user_params
        params.require(:user).permit(:profile_image, :name, :introduction)
    end

end
