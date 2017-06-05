class SourceController < ApplicationController
  
  
  # REST VERB
  # GET
  def index
    @sources = Source.all
    render json:  @sources
  end
  
end
