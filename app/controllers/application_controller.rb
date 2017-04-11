class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # 2 helpers brough from this tutorial 
  # https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one
  include Response
  include ExceptionHandler
end
