class TextParser

  attr_reader :text

  def initialize(text_url)
    @text = Hurley.get(text_url).body
  end

  def to_html
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

    markdown.render(text)
  end






end