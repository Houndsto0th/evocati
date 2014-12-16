class WowAPI
  # def initialize
  #   @conn = Faraday.new(url: 'http://us.battle.net')
  # end
  #
  # def get_character(character)
  #   response = @conn.get do |req|
  #     req.url "/api/wow/character/Icecrown/#{character}"
  #     req.headers['Content-Type'] = 'application/json'
  #
  #   end
  #
  # JSON.parse(response.body, symbolize_names: true)
  # end

  # def get_character(character, hydra)
  #   request = Typhoeus::Request.new(
  #     "http://us.battle.net/api/wow/chracter/Icecrown/#{character}",
  #     headers: {Accept: "application/json"},
  #   )
  #   hydra.queue(request)
  #   request
  #
  # end

end
