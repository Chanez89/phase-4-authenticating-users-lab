class SessionsController < ApplicationController
    def create
        user = User.find_by_username(params[:username])
        sessions[:user_id] ||= user.id
        render json: user, status: :created
    end

    def destroy
        sessions.delete :user_id
        remder status: :no_content
    end
end
