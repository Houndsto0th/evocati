class PagesController < ApplicationController
  OFFICERS = [
    {name: "Tanned - GM", role: "DPS", class: "Priest", warlogs: "2929", rank: "GM", tag: "Tan#1393"},
    {name:"Houndstooth", role: "Tank", class: "DK", warlogs: "2932", rank: "Officer", tag: "Houndstooth#1724"},
    {name:"Neurf", role: "Tank", class: "Warrior", warlogs: "925912", rank: "Officer", tag: "Contact in game"},
    {name:"Twobeers", role: "Tank", class: "Monk", warlogs: "2930", rank: "Officer", tag: "Contact in game"},
    {name: "Sepa", role: "Healer", class: "Paladin", warlogs: "9432", rank: "Officer", tag: "Contact in game"},
    {name: "Jurik", role: "Healer", class: "Druid", warlogs: "2936", rank: "Officer", tag: "Contact in game"},
  ]

  MEMBERS = [
    #Healers
    {name: "Farore", role: "Healer", class: "Shaman", warlogs: "941326", rank: "Member"},
    {name: "Gimpybroseph", role: "Healer", class: "Priest", warlogs: "540780", rank: "Member"},
    {name: "Luminoire", role: "Healer", class: "Priest", warlogs: "236300", rank: "Member"},

    #DPS
    {name: "Arrow", role: "DPS", class: "Hunter", warlogs: "807868", rank: "Member"},
    {name: "Cis", role: "DPS", class: "Warlock", warlogs: "2928", rank: "Member"},
    {name: "Ilzan", role: "DPS", class: "Rogue", warlogs: "87885", rank: "Member"},
    {name: "Ippon", role: "DPS", class: "Rogue", warlogs: "326467", rank: "Member"},
    {name: "Keirimath", role: "DPS", class: "Paladin", warlogs: "2935", rank: "Member"},
    {name: "Kinoble", role: "DPS", class: "Druid", warlogs: "4714", rank: "Member"},
    {name: "Paleaura", role: "DPS", class: "DK", warlogs: "204050", rank: "Member"},
    {name: "Powerwaddle", role: "DPS", class: "Paladin", warlogs: "509481", rank: "Member"},
    {name: "Titandust", role: "DPS", class: "Warrior", warlogs: "972145", rank: "Member"},
  ]

  def index
    @officers = OFFICERS
    @members = MEMBERS
    # @armory_responses = WowAPI.new.get_characters(MEMBERS)

    #faraday request
    # @members.each do |member|
    # @armory_responses = WowAPI.new.get_character("member[:name]")


  end

end
