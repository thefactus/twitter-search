class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def generic_redirect(path, flash_hash = {})
    flash_hash.each do |k, v|
      flash[k] = v
    end

    redirect_to path
  end
end
