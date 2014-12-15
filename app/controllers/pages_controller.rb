class PagesController < ApplicationController
  def index
    @members = [
          #Tanks
          {name:"Houndstooth", role: "Tank", class: "DK"},
          {name:"Neurf", role: "Tank", class: "Warrior"},
          {name:"Twobeers", role: "Tank", class: "Monk"},
          #Healers
          {name: "Jurik", role: "Healer", class: "Druid"},
          {name: "Espressomonk", role: "Healer", class: "Monk"},
          {name: "Farore", role: "Healer", class: "Shaman"},
          {name: "Gimpybroseph", role: "Healer", class: "Priest"},
          {name: "Ihz", role: "Healer", class: "Paladin"},
          #DPS
          {name: "Arrow", role: "DPS", class: "Hunter"},
          {name: "Bael", role: "DPS", class: "Warlock"},
          {name: "Cis", role: "DPS", class: "Warlock"},
          {name: "Hafbar", role: "DPS", class: "Hunter"},
          {name: "Ilzan", role: "DPS", class: "Rogue"},
          {name: "Ippon", role: "DPS", class: "Rogue"},
          {name: "Keirimath", role: "DPS", class: "Paladin"},
          {name: "Kinoble", role: "DPS", class: "Druid"},
          {name: "Luminoire", role: "DPS", class: "Priest"},
          {name: "Paleaura", role: "DPS", class: "DK"},
          {name: "Powerwaddle", role: "DPS", class: "Paladin"},
          {name: "Titandust", role: "DPS", class: "Warrior"},
    ]

  

  end

end
