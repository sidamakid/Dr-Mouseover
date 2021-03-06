local callbacks = {}

local localizedNames = {}
local englishNames = {}
function DR_Mouse_Over_LoadSpellNames()
local englishToSpellID = {--Dr-Mouseover-localizing
  --Stuns
  ["Kidney Shot"] = 408, --Dr's with it's self in Vanilla and Tbc.
  ["Pounce"] = 9005,
  ["Bash"] = 5211,
  ["Hammer of Justice"] = 853,
  ["Charge"] = 100,
  ["Intercept"] = 20252,
  ["Cheap Shot"] = 1833,
  ["Concussion Blow"] = 12809,
  ["War stomp"] = 20549,
  ["Intimidation"] = 19577,
  ["Shadowfury"] = 30283,
  ["Maim"] = 22570,
  --Stun procs
  ["Improved Starfire"] = 16850,
  ["Celestial Focus"] = 16850,
  ["Impact"] = 11103,
  ["Stoneclaw Totem"] = 5730,
  ["Blackout"] = 15268,
  ["Seal of Justice"] = 20164,
  ["Mace Specialization"] = 12284 or 13709,
  --Sleep
  ["Hibernate"] = 2637,
  --Incapacitates
  ["Gouge"] = 1776,
  ["Sap"] = 6770,
  ["Polymorph"] = 118,
  ["Polymorph: Turtle"] = 28271,
  ["Polymorph: Pig"] = 28272,
  ["Wyvern Sting"] = 19386,
  ["Repentance"] = 20066,
  --Disorients
  ["Blind"] = 2094,
  ["Cyclone"] = 33786,
  ["Shackle Undead"] = 9484,
  ["Psychic Horror"] = 64044,
  ["Mind Control"] = 605,
  --Silences
  ["Silence"] = 15487,
  ["Garrote"] = 703,
  ["Unstable Affliction"] = 30108,
  ["Silencing Shot"] = 34490,
  ["Improved Counterspell"] = 11255,
  ["Improved Kick"] = 13754,
  ["Arcane Torrent"] = 50613 or 28730 or 25046,
  --Fears/ Get's merged with Disorients in a later expansion
  ["Death Coil"] = 6789, --Dr's with it's slef in Vanilla, Tbc, and in Wrath.
  ["Psychic Scream"] = 8122,
  ["Fear"] = 5782,
  ["Seduction"] = 6358,
  ["Howl of Terror"] = 5484,
  ["Intimidating Shout"] = 5246,
  ["Scare Beast"] = 1513,
  ["Turn Evil"] = 10326,
  --Roots
  ["Entangling Roots"] = 339,
  ["Frost Nova"] = 122,
  ["Nature's Grasp"] = 16689,
  ["Counterattack"] = 19306,
  --Root proc
  ["Entrapment"] = 19184,
  ["Improved Wing Clip"] = 19228,
  ["Improved Hamstring"] = 12289,
  ["Frostbite"] = 11071,
  --Disarm
  ["Disarm"] = 676,
  ["Riposte"] =  14251,
  --Chastise
  ["Chastise"] = 44041,
  --Scatter
  ["Scatter Shot"] = 19503,
  ["Dragon's Breath"] = 31661,
  --Frost Shock
  ["Frost Shock"] = 8056, -- Only Dr's with it's self in Vanilla. Later on doesn't DR at all.
}
  local waiting = {}
  local left = 0
  for key, spellID in pairs(englishToSpellID) do
    if waiting[spellID] == nil then
      waiting[spellID] = true
      left = left + 1
    end
  end

  local loadingFrame = CreateFrame("Frame")
  loadingFrame:RegisterEvent("SPELL_DATA_LOAD_RESULT")
  loadingFrame:SetScript("OnEvent", function(self, eventName, spellID, success)
    if waiting[spellID] then
      waiting[spellID] = nil
      left = left - 1
    end
    if left <= 0 then
      loadingFrame:SetScript("OnEvent", nil)
      for key, spellID in pairs(englishToSpellID) do
        local localeName = GetSpellInfo(spellID)
        localizedNames[localeName or ""] = key
        englishNames[key] = localeName
      end

      for _, func in ipairs(callbacks) do
        func()
      end
    end
  end)

  for key, spellID in pairs(englishToSpellID) do
    C_Spell.RequestLoadSpellData(spellID)
  end
end

function DR_Mouse_Over_GetEnglishName(localized)
   return localizedNames[localized] or ""
end

function DR_Mouse_Over_GetLocalizedName(english)
   return englishNames[english] or ""
end

function DR_Mouse_Over_AddLocalizedCallback(func)
  table.insert(callbacks, func)
end

local frame = CreateFrame("frame")
local isInitialized = false
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function()
  if not isInitialized then
    DR_Mouse_Over_LoadSpellNames()
    isInitialized = true
  end
end)