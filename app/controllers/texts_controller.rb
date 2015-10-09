class TextsController < ApplicationController

  def create
    @text = Text.create(text_params)
    redirect_to root_path
  end

  def show
    @text = Text.find(params[:id])
    @parsed_text = @text.to_html
  end

  def index

  end

  private

  def text_params
    params.require(:text).permit(:text_url, :tag)
  end

end