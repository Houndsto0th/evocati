class PagesController < ApplicationController
  MEMBERS = [
    #Tanks
    {name:"Houndstooth", role: "Tank", class: "DK", warlogs: "2932"},
    {name:"Neurf", role: "Tank", class: "Warrior", warlogs: "925912"},
    {name:"Twobeers", role: "Tank", class: "Monk", warlogs: "2930"},
    #Healers
    {name: "Jurik", role: "Healer", class: "Druid", warlogs: "2936"},
    {name: "Farore", role: "Healer", class: "Shaman", warlogs: "941326"},
    {name: "Gimpybroseph", role: "Healer", class: "Priest", warlogs: "540780"},
    {name: "Sepa", role: "Healer", class: "Paladin", warlogs: "9432"},

    #DPS
    {name: "Arrow", role: "DPS", class: "Hunter", warlogs: "807868"},
    {name: "Tanned", role: "DPS", class: "Priest", warlogs: "2929"},
    {name: "Cis", role: "DPS", class: "Warlock", warlogs: "2928"},
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
