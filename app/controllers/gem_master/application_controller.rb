require_dependency 'gem_master/application_controller'

module GemMaster
  # Engine controller
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end
