class PagesController < ApplicationController
  TANKS = [
    {name: "Marrcus", spec: "Blood", class: "DK", warlogs: "658789", realm: "malygos"},
    {name: "Dizeased", spec: "Blood", class: "DK", warlogs: "2410527", realm: "icecrown"}
  ]

  HEALERS = [
    {name: "Iberia", spec: "Holy", class: "Paladin", warlogs: "571964", realm: "icecrown"},
    {name: "Kimchii", spec: "Mistwalker", class: "Monk", warlogs: "118570", realm: "icecrown"},
    {name: "Italliann", spec: "Restoration", class: "Druid", warlogs: "5735834", realm: "icecrown"},
    {name: "Lones", spec: "Restoration", class: "Druid", warlogs: "6230057", realm: "icecrown"},
    {name: "Cuppycakez", spec: "Discipline", class: "Priest", warlogs: "996352", realm: "icecrown"}

  ]

  DPS = [
    {name: "Donekin", spec: "Survival", class: "Hunter", warlogs: "2104073", realm: "icecrown"},
    {name: "Sauma", spec: "Marksman", class: "Hunter", warlogs: "1015266", realm: "malygos"},
    {name: "Katharla", spec: "Survival", class: "Hunter", warlogs: "425855", realm: "icecrown"},
    {name: "Bec", spec: "Combat", class: "Rogue", warlogs: "941149", realm: "malygos"},
    {name: "Gnomlicious", spec: "Arcane", class: "Mage", warlogs: "996346", realm: "icecrown"},
    {name: "Aryel", spec: "Frost", class: "Mage", warlogs: "781013", realm: "malygos"},
    {name: "Ogspokes", spec: "Retribution", class: "Paladin", warlogs: "2530", realm: "icecrown"},
    {name: "Nakedwarrior", spec: "Fury", class: "Warrior", warlogs: "326615", realm: "icecrown"},
    {name: "Slumber", spec: "Fury", class: "Warrior", warlogs: "887307", realm: "icecrown"},
    {name: "Dreamsteak", spec: "Enhancement", class: "Shaman", warlogs: "6355612", realm: "icecrown"},
    {name: "Alisu", spec: "Feral", class: "Druid", warlogs: "2529", realm: "icecrown"},
    {name: "Oomtree", spec: "Balance", class: "Druid", warlogs: "441772", realm: "icecrown"},
    {name: "Vixia", spec: "Balance", class: "Druid", warlogs: "712247", realm: "icecrown"},
  ]

  def index
    @tanks = TANKS
    @healers = HEALERS
    @dps = DPS
    # @armory_responses = WowAPI.new.get_characters(MEMBERS)

    #faraday request
    # @members.each do |member|
    # @armory_responses = WowAPI.new.get_character("member[:name]")


  end

end
