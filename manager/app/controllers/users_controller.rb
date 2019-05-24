class UsersController < ApplicationController
    def show
        @user = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:success] = "You did sign up successful"
            redirect_to login_path
        else
            render 'new'
        end
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def delete
        User.find(params[:id]).destroy
        redirect_to :action => "show"
    end
end
