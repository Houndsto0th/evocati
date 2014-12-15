class WowAPI
  def initialize
    @conn = Faraday.new(url: 'http://us.battle.net')
  end

  def get_character(character)
    response = @conn.get do |req|
      req.url "/api/wow/character/Icecrown/#{character}"
      req.headers['Content-Type'] = 'application/json'

    end

  JSON.parse(response.body, symbolize_names: true)
  end

#realized I don't need this now, leaving for later.
  # def getGuild
  #   response = @conn.get do |req|
  #     req.url "/api/wow/guild/Icecrown/Vindicatum?fields=members"
  #     req.headers['Content-Type'] = 'application/json'
  #
  #   end
  #
  #   JSON.parse(response.body, symbolize_names: true)
  # end

end
