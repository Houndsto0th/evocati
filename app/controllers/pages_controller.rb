class PagesController < ApplicationController

  TANKS = [

    {name: "Dizeased", spec: "Blood", class: "DK", warlogs: "2410527", realm: "icecrown"}
    {name: "Sorahka", spec: "Brewmaster", class: "Monk", warlogs: "7559026", realm: "icecrown"},
  ]

  HEALERS = [
    {name: "Alexiistexas", spec: "Restoration", class: "Shaman", warlogs: "941150", realm: "icecrown"},
    {name: "Cerinez", spec: "Holy", class: "Priest", warlogs: "7829139", realm: "icecrown"},
    {name: "Cuppycakez", spec: "Discipline", class: "Priest", warlogs: "996352", realm: "icecrown"}
    {name: "Iberia", spec: "Holy", class: "Paladin", warlogs: "571964", realm: "icecrown"},

  ]

  DPS = [
    {name: "Alisu", spec: "Feral", class: "Druid", warlogs: "2529", realm: "icecrown"},
    {name: "Aryel", spec: "Arcane", class: "Mage", warlogs: "781013", realm: "malygos"},
    {name: "Bec", spec: "Assassination", class: "Rogue", warlogs: "941149", realm: "malygos"},
    {name: "Caspeco", spec: "Enhancement", class: "Shaman", warlogs: "5319686", realm: "icecrown"},
    {name: "Drynin", spec: "Combat", class: "Rogue", warlogs: "2465609", realm: "malygos"},
    {name: "Fuzzycuffsqt", spec: "Unholy", class: "DK", warlogs: "4984144", realm: "icecrown"},
    {name: "Katharla", spec: "Survival", class: "Hunter", warlogs: "425855", realm: "icecrown"},
    {name: "Marrcus", spec: "Unholy", class: "DK", warlogs: "658789", realm: "malygos"},
    {name: "Ogspokes", spec: "Retribution", class: "Paladin", warlogs: "2530", realm: "icecrown"},
    {name: "Oomtree", spec: "Balance", class: "Druid", warlogs: "441772", realm: "icecrown"},
    {name: "Sauma", spec: "Marksmanship", class: "Hunter", warlogs: "1015266", realm: "malygos"},
    {name: "Slumber", spec: "Fury", class: "Warrior", warlogs: "887307", realm: "icecrown"},
    {name: "Ssen", spec: "Balance", class: "Druid", warlogs: "8040173", realm: "icecrown"},
    {name: "Zeblen", spec: "Beast Mastery", class: "Hunter", warlogs: "2790038", realm: "icecrown"},
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
