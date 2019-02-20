require_dependency "blorgh/application_controller"

module GemMaster
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end
