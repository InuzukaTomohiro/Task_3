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
        @user = User.new(user_params)
        @User.user_id = current_user.id
        @User.save
        redirect_to user_path(current_user.id)
    end

    private

    def user_params
        params.require(:user).permit(:image, :name, :introduction)
    end

end
