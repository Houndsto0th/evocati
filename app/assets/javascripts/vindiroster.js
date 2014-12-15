function getCharacter(toonName,toonRealm) {

  if(!toonName || !toonRealm) {
    return ""
  }

  var toonJSON = UrlFetchApp.fetch("us.battle.net/api/wow/character/"+toonRealm+"/"+toonName+"?fields=items,statistics,progression");
  var toon = JSON.parse(toonJSON.getContentText());

  var wodstats = toon.statistics.subCategories[5].subCategories[5].statistics

  var bosskills = 0
  for (var i = 1; i <= 15; i+=2){
    bosskills += wodstats[i].quantity
  }

  var getItem = function(item){
    var itemlevel = "N/A",
    itemlevelcm = 0
    if (item) {
      itemlevel = item.itemLevel,
      itemlevelcm = itemlevel
      if (itemlevel > 630) {
        var itemlevelcm = 630
      }
    }
    return [itemlevel, itemlevelcm]
  }

  var head = getItem(toon.items.head)
  var neck = getItem(toon.items.neck)
  var shoulders = getItem(toon.items.shoulder)
  var back = getItem(toon.items.back)
  var chest = getItem(toon.items.chest)
  var wrist = getItem(toon.items.wrist)
  var hands = getItem(toon.items.hands)
  var waist = getItem(toon.items.waist)
  var legs = getItem(toon.items.legs)
  var feet = getItem(toon.items.feet)
  var finger1 = getItem(toon.items.finger1)
  var finger2 = getItem(toon.items.finger2)
  var trinket1 = getItem(toon.items.trinket1)
  var trinket2 = getItem(toon.items.trinket2)
  var mainHand = getItem(toon.items.mainHand)
  var offHand = getItem(toon.items.offHand)

  var CM_iL_Total = head[1]+neck[1]+shoulders[1]+back[1]+chest[1]+wrist[1]+hands[1]+waist[1]+legs[1]+feet[1]+finger1[1]+finger2[1]+trinket1[1]+trinket2[1]+mainHand[1]+offHand[1]
  var CM_iL = CM_iL_Total / 16
  if (offHand[1] == 0) { CM_iL = CM_iL_Total / 15 }

  var gi = [5310, 5317, 5311, 5324, 5318, 5325, 5312, 5319, 5326, 5313, 5320, 5327, 5314, 5321, 5328]; // gift of X enchants
  var bi = [5281, 5285, 5284, 5298, 5292, 5297, 5300, 5293, 5299, 5302, 5294, 5301, 5304, 5295, 5303]; // breath of X enchants

  var killsforRaidId = function(raid_id){
    var normal = 0,
    heroic = 0,
    mythic = 0;

    toon.progression.raids[raid_id].bosses.forEach(function(boss){
      normal += boss.normalKills
      heroic += boss.heroicKills
      mythic += boss.mythicKills
    })
    return [normal, heroic, mythic]
  }

  var highmaul = killsforRaidId(32)
  var highmaulNormal = highmaul[0]
  var highmaulHeroic = highmaul[1]
  var highmaulMythic = highmaul[2]

  var brf = killsforRaidId(33)
  var brfNormal = brf[0]
  var brfHeroic = brf[1]
  var brfMythic = brf[2]

  var enchantsByItem = function(item){
    var enchant
    if (gi.indexOf(item.tooltipParams["enchant"]) > -1) {
      enchant = "Gift"
    } else if (bi.indexOf(item.tooltipParams["enchant"]) > -1) {
      enchant = "Breath"
    } else {
      enchant = "None"
    }
    return enchant
  }

  var neckchant = enchantsByItem(toon.items.neck)
  var backchant = enchantsByItem(toon.items.back)
  var finger1chant = enchantsByItem(toon.items.finger1)
  var finger2chant = enchantsByItem(toon.items.finger2)


  var wepchantID = toon.items.mainHand.tooltipParams["enchant"]
  var wepchant
  switch (wepchantID) {
    case 5336:
      wepchant = "Blackrock"
      break;
    case 5335:
      wepchant = "Shadowmoon"
      break;
    case 5334:
      wepchant = "Frostwolf"
      break;
    case 5331:
      wepchant = "Shattered Hand"
      break;
    case 5276:
      wepchant = "Megawatt"
      break;
    case 5275:
      wepchant = "Oglethorp's"
      break;
    case 5383:
      wepchant = "Hemet's"
      break;
    case 5330:
      wepchant = "Thunderlord"
      break;
    case 5337:
      wepchant = "Warsong"
      break;
    case 5384:
      wepchant = "Bleeding Hollow"
      break;
    default:
    wepchant = "None"
    }
    if (toon.class == 6) {wepchant = "DK"}

  var toonInfo = new Array(
    toon.level, toon.items.averageItemLevelEquipped, Math.floor(CM_iL),
    Math.max(finger1[0], finger2[0]),
    bosskills,
    head[0], neck[0],
    shoulders[0], back[0],
    chest[0], wrist[0],
    hands[0], waist[0],
    legs[0], feet[0],
    finger1[0], finger2[0],
    trinket1[0],trinket2[0],
    mainHand[0], offHand[0],
    wepchant, neckchant, finger1chant, finger2chant, backchant,
    highmaulNormal, highmaulHeroic, highmaulMythic,
    brfNormal, brfHeroic, brfMythic
  )
  return toonInfo;
}
