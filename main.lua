local addon = LibStub('AceAddon-3.0'):GetAddon("BetterBags")
local L = addon:GetModule('Localization')

local categories = addon:GetModule('Categories')

local seasonalBonusIds = {
  -- DF Season 1
  ["9294"] = "DF S2 Explorer",
  ["9295"] = "DF S2 Explorer",
  ["9296"] = "DF S2 Explorer",
  ["9297"] = "DF S2 Explorer",
  ["9298"] = "DF S2 Explorer",
  ["9299"] = "DF S2 Explorer",
  ["9300"] = "DF S2 Explorer",
  ["9301"] = "DF S2 Explorer",
  ["9302"] = "DF S2 Adventurer",
  ["9303"] = "DF S2 Adventurer",
  ["9304"] = "DF S2 Adventurer",
  ["9305"] = "DF S2 Adventurer",
  ["9306"] = "DF S2 Adventurer",
  ["9307"] = "DF S2 Adventurer",
  ["9308"] = "DF S2 Adventurer",
  ["9309"] = "DF S2 Adventurer",
  ["9313"] = "DF S2 Veteran",
  ["9314"] = "DF S2 Veteran",
  ["9315"] = "DF S2 Veteran",
  ["9316"] = "DF S2 Veteran",
  ["9317"] = "DF S2 Veteran",
  ["9318"] = "DF S2 Veteran",
  ["9319"] = "DF S2 Veteran",
  ["9320"] = "DF S2 Veteran",
  ["9321"] = "DF S2 Champion",
  ["9322"] = "DF S2 Champion",
  ["9323"] = "DF S2 Champion",
  ["9324"] = "DF S2 Champion",
  ["9325"] = "DF S2 Champion",
  ["9327"] = "DF S2 Champion",
  ["9328"] = "DF S2 Champion",
  ["9329"] = "DF S2 Champion",
  ["9330"] = "DF S2 Hero",
  ["9331"] = "DF S2 Hero",
  ["9332"] = "DF S2 Hero",
  ["9333"] = "DF S2 Hero",
  ["9334"] = "DF S2 Hero",
  ["9380"] = "DF S2 Myth",
  ["9381"] = "DF S2 Myth",
  ["9382"] = "DF S2 Myth",
  ["9383"] = "DF S2",
  ["9384"] = "DF S2",
  ["9385"] = "DF S2",
  -- DF Season 3
  ["9536"] = "DF S3 Adventurer",
  ["9537"] = "DF S3 Adventurer",
  ["9538"] = "DF S3 Adventurer",
  ["9539"] = "DF S3 Adventurer",
  ["9540"] = "DF S3 Adventurer",
  ["9541"] = "DF S3 Adventurer",
  ["9542"] = "DF S3 Adventurer",
  ["9543"] = "DF S3 Adventurer",
  ["9544"] = "DF S3 Explorer",
  ["9545"] = "DF S3 Explorer",
  ["9546"] = "DF S3 Explorer",
  ["9547"] = "DF S3 Explorer",
  ["9548"] = "DF S3 Explorer",
  ["9549"] = "DF S3 Explorer",
  ["9550"] = "DF S3 Explorer",
  ["9551"] = "DF S3 Explorer",
  ["9552"] = "DF S3 Veteran",
  ["9553"] = "DF S3 Veteran",
  ["9554"] = "DF S3 Veteran",
  ["9555"] = "DF S3 Veteran",
  ["9556"] = "DF S3 Veteran",
  ["9557"] = "DF S3 Veteran",
  ["9558"] = "DF S3 Veteran",
  ["9559"] = "DF S3 Veteran",
  ["9560"] = "DF S3 Champion",
  ["9561"] = "DF S3 Champion",
  ["9562"] = "DF S3 Champion",
  ["9563"] = "DF S3 Champion",
  ["9564"] = "DF S3 Champion",
  ["9565"] = "DF S3 Champion",
  ["9566"] = "DF S3 Champion",
  ["9567"] = "DF S3 Champion",
  ["9568"] = "DF S3 Hero",
  ["9569"] = "DF S3 Hero",
  ["9570"] = "DF S3 Hero",
  ["9571"] = "DF S3 Hero",
  ["9572"] = "DF S3 Hero",
  ["9573"] = "DF S3 Myth",
  ["9574"] = "DF S3 Myth",
  ["9575"] = "DF S3 Myth",
  ["9576"] = "DF S3 Myth",
  ["9577"] = "DF S3",
  ["9578"] = "DF S3",
  ["9581"] = "DF S3 Hero",
  -- DF season 4
  ["10305"] = "DF S4 Adventurer",
  ["10306"] = "DF S4 Adventurer",
  ["10307"] = "DF S4 Adventurer",
  ["10308"] = "DF S4 Adventurer",
  ["10309"] = "DF S4 Adventurer",
  ["10310"] = "DF S4 Adventurer",
  ["10311"] = "DF S4 Adventurer",
  ["10312"] = "DF S4 Adventurer",
  ["10313"] = "DF S4 Champion",
  ["10314"] = "DF S4 Champion",
  ["10315"] = "DF S4 Champion",
  ["10316"] = "DF S4 Champion",
  ["10317"] = "DF S4 Champion",
  ["10318"] = "DF S4 Champion",
  ["10319"] = "DF S4 Champion",
  ["10320"] = "DF S4 Champion",
  ["10321"] = "DF S4 Explorer",
  ["10322"] = "DF S4 Explorer",
  ["10323"] = "DF S4 Explorer",
  ["10324"] = "DF S4 Explorer",
  ["10325"] = "DF S4 Explorer",
  ["10326"] = "DF S4 Explorer",
  ["10327"] = "DF S4 Explorer",
  ["10328"] = "DF S4 Explorer",
  ["10329"] = "DF S4 Hero",
  ["10330"] = "DF S4 Hero",
  ["10331"] = "DF S4 Hero",
  ["10332"] = "DF S4 Hero",
  ["10333"] = "DF S4 Hero",
  ["10334"] = "DF S4 Hero",
  ["10335"] = "DF S4 Myth",
  ["10336"] = "DF S4 Myth",
  ["10337"] = "DF S4 Myth",
  ["10338"] = "DF S4 Myth",
  ["10339"] = "DF S4",
  ["10340"] = "DF S4",
  ["10341"] = "DF S4 Veteran",
  ["10342"] = "DF S4 Veteran",
  ["10343"] = "DF S4 Veteran",
  ["10344"] = "DF S4 Veteran",
  ["10345"] = "DF S4 Veteran",
  ["10346"] = "DF S4 Veteran",
  ["10347"] = "DF S4 Veteran",
  ["10348"] = "DF S4 Veteran",
  -- DF season 4 Awakened 12/12
  ["10407"] = "DF S4 Awakened",
  ["10408"] = "DF S4 Awakened",
  ["10409"] = "DF S4 Awakened",
  ["10410"] = "DF S4 Awakened",
  ["10411"] = "DF S4 Awakened",
  ["10412"] = "DF S4 Awakened",
  ["10413"] = "DF S4 Awakened",
  ["10414"] = "DF S4 Awakened",
  ["10415"] = "DF S4 Awakened",
  ["10416"] = "DF S4 Awakened",
  ["10417"] = "DF S4 Awakened",
  ["10418"] = "DF S4 Awakened",
  -- DF season 4 Awakened 14/14
  ["10490"] = "DF S4 Awakened",
  ["10491"] = "DF S4 Awakened",
  ["10492"] = "DF S4 Awakened",
  ["10493"] = "DF S4 Awakened",
  ["10494"] = "DF S4 Awakened",
  ["10495"] = "DF S4 Awakened",
  ["10496"] = "DF S4 Awakened",
  ["10497"] = "DF S4 Awakened",
  ["10498"] = "DF S4 Awakened",
  ["10499"] = "DF S4 Awakened",
  ["10500"] = "DF S4 Awakened",
  ["10501"] = "DF S4 Awakened",
  ["10502"] = "DF S4 Awakened",
  ["10503"] = "DF S4 Awakened",
  -- DF season 4 Awakened 14/14 (another one) 
  ["10951"] = "DF S4 Awakened",
  ["10952"] = "DF S4 Awakened",
  ["10953"] = "DF S4 Awakened",
  ["10954"] = "DF S4 Awakened",
  ["10955"] = "DF S4 Awakened",
  ["10956"] = "DF S4 Awakened",
  ["10957"] = "DF S4 Awakened",
  ["10958"] = "DF S4 Awakened",
  ["10959"] = "DF S4 Awakened",
  ["10460"] = "DF S4 Awakened",
  ["10961"] = "DF S4 Awakened",
  ["10962"] = "DF S4 Awakened",
  ["10963"] = "DF S4 Awakened"
}

categories:RegisterCategoryFunction("DFSeasonalGear", function (data)
  for _,v in pairs(data.itemLinkInfo.bonusIDs) do
    if seasonalBonusIds[v] then
      return L:G(seasonalBonusIds[v])
    end
  end

  return nil
end)