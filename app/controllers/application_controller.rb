class ApplicationController < ActionController::Base
    before_action :authenticate_user!, unless: :devise_controller?
    helper_method :current_company

    private

    def current_company
        @current_company ||= current_user.company if user_signed_in?
    end
end
