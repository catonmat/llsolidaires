class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
   if user_signed_in?
      if current_user.role == "owner"
        redirect_to dashboards_owner_path
      elsif current_user.role == "medical"
        redirect_to dashboards_medical_path
      end
    end
  end
end
