class WowAPI

  def initialize(hydra = Typhoeus::Hydra.new)
    @hydra = hydra
  end

  def get_characters(members)
    responses = []
    members.each do |member|
      request = Typhoeus::Request.new(
        "http://us.battle.net/api/wow/character/Icecrown/#{member[:name]}",
        headers: {Accept: "application/json"},
      )
      request.on_complete { |response| responses << JSON.parse(request.response.body) }
      @hydra.queue(request)
    end
    @hydra.run
    responses
  end

end





# Faraday request to compare to Typhoeus
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
#end
