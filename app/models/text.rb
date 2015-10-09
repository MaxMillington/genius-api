class Text < ActiveRecord::Base

  validates :text_url, uniqueness: true


  def to_html
    TextParser.new(text_url).to_html
  end


end
