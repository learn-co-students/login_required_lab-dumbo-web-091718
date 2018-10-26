class SesssionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def create_user
  end


  private

  def require_login
      return head(:forbidden) unless session.include? :user_id
  end
end
