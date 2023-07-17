class PagesController < ApplicationController
  def index
    # Binding for debug your session
    # It will stop your application Process
    # After running the following command for get the current session
    # session.to_hash
    # binding.break
  end

  def secret
    if current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
  end
end
