class PagesController < ApplicationController
  MEMBERS = [
    #Tanks
    {name:"Houndstooth", role: "Tank", class: "DK", warlogs: "2932"},
    {name:"Neurf", role: "Tank", class: "Warrior", warlogs: "925912"},
    {name:"Twobeers", role: "Tank", class: "Monk", warlogs: "2930"},
    #Healers
    {name: "Jurik", role: "Healer", class: "Druid", warlogs: "2936"},
    {name: "Espressomonk", role: "Healer", class: "Monk", warlogs: "671312"},
    {name: "Farore", role: "Healer", class: "Shaman", warlogs: "941326"},
    {name: "Gimpybroseph", role: "Healer", class: "Priest", warlogs: "540780"},
    {name: "Ihz", role: "Healer", class: "Paladin", warlogs: "326466"},
    #DPS
    {name: "Arrow", role: "DPS", class: "Hunter", warlogs: "807868"},
    {name: "Cis", role: "DPS", class: "Warlock", warlogs: "2928"},
    {name: "Hafbar", role: "DPS", class: "Hunter", warlogs: "574705"},
    {name: "Ilzan", role: "DPS", class: "Rogue", warlogs: "87885"},
    {name: "Ippon", role: "DPS", class: "Rogue", warlogs: "326467"},
    {name: "Keirimath", role: "DPS", class: "Paladin", warlogs: "2935"},
    {name: "Kinoble", role: "DPS", class: "Druid", warlogs: "4714"},
    {name: "Luminoire", role: "DPS", class: "Priest", warlogs: "236300"},
    {name: "Paleaura", role: "DPS", class: "DK", warlogs: "204050"},
    {name: "Powerwaddle", role: "DPS", class: "Paladin", warlogs: "509481"},
    {name: "Titandust", role: "DPS", class: "Warrior", warlogs: "972145"},
  ]

  def index
    @members = MEMBERS
    @armory_responses = WowAPI.new.get_characters(MEMBERS)

    #faraday request
    # @members.each do |member|
    # @armory_responses = WowAPI.new.get_character("member[:name]")


  end

end
