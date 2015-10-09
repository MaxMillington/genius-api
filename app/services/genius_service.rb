class GeniusService

  attr_reader :connection

  def initialize(user)
    @connection = Hurley::Client.new("http://api.genius.com/")
    connection.header[:authorization] = "Bearer #{user.token}"
  end

  def search(term)
    parse(connection.get('search', term))[:response][:hits]
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end