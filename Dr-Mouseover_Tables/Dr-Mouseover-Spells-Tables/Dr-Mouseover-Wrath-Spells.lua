local isWrathWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_WRATH_OF_THE_LICH_KING)
if isWrathWow then
local L = Mouseover_Tooltip_Locale_Table
Dr_Mouse_Over_Spells ={
  --Incapacitates
    [6770]  = L["Incapacitate"], -- Sap (Rank 1)
    [2070]  = L["Incapacitate"], -- Sap (Rank 2)
    [11297] = L["Incapacitate"], -- Sap (Rank 3)
    [51724] = L["Incapacitate"], -- Sap (Rank 4)
    [118]   = L["Incapacitate"], -- Polymorph (Rank 1)
    [12824] = L["Incapacitate"], -- Polymorph (Rank 2)
    [12825] = L["Incapacitate"], -- Polymorph (Rank 3)
    [12826] = L["Incapacitate"], -- Polymorph (Rank 4)
    [28271] = L["Incapacitate"], -- Polymorph: Turtle
    [28272] = L["Incapacitate"], -- Polymorph: Pig
    [1776]  = L["Incapacitate"], -- Gouge
    [19386] = L["Incapacitate"], -- Wyvern Sting (Rank 1)
    [24132] = L["Incapacitate"], -- Wyvern Sting (Rank 2)
    [24133] = L["Incapacitate"], -- Wyvern Sting (Rank 3)
    [27068] = L["Incapacitate"], -- Wyvern Sting (Rank 4)
    [49011] = L["Incapacitate"], -- Wyvern Sting (Rank 5)
    [49012] = L["Incapacitate"], -- Wyvern Sting (Rank 6)
    [2637]  = L["Incapacitate"], -- Hibernate (Rank 1)
    [18657] = L["Incapacitate"], -- Hibernate (Rank 2)
    [18658] = L["Incapacitate"], -- Hibernate (Rank 3)
    [60192] = L["Incapacitate"], --Freezing Arrow
    [1499] = L["Incapacitate"], --Freezing Trap (Rank 1)
    [14310] = L["Incapacitate"], --Freezing Trap (Rank 2)
    [14311] = L["Incapacitate"], --Freezing Trap (Rank 3)
    [20066] = L["Incapacitate"], -- Repentance
    [710]   = L["Incapacitate"], -- Banish (Rank 1)
    [18647] = L["Incapacitate"], -- Banish (Rank 2)
    [9484]  = L["Incapacitate"], -- Shackle Undead (Rank 1)
    [9485]  = L["Incapacitate"], -- Shackle Undead (Rank 2)
    [10955] = L["Incapacitate"], -- Shackle Undead (Rank 3)
    [51514] = L["Incapacitate"], -- Hex
    [49203] = L["Incapacitate"], -- Hungering Cold
  --Charm
    [605] = L["Charm"],   -- Mind Control
   --Silences
    [703]  = L["Silence"], --Garrote (Rank 1)
    [8631]  = L["Silence"], --Garrote (Rank 2)
    [8632]  = L["Silence"], --Garrote (Rank 3)
    [8633]  = L["Silence"], --Garrote (Rank 4)
    [11289]  = L["Silence"], --Garrote (Rank 5)
    [11290]  = L["Silence"], --Garrote (Rank 6)
    [26839]  = L["Silence"], --Garrote (Rank 7)
    [26884]  = L["Silence"], --Garrote (Rank 8)
    [48675]  = L["Silence"], --Garrote (Rank 9) 
    [48676]  = L["Silence"], --Garrote (Rank 10)
    [11255] = L["Silence"], --Improved Counterspell (Rank 1)
    [12598] = L["Silence"], --Improved Counterspell (Rank 2)
    [13754] = L["Silence"], --Improved Kick (Rank 1)
    [13867] = L["Silence"], --Improved Kick (Rank 2)
    [30108] = L["Silence"], --Unstable Affliction (Rank 1)
    [30404] = L["Silence"], --Unstable Affliction (Rank 2)
    [30405] = L["Silence"], --Unstable Affliction (Rank 3)
    [47841] = L["Silence"], --Unstable Affliction (Rank 4)
    [47843] = L["Silence"], --Unstable Affliction (Rank 5)
    [15487] = L["Silence"], --Silence
    [34490] = L["Silence"], -- Silencing Shot
    [50613] = L["Silence"], --Arcane Torrent
    [25046] = L["Silence"], --Arcane Torrent
    [28730] = L["Silence"], --Arcane Torrent
    [47476] = L["Silence"], --Strangulate
    [19244] = L["Silence"], --Spell Lock (Rank 1)
    [19647] = L["Silence"], -- Spell Lock (Rank 2)
  --Opener stuns
    [1833] = L["Opener Stun"], --Cheap Shot
    [9005]  = L["Opener Stun"], -- Pounce (Rank 1)
    [9823]  = L["Opener Stun"], -- Pounce (Rank 2)
    [9827]  = L["Opener Stun"], -- Pounce (Rank 3)
    [27006] = L["Opener Stun"], -- Pounce (Rank 4)
    [49803] = L["Opener Stun"], -- Pounce (Rank 5)
  -- Stun
    [408]   = L["Stun"], -- Kidney Shot (Rank 1)
    [8643]  = L["Stun"], -- Kidney Shot (Rank 2)
    [58861] = L["Stun"], -- Bash (Spirit Wolves)
    [5211]  = L["Stun"], -- Bash (Rank 1)
    [6798]  = L["Stun"], -- Bash (Rank 2)
    [8983]  = L["Stun"], -- Bash (Rank 3)
    [853]   = L["Stun"], -- Hammer of Justice (Rank 1)
    [5588]  = L["Stun"], -- Hammer of Justice (Rank 2)
    [5589]  = L["Stun"], -- Hammer of Justice (Rank 3)
    [10308] = L["Stun"], -- Hammer of Justice (Rank 4)
    [30283] = L["Stun"], -- Shadowfury (Rank 1)
    [30413] = L["Stun"], -- Shadowfury (Rank 2)
    [30414] = L["Stun"], -- Shadowfury (Rank 3)
    [47846] = L["Stun"], -- Shadowfury (Rank 4)
    [47847] = L["Stun"], -- Shadowfury (Rank 5)
    [20253] = L["Stun"], -- Intercept Stun (Rank 1)
    [20614] = L["Stun"], -- Intercept Stun (Rank 2)
    [20615] = L["Stun"], -- Intercept Stun (Rank 3)
    [25273] = L["Stun"], -- Intercept Stun (Rank 4)
    [25274] = L["Stun"], -- Intercept Stun (Rank 5)
    [30153] = L["Stun"], -- Intercept (Felguard Rank 1)
    [30195] = L["Stun"], -- Intercept (Felguard Rank 2)
    [30197] = L["Stun"], -- Intercept (Felguard Rank 3)
    [47995] = L["Stun"], -- Intercept (Felguard Rank 4)
    [12809] = L["Stun"], --Concussion Blow
    [20549] = L["Stun"], --War stomp(Racial),
    [24394] = L["Stun"], --Intimidation
    [22570] = L["Stun"], -- Maim (Rank 1)
    [49802] = L["Stun"], -- Maim (Rank 2)
    [47481] = L["Stun"], -- Gnaw (Ghoul Pet)
    [50519] = L["Stun"], -- Sonic Blast (Pet Rank 1)
    [53564] = L["Stun"], -- Sonic Blast (Pet Rank 2)
    [53565] = L["Stun"], -- Sonic Blast (Pet Rank 3)
    [53566] = L["Stun"], -- Sonic Blast (Pet Rank 4)
    [53567] = L["Stun"], -- Sonic Blast (Pet Rank 5)
    [53568] = L["Stun"], -- Sonic Blast (Pet Rank 6)
    [50518] = L["Stun"], -- Ravage (Pet Rank 1)
    [53558] = L["Stun"], -- Ravage (Pet Rank 2)
    [53559] = L["Stun"], -- Ravage (Pet Rank 3)
    [53560] = L["Stun"], -- Ravage (Pet Rank 4)
    [53561] = L["Stun"], -- Ravage (Pet Rank 5)
    [53562] = L["Stun"], -- Ravage (Pet Rank 6)
    [44572] = L["Stun"], --Deep Freeze
    [2812]  = L["Stun"], -- Holy Wrath (Rank 1)
    [10318] = L["Stun"], -- Holy Wrath (Rank 2)
    [27139] = L["Stun"], -- Holy Wrath (Rank 3)
    [48816] = L["Stun"], -- Holy Wrath (Rank 4)
    [48817] = L["Stun"], -- Holy Wrath (Rank 5)
    [60995] = L["Stun"], --Demon Charge
    [46968] = L["Stun"], --Shockwave
  --Stun Proc
    [16922] = L["Stun Proc"], --Celestial Focus
    [12355] = L["Stun Proc"], --Impact
    [39796] = L["Stun Proc"], --Stoneclaw Totem
    [28445] = L["Stun Proc"], --Improved Concussive Shot
    [20164] = L["Stun Proc"], --Seal of Justice
  --Fear
    [8122]  = L["Fear"], -- Psychic Scream (Rank 1)
    [8124]  = L["Fear"], -- Psychic Scream (Rank 2)
    [10888] = L["Fear"], -- Psychic Scream (Rank 3)
    [10890] = L["Fear"], -- Psychic Scream (Rank 4)
    [5782]  =  L["Fear"], -- Fear (Rank 1)
    [6213]  =  L["Fear"], -- Fear (Rank 2)
    [6215]  =  L["Fear"], -- Fear (Rank 3)
    [6358]  = L["Fear"], --Seduction
    [5484]  = L["Fear"], --Howl of Terror (Rank 1)
    [17928] = L["Fear"], --Howl of Terror (Rank 2)
    [5246]  = L["Fear"], -- Intimidating Shout
    [1513]  = L["Fear"], -- Scare Beast (Rank 1)
    [14326] = L["Fear"], -- Scare Beast (Rank 2)
    [14327] = L["Fear"], -- Scare Beast (Rank 3)
    [10326] = L["Fear"], -- Turn Evil
    [2094]  = L["Fear"], --Blind
  --Horror
    [6789]  = L["Horror"], -- Death Coil (Rank 1)
    [17925] = L["Horror"], -- Death Coil (Rank 2)
    [17926] = L["Horror"], -- Death Coil (Rank 3)
    [27223] = L["Horror"], -- Death Coil (Rank 4)
    [47859] = L["Horror"], -- Death Coil (Rank 5)
    [47860] = L["Horror"], -- Death Coil (Rank 6)
    [64044] = L["Horror"],-- Psychic Horror
  --Counterattack
    [19306] = L["Counterattack"], --Counterattack (Rank 1)
    [20909] = L["Counterattack"], --Counterattack (Rank 2)
    [20910] = L["Counterattack"], --Counterattack (Rank 3)
    [27067] = L["Counterattack"], --Counterattack (Rank 4)
    [48998] = L["Counterattack"], --Counterattack (Rank 5)
    [48999] = L["Counterattack"], --Counterattack (Rank 6)
  --Charge
   [100] = L["Charge"], --Charge (Rank 1)
   [6178] = L["Charge"], --Charge (Rank 2)
   [11578] = L["Charge"], --Charge (Rank 3)
  --Cyclone
    [33786] = L["Cyclone"], --Cyclone
  --Scatter Shot / Dragon's Breath
    [19503] = L["Scatter Shot / Dragon's Breath"], -- Scatter Shot
    [31661] = L["Scatter Shot / Dragon's Breath"], -- Dragon's Breath (Rank 1)
    [33041] = L["Scatter Shot / Dragon's Breath"], -- Dragon's Breath (Rank 2)
    [33042] = L["Scatter Shot / Dragon's Breath"], -- Dragon's Breath (Rank 3)
    [33043] = L["Scatter Shot / Dragon's Breath"], -- Dragon's Breath (Rank 4)
    [42949] = L["Scatter Shot / Dragon's Breath"], -- Dragon's Breath (Rank 5)
    [42950] = L["Scatter Shot / Dragon's Breath"], -- Dragon's Breath (Rank 6)
  --Root
    [339]   = L["Root"], -- Entangling Roots (Rank 1)
    [1062]  = L["Root"], -- Entangling Roots (Rank 2)
    [5195]  = L["Root"], -- Entangling Roots (Rank 3)
    [5196]  = L["Root"], -- Entangling Roots (Rank 4)
    [9852]  = L["Root"], -- Entangling Roots (Rank 5)
    [9853]  = L["Root"], -- Entangling Roots (Rank 6)
    [26989] = L["Root"], -- Entangling Roots (Rank 7)
    [53308] = L["Root"], -- Entangling Roots (Rank 8)
    [122]   = L["Root"], -- Frost Nova (Rank 1)
    [865]   = L["Root"], -- Frost Nova (Rank 2)
    [6131]  = L["Root"], -- Frost Nova (Rank 3)
    [10230] = L["Root"], -- Frost Nova (Rank 4)
    [27088] = L["Root"], -- Frost Nova (Rank 5)
    [42917] = L["Root"], -- Frost Nova (Rank 6)
    [19975] = L["Root"], -- Nature's Grasp (Rank 1)
    [19974] = L["Root"], -- Nature's Grasp (Rank 2)
    [19973] = L["Root"], -- Nature's Grasp (Rank 3)
    [19972] = L["Root"], -- Nature's Grasp (Rank 4)
    [19971] = L["Root"], -- Nature's Grasp (Rank 5)
    [19970] = L["Root"], -- Nature's Grasp (Rank 6)
    [27010] = L["Root"], -- Nature's Grasp (Rank 7)
    [53312] = L["Root"], -- Nature's Grasp (Rank 8)
    [50245] = L["Root"], -- Pin (Rank 1)
    [53544] = L["Root"], -- Pin (Rank 2)
    [53545] = L["Root"], -- Pin (Rank 3)
    [53546] = L["Root"], -- Pin (Rank 4)
    [53547] = L["Root"], -- Pin (Rank 5)
    [53548] = L["Root"], -- Pin (Rank 6)
  --Root Proc
    [12494] = L["Root Proc"],        -- Frostbite
    [23694] = L["Root Proc"],        -- Improved Hamstring
    [47168] = L["Root Proc"],         -- Improved Wing Clip
    [19185] = L["Root Proc"],         -- Entrapment
  --Disarm
    [53359] = L["Disarm"], -- Chimera Shot (Scorpid)
    [51722] = L["Disarm"], -- Dismantle
    [50541] = L["Disarm"], -- Snatch (Rank 1)
    [53537] = L["Disarm"], -- Snatch (Rank 2)
    [53538] = L["Disarm"], -- Snatch (Rank 3)
    [53540] = L["Disarm"], -- Snatch (Rank 4)
    [53542] = L["Disarm"], -- Snatch (Rank 5)
    [53543] = L["Disarm"], -- Snatch (Rank 6)
    [676]   = L["Disarm"], -- Disarm
}
end