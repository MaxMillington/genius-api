class WelcomeController < ApplicationController

  def index
    @text = Text.new
    @texts = Text.all
  end

  def search
    @search_results = GeniusService.new(current_user).
        search(params[:q])
  end

end