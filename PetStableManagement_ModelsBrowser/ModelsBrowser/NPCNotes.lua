-- NPCNotes.lua
-- Curated seed notes for notable tameable NPCs, keyed by NPC ID.
-- These are read-only. User-edited notes are stored separately in PSM_UserNotes (SavedVariables).
-- At runtime, seed notes and user notes are merged by the Notes UI layer.

local notes = {
    -- NPCs: 462
    [1] = [[Located in Westfall. Vultros can appear a one of five places around the farmsteads of northern Westfall: (i) south of the Jansen Stead; (ii) south-east of Furlbrow's Pumpkin Farm; (iii) around the road between Furlbrow's Pumpkin Farm and the Molsen Farm; (iv) east of the Molsen Farm; and (v) just south-east of Saldean's Farm.]],

    -- NPCs: 574
    [2] = [[Located in Duskwood. Appears in a cave in the mountains that form the eastern border of the zone. The cave can be seen on the zone map, in an area roughly north-east of Tranquil Gardens Cemetery.]],

    -- NPCs: 1511
    [3] = [[Located in Spirit Den, The Cape of Stranglethorn. Spawns as the first gorilla during the quest Stranglethorn Fever, at a cave at the north end of Mistvale Valley. See Fin Fizracket in Booty Bay to obtain the quest.]],

    -- NPCs: 1516
    [4] = [[Located in Spirit Den, The Cape of Stranglethorn. Spawns as the second gorilla during the quest Stranglethorn Fever, at a cave at the north end of Mistvale Valley. See Fin Fizracket in Booty Bay to obtain the quest.]],

    -- NPCs: 1552
    [5] = [[Located in Crystalvein Mine, The Cape of Stranglethorn. Located at the back of the mine.]],

    -- NPCs: 1780, 1781
    [6] = [[Located in Silverpine Forest. Found at the Skittering Dark cave in the northwest of Silverpine.]],

    -- NPCs: 2098
    [7] = [[Located in Loch Modan; Wetlands; Arathi Highlands. The Ram will try to run away when you start taming, so a Freezing Trap may be handy. In the Wetlands it can be found on peaks just north of Dun Algaz and terraced slopes south-east of Menethil Harbor. In Loch Modan it can be found sporadically in many places, especially in grassy areas close to the mountain borders. In the Arathi Highlands it can be found on a remote dwarven farm by the sea, beyond the eastern mountain border. but only in its original (pre-Battle for Azeroth) phase.]],

    -- NPCs: 2350, 2385, 2408
    [8] = [[Located in Hillsbrad Foothills; Old Hillsbrad Foothills (Dungeon).]],

    -- NPCs: 2354
    [9] = [[Located in Old Hillsbrad Foothills (Dungeon).]],

    -- NPCs: 2462
    [10] = [[Located in Duskwood. Spawns when Rotted Ones are killed. You must be very fast to tame it before it dies! Will still die after taming.]],

    -- NPCs: 2476
    [11] = [[Located in Loch Modan. Spawns on what used to be the crocolisk island in the southern part of the dried-up loch.]],

    -- NPCs: 2658
    [12] = [[Located in The Hinterlands. Friendly to Alliance.]],

    -- NPCs: 3056
    [13] = [[Located in Mulgore. Spawns rarely though not classed as a rare.]],

    -- NPCs: 3619
    [14] = [[Located in Ruins of Mathystra, Darkshore. This cat remains ghostly after it is tamed! To summon a Ghost Saber you have to find and click on Cat Figurines around the Ruins of Mathystra, until one appears.]],

    -- NPCs: 3630, 3631, 3632, 3633, 3634, 3636, 3637, 3652, 5048, 5053, 5056, 5755, 5756, 20797
    [15] = [[Located in Wailing Caverns (Dungeon).]],

    -- NPCs: 3653
    [16] = [[Located in Screaming Gully, Wailing Caverns (Dungeon). Kresh wanders the watery channel in the first section of the dungeon, just down from the entrance.]],

    -- NPCs: 3680
    [17] = [[Located in Wailing Caverns (Dungeon). To get this snake to spawn you must have the quest Preemptive Methods, which is a one-time quest offered by Nalpak just inside the dungeon entrance. A Serpentbloom Snake will spawn each time you harvest a Serpentbloom inside the instance. Note that these snakes are level 1 but the rest of the NPCs in the dungeon are higher level (scaling from approximately 8 to 31).]],

    -- NPCs: 3864
    [18] = [[Located in Shadowfang Keep (Dungeon). Found in the stables after the first boss.]],

    -- NPCs: 3868
    [19] = [[Located in Deepholm. Spawns extremely rarely, and is reported to despawn shortly afterwards (after approximately 15 seconds).]],

    -- NPCs: 4015
    [20] = [[Located in Windshear Heights, Stonetalon Mountains. Kill other Pridewings to get him to spawn.]],

    -- NPCs: 4016
    [21] = [[Located in Stonetalon Peak, Stonetalon Mountains. Friendly to Alliance. This fey darter appears only sporadically in the area, and is often killed by hostile NPCs. It may take you a while to find one.]],

    -- NPCs: 4017
    [22] = [[Located in Stonetalon Peak, Stonetalon Mountains. Hostile to both factions. This fey darter appears only sporadically in the area, and is often killed by hostile NPCs. It may take you a while to find one.]],

    -- NPCs: 4250
    [23] = [[Located in Thousand Needles. Although not technically rare, these packhounds only spawn as the companions of a rare NPC, Achellios the Banished.]],

    -- NPCs: 4374
    [24] = [[Located in Dustwallow Marsh. Phased out once you complete the "Theramore's Fall" scenario. Speak to Zidormi to access the pre-destruction phase. Originally this hydra just came in black. The orange variant was introduced in Patch 7.1.]],

    -- NPCs: 4861, 4863, 7022, 7078, 7405
    [25] = [[Located in Uldaman (Dungeon).]],

    -- NPCs: 4950
    [26] = [[Located in Dustwallow Marsh. Spot phases out once you complete the "Theramore's Fall" scenario but you can speak to Zidormi to be transported to the pre-destruction phase.]],

    -- NPCs: 5225
    [27] = [[Located in Hall of Bones, Swamp of Sorrows. Found outside the Sunken Temple dungeon.]],

    -- NPCs: 5278
    [28] = [[Located in Feralas. Friendly to Alliance, but can be attacked and tamed by Horde. Found in the glades west and north-west of Camp Mojache.]],

    -- NPCs: 5291, 8336
    [29] = [[Located in Sunken Temple (Dungeon).]],

    -- NPCs: 5300
    [30] = [[Located in Feralas. Initially friendly to Alliance but players can /roar at them to make them aggressive for taming. In valley north and west of Ruins of Isildien.]],

    -- NPCs: 5304
    [31] = [[Located in Feralas. Friendly to Alliance. In valley north and west of Ruins of Isildien.]],

    -- NPCs: 5762
    [32] = [[Located in Wailing Caverns (Dungeon). Three of these snakes spawn as the first wave of attackers while the Disciple of Naralex is attempting to wake Naralex.]],

    -- NPCs: 5833
    [33] = [[Located in Searing Gorge. Margol wanders a mountain path in the far south-east corner of the zone, near a cave.]],

    -- NPCs: 5912
    [34] = [[Located in Wailing Caverns (Dungeon). This rarely-occurring fey darter spawns in the upper caverns in the far south-east of the instance. If it's present, head south-east, go past Skum, and follow the ramp up and around until you find it. The orange variant of this creature occurs roughly 1 in 5 of the times it spawns. You can '/tar Deviate Faerie Dragon' from just inside the dungeon entrance to check if it has spawned and if it's in the colour you're after. If not, you can leave, select "Reset All Instances" from your character portrait, and keep trying. Note: you can only target it from just inside the entrance, and in the south-eastern third of the dungeon; once you proceed past the NPCs at the dungeon entrance you won't be able to detect it again until you head further south-east again.]],

    -- NPCs: 5983
    [35] = [[Located in Blasted Lands. Flies high over most of Blasted Lands.]],

    -- NPCs: 6021
    [36] = [[Located in Razorfen Kraul (Dungeon). Behind the shield that goes down after you kill Groyat.]],

    -- NPCs: 6215
    [37] = [[Located in Gnomeregan (Dungeon).]],

    -- NPCs: 7268, 7269, 7273, 8095, 8120, 8138
    [38] = [[Located in Zul'Farrak (Dungeon).]],

    -- NPCs: 7803
    [39] = [[Located in Tanaris. Spawns during the quest Rescue OOX-17/TN!.]],

    -- NPCs: 8211
    [40] = [[Located in The Hinterlands. Appears in Featherbeard's Hovel]],

    -- NPCs: 8299
    [41] = [[Located in Blasted Lands. Spiteflayer circles an area roughly south of Nethergarde Keep, bordered by the road to the south. It stands out as the only yellow vulture in the area. It only appears in the original, pre-"Iron Horde Invasion" phase of the zone. Speak to Zidormi, in the passage to the Swamp of Sorrows, to access the pre-invasion phase. It used to be a Black Vulture.]],

    -- NPCs: 8300
    [42] = [[Located in Blasted Lands. Ravage may be found north-east of (and across the hills from) Dreadmaul Post. It only appears in the original, pre-"Iron Horde Invasion" phase of the zone. Speak to Zidormi, in the passage to the Swamp of Sorrows, to access the pre-invasion phase.]],

    -- NPCs: 8301
    [43] = [[Located in Blasted Lands. Clack only appears in the original, pre-"Iron Horde Invasion" phase of the zone. Speak to Zidormi, in the passage to the Swamp of Sorrows, to access the pre-invasion phase.]],

    -- NPCs: 8302
    [44] = [[Located in Blasted Lands. Deatheye is located west of a small hill, south-west of Nethergarde Keep and east (across the main road from) Dreadmaul Hold. It only appears in the original, pre-"Iron Horde Invasion" phase of the zone. Speak to Zidormi, in the passage to the Swamp of Sorrows, to access the pre-invasion phase.]],

    -- NPCs: 8303
    [45] = [[Located in Blasted Lands. Appears roughly east (and across the road from) Dreadmaul Post and north of the Dark Portal area. It used to be a Black Boar. Grunter only appears in the original, pre-"Iron Horde Invasion" phase of the zone. Speak to Zidormi, in the passage to the Swamp of Sorrows, to access the pre-invasion phase.]],

    -- NPCs: 8440
    [46] = [[Located in Sanctum of the Fallen God, Sunken Temple (Dungeon).]],

    -- NPCs: 8886
    [47] = [[Located in Pit of Fangs, Wailing Caverns (Dungeon). Found in the western region of the dungeon.]],

    -- NPCs: 8921, 8922, 8925, 8926, 8927, 8933, 9042
    [48] = [[Located in Blackrock Depths (Dungeon).]],

    -- NPCs: 8928
    [49] = [[Located in Ring of the Law, Blackrock Depths (Dungeon). May appear during the Ring of the Law event. Random encounter.]],

    -- NPCs: 8932
    [50] = [[Located in Blackrock Depths (Dungeon). May appear during Ring of Law event.]],

    -- NPCs: 9416, 9696, 9701, 10177, 10221, 10375
    [51] = [[Located in Blackrock Spire (Dungeon).]],

    -- NPCs: 9683
    [52] = [[Located in Un'Goro Crater. Summoned during quest The Scent of Lar'korwi.]],

    -- NPCs: 9684
    [53] = [[Located in Un'Goro Crater. Summoned during quest The Bait for Lar'korwi.]],

    -- NPCs: 10220
    [54] = [[Located in Halycon's Lair, Blackrock Spire (Dungeon).]],

    -- NPCs: 10268
    [55] = [[Located in Blackrock Spire (Dungeon). Spawns when Halycon dies.]],

    -- NPCs: 10376, 10596
    [56] = [[Located in Skitterweb Tunnels, Blackrock Spire (Dungeon).]],

    -- NPCs: 10699
    [57] = [[Located in Eastern Plaguelands. Summoned by Crypt Horrors and Nerubian Sycophants during combat.]],

    -- NPCs: 10737
    [58] = [[Located in Winterspring. No longer spawns from a quest - now permanent.]],

    -- NPCs: 10806
    [59] = [[Located in Winterspring. In a cave near his old spot (Moon Horror Den).]],

    -- NPCs: 10981, 14283
    [60] = [[Located in Alterac Valley (Battleground). Exists in each level of the battleground.]],

    -- NPCs: 10990
    [61] = [[Located in Alterac Valley (Battleground).]],

    -- NPCs: 11671, 11672, 11673, 11982
    [62] = [[Located in Molten Core (Raid).]],

    -- NPCs: 11698, 11721, 11723, 11724, 11726, 11727, 11728, 11730, 11731, 11732, 11734, 11735, 11736, 11737, 11738, 11739, 11740, 11741, 14472, 14473, 14475, 14476, 14477, 15196
    [63] = [[Located in Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 11722
    [64] = [[Located in Hive'Ashi., Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 11725, 11729
    [65] = [[Located in Hive'Zora., Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 11733
    [66] = [[Located in Hive'Regal., Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 11785, 11786
    [67] = [[Located in Maraudon Entrance, Desolace.]],

    -- NPCs: 11787, 11788
    [68] = [[Located in Maraudon (Non-Instanced).]],

    -- NPCs: 11789, 12207, 13599
    [69] = [[Located in Maraudon (Dungeon).]],

    -- NPCs: 12418
    [70] = [[Located in Broken Commons, Feralas. Found outside the Dire Maul dungeon.]],

    -- NPCs: 12676
    [71] = [[Located in Nightsong Woods, Ashenvale. Sharptalon patrols an area in south-east Ashenvale, around approximately 72, 76. Friendly to Alliance.]],

    -- NPCs: 12940
    [72] = [[Located in The Zoram Strand, Ashenvale. Vorsha is summoned during the once-only Horde quest, Vorsha the Lasher, given by Muglash in the nearby Zoram'gar Outpost. If you've already completed the quest, or your hunter is Alliance, you can easily bring in a Horde character to start the quest, follow Muglash's directions until the stage in which Vorsha spawns, then quickly log off and switch to your hunter.]],

    -- NPCs: 13036
    [73] = [[Located in Dire Maul (Dungeon).]],

    -- NPCs: 13136
    [74] = [[Located in Silithus. Spawns after killing Tortured Druids at Southwind Village. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 13323
    [75] = [[Located in Maraudon (Dungeon). In the caverns beyond Earth Song Falls.]],

    -- NPCs: 13596
    [76] = [[Located in Zaetar's Grave, Maraudon (Dungeon).]],

    -- NPCs: 14020
    [77] = [[Located in Chromaggus is the seventh encounter of the raid., Blackwing Lair (Raid).]],

    -- NPCs: 14370
    [78] = [[Located in Dire Maul (Dungeon). Spawn when Rotting Highborne are killed. Dies after taming.]],

    -- NPCs: 14398
    [79] = [[Located in Dire Maul West (Dungeon).]],

    -- NPCs: 14474, 50745, 50897
    [80] = [[Located in Hive'Zora, Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 15168, 15318, 15319, 15320, 15323, 15325, 15336, 15461, 15462
    [81] = [[Located in Ruins of Ahn'Qiraj (Raid).]],

    -- NPCs: 15229, 15230, 15233, 15236, 15240, 15300, 15317, 15621, 15622, 15962
    [82] = [[Located in Temple of Ahn'Qiraj (Raid).]],

    -- NPCs: 15235
    [83] = [[Located in Temple of Ahn'Qiraj (Raid). Technically tameable but its 5-second interrupts make this very hard or impossible.]],

    -- NPCs: 15316
    [84] = [[Located in Temple of Ahn'Qiraj (Raid). The Hive Undergrounds]],

    -- NPCs: 15327
    [85] = [[Located in Ruins of Ahn'Qiraj (Raid). Technically tameable but its 5-second interrupts make this very hard or impossible.]],

    -- NPCs: 15348
    [86] = [[Located in Ruins of Ahn'Qiraj (Raid). Kurinnaxx is the first boss of the instance. It can interrupt frequently and seems to be resistant to traps, so start taming from as much distance as possible. Also, clear out any packs of roving wasps in the area as they can also interrupt your tame.]],

    -- NPCs: 15369
    [87] = [[Located in The Comb, Ruins of Ahn'Qiraj (Raid).]],

    -- NPCs: 15370
    [88] = [[Located in The Hatchery, Ruins of Ahn'Qiraj (Raid).]],

    -- NPCs: 15509
    [89] = [[Located in Temple of Ahn'Qiraj (Raid). Princess Huhuran is the fifth encounter in the raid.]],

    -- NPCs: 15510
    [90] = [[Located in Temple of Ahn'Qiraj (Raid). Fankriss is the fourth encounter of the raid (including the optional bug trio).]],

    -- NPCs: 15511
    [91] = [[Located in Temple of Ahn'Qiraj (Raid). Lord Kri is part of a trio of silithid colossus bosses that form the second encounter of the raid. Try to tame him before Princess Yauj starts using her fear ability, which will interrupt you.]],

    -- NPCs: 15521
    [92] = [[Located in Ruins of Ahn'Qiraj (Raid). Spawns when Buru Eggs are attacked.]],

    -- NPCs: 15543
    [93] = [[Located in Temple of Ahn'Qiraj (Raid). Princess Yauj is part of a trio of silithid colossus bosses that form the second encounter of the raid. Try to tame her before she starts using her fear ability, which will interrupt you.]],

    -- NPCs: 15544
    [94] = [[Located in Temple of Ahn'Qiraj (Raid). Vem is part of a trio of silithid colossus bosses that form the second encounter of the raid. You should be able to tame him quickly, before the others reach you.]],

    -- NPCs: 15546
    [95] = [[Located in Ruins of Ahn'Qiraj (Raid). Spawned during Ayamiss the Hunter fight. Tameable only if it focuses aggro on you.]],

    -- NPCs: 15718
    [96] = [[Located in Temple of Ahn'Qiraj (Raid). Spawns during fight with Ouro.]],

    -- NPCs: 15932
    [97] = [[Located in Construct Quarter, Naxxramas (Raid).]],

    -- NPCs: 15934
    [98] = [[Located in Ruins of Ahn'Qiraj (Raid). Spawns during Ayamiss the Hunter fight if a player dies when chained to the altar. Technically tameable but its 5-second interrupts make this very hard or impossible.]],

    -- NPCs: 15974, 15975, 15976
    [99] = [[Located in Naxxramas (Raid).]],

    -- NPCs: 16170, 16171, 16173, 16174, 16176, 16177, 16178
    [100] = [[Located in Karazhan (Raid).]],

    -- NPCs: 16175
    [101] = [[Located in Servants' Quarters, Karazhan (Raid).]],

    -- NPCs: 16179
    [102] = [[Located in Servants' Quarters, Karazhan (Raid). One of three random bosses that may appear after most of the trash is killed in the Servants' Quarters. This can reset multiple times a day, often with a different random boss.]],

    -- NPCs: 16180
    [103] = [[Located in Servant's Quarters, Karazhan (Raid). One of three random bosses that may appear after most of the trash is killed in the Servants' Quarters. This can reset multiple times a day, often with a different random boss.]],

    -- NPCs: 16181
    [104] = [[Located in Servant's Quarters, Karazhan (Raid). Spawns in the Servants' Quarters if you clear the hound trash last. This can reset multiple times a day.]],

    -- NPCs: 16491
    [105] = [[Located in Guardian's Library, Karazhan (Raid).]],

    -- NPCs: 16492
    [106] = [[Located in The Menagerie, Karazhan (Raid).]],

    -- NPCs: 16698
    [107] = [[Located in Naxxramas (Raid). Much smaller than other beetles, and has a trailing effect when running. Spawns after Crypt Guards die during the Anub'Rekhan encounter. Anub'Rekhan is the first boss in the Arachnid Quarter of Naxxramas.]],

    -- NPCs: 16872
    [108] = [[Located in The Hinterlands. Jetwing flies high over the central part of zone and can be hard to reach and aggro, especially since it is not aggressive. The easiest way is to dismount in mid-air, shoot to aggro it, then use Disengage before you hit the ground to avoid falling damage.]],

    -- NPCs: 16874
    [109] = [[Located in The Hidden Grove, Winterspring. Spawns when you click on (and destroy) a large nest on the ground. The nest isn't always present and may take several hours to reappear.]],

    -- NPCs: 16875
    [110] = [[Located in Azsuna. Netherbeak flies in an erratic, high-altitude path around a wide swathe of Azsuna. It is stealthed and is only detectable by Track Hidden once it gets close. A good place to wait is to hover a distance above the temple on Rhut'van Peak. Netherbeak should eventually fly by and aggro to you. Then land on top of the building and tame away!]],

    -- NPCs: 17034, 17039
    [111] = [[Located in Den of Haal'esh, Hellfire Peninsula. May spawn when you click on the eggs in a Kaliri Nest.]],

    -- NPCs: 17280
    [112] = [[Located in Hellfire Ramparts (Dungeon).]],

    -- NPCs: 17669
    [113] = [[Located in The Shattered Halls (Dungeon).]],

    -- NPCs: 17724, 17731, 17732, 17882, 18105, 19632
    [114] = [[Located in The Underbog (Dungeon).]],

    -- NPCs: 17952, 18982, 18983
    [115] = [[Located in The Black Morass (Dungeon).]],

    -- NPCs: 18155
    [116] = [[Located in The Botanica (Dungeon).]],

    -- NPCs: 18289
    [117] = [[Located in Nagrand - Outland. Found north-east of Oshu'gun, just outside the Spirit Fields.]],

    -- NPCs: 18290
    [118] = [[Located in Nagrand - Outland. Tusker holds court on a large rise, north-east of Oshu'gun, just outside the Spirit Fields.]],

    -- NPCs: 18398
    [119] = [[Located in Laughing Skull Ruins, Nagrand - Outland. Brokentoe is the first combatant in the Ring of Blood event. Speak to Gurgthock to pick up the quest and start the event.]],

    -- NPCs: 18707
    [120] = [[Located in Veil Rhaze, Terokkar Forest. Torgos cannot be attacked or tamed until activated during the quest Torgos! / Torgos!. He can be tamed by other hunters once this happens.]],

    -- NPCs: 19055
    [121] = [[Located in Nagrand - Outland. The Windroc Matriarch appears if you interact with a Mysterious Egg which can be found in a tree at approximate coordinates 61, 67 in Nagrand.]],

    -- NPCs: 19306
    [122] = [[Located in Mana-Tombs (Dungeon).]],

    -- NPCs: 19428, 19429, 21891, 21904
    [123] = [[Located in Sethekk Halls (Dungeon).]],

    -- NPCs: 20038, 20039
    [124] = [[Located in Tempest Keep: The Eye (Raid).]],

    -- NPCs: 20906
    [125] = [[Located in The Arcatraz (Dungeon).]],

    -- NPCs: 21128
    [126] = [[Located in The Slave Pens (Dungeon). Although this creature is labelled as an "Observer's Pet" it can be tamed.]],

    -- NPCs: 21246, 22056
    [127] = [[Located in Serpentshrine Cavern (Raid).]],

    -- NPCs: 21250
    [128] = [[Located in The Grim Guzzler, Blackrock Depths (Raid) (Tameable); Terokkar Forest (Not Tameable) . Seasonal: only tameable during Brewfest - check your in-game calendar for dates. Before you tame it, the Pink Elekk is only visible if you're drunk or wearing Synthebrew Goggles (available during Brewfest), but it remains visible to all once tamed. A Pink Elekk appears (if you're drunk) just inside the entrance of the Grim Guzzler bar in Blackrock Depths during Brewfest. You can get there super-fast if you have Direbrew's Remote. It does not appear in the 'Coren Direbrew' boss instance version of the bar. Pink Elekks with this ID also appear all year round at both Allerian Stronghold and Stonebreaker Hold in Terokkar Forest, Outland, but those are friendly and cannot be tamed.]],

    -- NPCs: 21306
    [129] = [[Located in Hellfire Peninsula. Spawns when the Horde quest "Spinebreak Post" is turned in, but despawns soon after. Can be tamed by anyone.]],

    -- NPCs: 21373
    [130] = [[Located in Blade's Edge Mountains. These moths sometimes spawn from killing a Silkwing Larva.]],

    -- NPCs: 21423
    [131] = [[Located in Blade's Edge Mountains. Swarms of these creatures spawn and attack Toshley Station. You'll need to tame one quickly, before the guards kill it.]],

    -- NPCs: 21470
    [132] = [[Located in Blade's Edge Mountains. Summoned during combat by Ruuan'ok Ravenguards, Lashh'an Wing Guards, and Vekh'nir Dreadhawks at the runed circles in Veil Ruuan, Veil Lashh, and Veil Vekh, respectively.]],

    -- NPCs: 22299
    [133] = [[Located in The Underbog (Dungeon). Found in Heroic difficulty only. Several spawn as adds in The Black Stalker fight.]],

    -- NPCs: 22884, 22885
    [134] = [[Located in Black Temple (Raid).]],

    -- NPCs: 22946
    [135] = [[Located in Black Temple (Raid). Not to be confused with Shadowmoon Riding Hounds, which serve as mounts and cannot be tamed.]],

    -- NPCs: 22979
    [136] = [[Located in The Twilight Ridge, Nagrand - Outland. Very difficult to tame as it drops aggro and flees. One way to maintain threat is to use Scare Beast on it and attempt to tame it while it's feared.]],

    -- NPCs: 23020
    [137] = [[Located in Shadowmoon Valley - Outland. Found along parts of the northernmost rim of the zone, including north of Coilskar Point, and a section north of the Altar of Sha'tar extending east to the Black Temple. Has a green-purple aura that is lost upon taming.]],

    -- NPCs: 23035
    [138] = [[Located in Sethekk Halls (Dungeon). Found in Heroic mode only, Anzu is the second boss.]],

    -- NPCs: 23132
    [139] = [[Located in Sethekk Halls (Dungeon). Heroic only. Spawns during the fight with Anzu.]],

    -- NPCs: 23163
    [140] = [[Located in Terokkar Forest. Can be spawned through the repeatable quest Adversarial Blood in Skettis. Unlocking this quest requires completing most of the Skettis quest chain and farming for a number of summoning items. See the quest link for detailed information.]],

    -- NPCs: 23206
    [141] = [[Located in Skettis, Terokkar Forest. These kaliri are summoned by Darkscreecher Akkarai during combat. This NPC can be spawned through the repeatable quest Adversarial Blood in Skettis. Unlocking this quest requires completing most of the Skettis quest chain and farming for a number of summoning items. See the quest link for detailed information.]],

    -- NPCs: 23232
    [142] = [[Located in Halls of Anguish, Black Temple (Raid). Its green aura is lost upon taming.]],

    -- NPCs: 23584, 23598, 23834, 24043, 24047, 24064, 24138, 24217, 24530
    [143] = [[Located in Zul'Aman (Dungeon).]],

    -- NPCs: 23939
    [144] = [[Located in Vengeance Landing, Howling Fjord. Located outside, in the south-east corner of the area.]],

    -- NPCs: 24338
    [145] = [[Located in Zul'Aman (Dungeon). Spawned by Snake Traps placed by Hex Lord Malacrass during combat.]],

    -- NPCs: 24547
    [146] = [[Located in Garvan's Reef, Howling Fjord. Found deep within the caverns under the small island of Garvan's Reef, in the south-west of the zone. The cavern entrance is at the north end of the island.]],

    -- NPCs: 24761
    [147] = [[Located in Halls of Theory, Magisters' Terrace (Dungeon).]],

    -- NPCs: 24917
    [148] = [[Located in Bash'ir Landing, Blade's Edge Mountains. Phased. To see them you must pick up the daily quest Maintaining the Sunwell Portal and use the Bash'ir Phasing Device dropped by the ethereals in the area.]],

    -- NPCs: 25748, 25817
    [149] = [[Located in Scalding Pools, Borean Tundra. This hawk loses its coating of black oil upon taming.]],

    -- NPCs: 25750
    [150] = [[Located in Scalding Pools, Borean Tundra. This stag loses its coating of black oil upon taming.]],

    -- NPCs: 25791
    [151] = [[Located in Scalding Pools, Borean Tundra. This wolf loses its coating of black oil upon taming.]],

    -- NPCs: 25867
    [152] = [[Located in Sunwell Plateau (Raid).]],

    -- NPCs: 26271, 26272
    [153] = [[Located in The Dragon Wastes, Dragonblight; Hour of Twilight (Dungeon). These mammoths can be found wandering the area, often in family groups.]],

    -- NPCs: 26273
    [154] = [[Located in The Dragon Wastes, Dragonblight; Hour of Twilight (Dungeon). These mammoths can be found wandering the area, usually in family groups.]],

    -- NPCs: 26293, 26483
    [155] = [[Located in Dragonblight; Hour of Twilight (Dungeon).]],

    -- NPCs: 26360
    [156] = [[Located in Coldwind Heights, Dragonblight. Found deep within caverns under the glacier on the northern edge of the zone. The entrance is on the west side of the main pass into Crystalsong Forest (The Crystal Vice).]],

    -- NPCs: 26622, 26625, 26628, 26641, 26824
    [157] = [[Located in Drak'Tharon Keep (Dungeon).]],

    -- NPCs: 26672
    [158] = [[Located in Utgarde Pinnacle (Dungeon).]],

    -- NPCs: 26730
    [159] = [[Located in The Nexus (Dungeon).]],

    -- NPCs: 27249
    [160] = [[Located in Emerald Dragonshrine, Dragonblight. Found in the south-east corner of the shrine. Alystros can only be attacked when activated, which seems to require someone who has the quest The Plume of Alystros.]],

    -- NPCs: 27421
    [161] = [[Located in Grizzly Hills. These moths do not keep their yellow 'butterfly aura' after they are tamed.]],

    -- NPCs: 27483
    [162] = [[Located in Raptor Pens, Drak'Tharon Keep (Dungeon).]],

    -- NPCs: 27578
    [163] = [[Located in Shadowfang Tower, Grizzly Hills. Found in the stables of Shadowfang Tower, which can be accessed from the outside, on the west side of the tower. Shadowfang Tower is on Bloodmoon Isle, in the north-east of the zone.]],

    -- NPCs: 27626
    [164] = [[Located in Solstice Village, Grizzly Hills. Found just north of Camp Oneqwah. You can tame Tajana's horse right out from under her!]],

    -- NPCs: 27642
    [165] = [[Located in The Oculus (Dungeon). Tameable in Normal Mode only (for some reason). This mammoth can appear in a pack of phantasmal creatures that are summoned by Mage-Lord Urom when you confront him. Prior to combat you confront Urom three times, on three different platforms, and on each he'll summon one pack of phantasmal NPCs: beasts, elementals, or humanoids. The mammoth appears when he summons beasts.]],

    -- NPCs: 28213
    [166] = [[Located in Sholazar Basin. This gorilla is summoned during the quest "Tormenting the Softknuckles".]],

    -- NPCs: 28851
    [167] = [[Located in Altar of Mam'toth, Zul'Drak. Has a green aura which is lost upon taming.]],

    -- NPCs: 29033
    [168] = [[Located in Bittertide Lake, Sholazar Basin. Spawns during the Oracles daily quest A Cleansing Song. This quest is given by Oracle Soo-nee and isn't up every day. You can only take this quest if you're at least Friendly with The Oracles.]],

    -- NPCs: 29444
    [169] = [[Located in Altar of Sseratus, Zul'Drak. Summoned by Drakkari Snake Handlers in combat. The black and brown variants seem to make sounds when clicked, the red and green variants do not.]],

    -- NPCs: 29630
    [170] = [[Located in Den of Sseratus, Gundrak (Dungeon). In the room with the first boss, Slad'ran. The red ones don't seem to make sounds when clicked, but the others do.]],

    -- NPCs: 29637
    [171] = [[Located in Den of Sseratus, Gundrak (Dungeon). In the room with the first boss, Slad'ran. Crafty Snakes seem to be much less common than the dominant Fanged Pit Vipers and there may only be one in the room. The green and red variants do not make sounds when clicked, but the brown and black ones do.]],

    -- NPCs: 29713
    [172] = [[Located in Den of Sseratus, Gundrak (Dungeon). Summoned during combat with Slad'ran, the first boss of the dungeon. You may have to damage him a bit before the constrictors appear. They will stun you, but they always spawn in the same place and slither towards you, so one technique is to pull Slad'ran to another room to buy yourself some time.]],

    -- NPCs: 29735
    [173] = [[Located in Utgarde Keep (Dungeon).]],

    -- NPCs: 29838, 29931
    [174] = [[Located in Gundrak (Dungeon).]],

    -- NPCs: 29958
    [175] = [[Located in The Storm Peaks. This ram may be unreachable after you complete the Sons of Hodir quest chain, due to phasing.]],

    -- NPCs: 30320
    [176] = [[Located in The Storm Peaks. Tameable if you set yourself "At War" with Sons of Hodir.]],

    -- NPCs: 30432
    [177] = [[Located in The Underhalls, Icecrown. Spawns during the quest, "The Sum is Greater than the Parts".]],

    -- NPCs: 30455
    [178] = [[Located in The Storm Peaks. If this wolf is friendly, you can still tame it if you open your reputations window, click on The Sons of Hodir entry and check the "At War" box.]],

    -- NPCs: 30456
    [179] = [[Located in Dun Niffelem, The Storm Peaks. If this wolf is friendly, you can still tame it. Go to your reputations window, scroll down to Wrath of the Lich King reputations, click on The Sons of Hodir entry and check the "At War" box.]],

    -- NPCs: 30664, 30963
    [180] = [[Located in The Violet Hold (Northrend Dungeon).]],

    -- NPCs: 31010
    [181] = [[Located in The Violet Hold (Northrend Dungeon). Spawns during programmed attacks before the dungeon event begins.]],

    -- NPCs: 32163
    [182] = [[Located in Icecrown. Summoned during the quest "The Ironwall Rampart".]],

    -- NPCs: 32997
    [183] = [[Located in Grove of the Ancients, Darkshore. Fleetfoot is in the earlier (pre-Horde Invasion) phase of Darkshore. You can change phases by speaking to Zidormi south-west of Lor'danel (approximate coordinates 49, 25).]],

    -- NPCs: 34034
    [184] = [[Located in Ulduar (Raid). Spawns during the Auriaya fight.]],

    -- NPCs: 34369
    [185] = [[Located in Darkshore. Spawns during the quest The Seeds of Life.]],

    -- NPCs: 34543
    [186] = [[Located in Thorn Hill, Northern Barrens. Fez is being ridden by a quilboar named Tortusk, but can be tamed right out from under him!]],

    -- NPCs: 34982
    [187] = [[Located in Stonetalon Mountains. Partially transparent. Found around the Ruins of Eldre'thar.]],

    -- NPCs: 35750, 35811
    [188] = [[Located in Desolace. Spawns during quest "Early Adoption".]],

    -- NPCs: 35812
    [189] = [[Located in The Lost Isles. Phases out around level 7.]],

    -- NPCs: 35904
    [190] = [[Located in The Lost Isles. Found on the first island. Doesn't seem to phase out.]],

    -- NPCs: 36512, 38881
    [191] = [[Located in Gilneas. Wanders around Duskhaven, especially by the farms to the south. Phases out when Duskhaven sinks.]],

    -- NPCs: 36740
    [192] = [[Located in The Lost Isles. On first island. Does not seem to phase out.]],

    -- NPCs: 36852
    [193] = [[Located in Azshara. Friendly to Alliance. Ridden by Talrendis Skychaser Night Elves.]],

    -- NPCs: 37025
    [194] = [[Located in Icecrown Citadel (Raid).]],

    -- NPCs: 37091
    [195] = [[Located in Southern Barrens. Does not keep the glittery effect.]],

    -- NPCs: 37217
    [196] = [[Located in Icecrown Citadel (Raid). Precious does not keep its ribbon when tamed.]],

    -- NPCs: 37718
    [197] = [[Located in Gilneas. Accompanies watchmen around Tempest's Reach. Becomes friendly (and untameable) after you defeat the rebels and rescue Greymane.]],

    -- NPCs: 37785
    [198] = [[Located in Gilneas. These horses only appear in the Worgen starting phase of the zone.]],

    -- NPCs: 37786
    [199] = [[Located in Gilneas. Phased - Worgen starting zone only.]],

    -- NPCs: 37961
    [200] = [[Located in Durotar. Does not retain red smoke.]],

    -- NPCs: 38187
    [201] = [[Located in The Lost Isles. Many phase out out after the volcano event, but some can still be found in a meadow in the far north-east of the islands.]],

    -- NPCs: 38845
    [202] = [[Located in The Lost Isles. In the pit of the volcano. Does not retain fire breath. Phases out after Volcanoth.]],

    -- NPCs: 39149
    [203] = [[Located in Gadgetzan, Tanaris. Spawns during quest Thunderdrome: Sarinexx!. The quest cannot be repeated but it's possible to tame if someone else has the quest.]],

    -- NPCs: 39348
    [204] = [[Located in Mount Hyjal. Smolderos seems to be phased until you reach the part of the zone quest chain set in his area (see Signed in Blood), and he becomes phased again later in the chain.]],

    -- NPCs: 39440, 40310, 40458, 42556
    [205] = [[Located in Halls of Origination (Dungeon).]],

    -- NPCs: 39444
    [206] = [[Located in Chamber of Prophecy, Halls of Origination (Dungeon).]],

    -- NPCs: 39658
    [207] = [[Located in Mount Hyjal. Pre-quest phase.]],

    -- NPCs: 39833
    [208] = [[Located in Mount Hyjal. Only appears during the quest "Wave One" in a phase of the Firelands Hatchery area. Serves as a mount, but the rider is lost after taming.]],

    -- NPCs: 40064
    [209] = [[Located in The Lost Isles. Found on both islands. Doesn't seem to phase out.]],

    -- NPCs: 40238
    [210] = [[Located in Shimmering Expanse. Spawns to attack The Great Sambino and Felice, his assistant.]],

    -- NPCs: 40239
    [211] = [[Located in Shimmering Expanse. Spawns during the quest Totem Modification.]],

    -- NPCs: 40403
    [212] = [[Located in Mount Hyjal. Only exists for one short quest phase.]],

    -- NPCs: 40650
    [213] = [[Located in Mount Hyjal. Only appears during the quest "Wave Two" in a phase of the Firelands Hatchery area. Serves as a mount, but the rider is lost after taming.]],

    -- NPCs: 40819
    [214] = [[Located in Mount Hyjal. Phases out after the quest "Aessina's Miracle".]],

    -- NPCs: 41084
    [215] = [[Located in Shrine of Aviana, Mount Hyjal. Summoned during the quest A Prayer and a Wing. If you've already completed this quest you may need to party and quest sync with someone who is on it.]],

    -- NPCs: 41166
    [216] = [[Located in Blasted Lands. Wanders the perimeter of the area north of (and up from) the Dark Portal blast zone. Gomegaz only appears in the original, pre-"Iron Horde Invasion" phase of the zone. Speak to Zidormi, in the passage to the Swamp of Sorrows, to access the pre-invasion phase.]],

    -- NPCs: 41212
    [217] = [[Located in Seat of Destruction, Halls of Origination (Dungeon). This ID is for the wurms that spawn during battle when Setesh summons a Chaos Portal.]],

    -- NPCs: 41374
    [218] = [[Located in Seat of Destruction, Halls of Origination (Dungeon). This ID is for the trash mobs that are present before battle with Setesh.]],

    -- NPCs: 41645
    [219] = [[Located in Abyssal Depths. In the depths of the Fireplume Trench. Does not retain corrupted glow.]],

    -- NPCs: 42657, 42658, 42659, 42660, 42663, 42664
    [220] = [[Located in Mount Hyjal. Found at Shrine of Aviana. You'll need a flying mount to get at most of them.]],

    -- NPCs: 42766
    [221] = [[Located in Crumbling Depths, Deepholm. The Gorged Gyreworm with this ID is found only in the Crumbling Depths. It is initially hidden underground, but appears when you walk over its rumbling dust patch.]],

    -- NPCs: 42845, 43917
    [222] = [[Located in The Stonecore (Dungeon).]],

    -- NPCs: 43007
    [223] = [[Located in Shadra'Alor, The Hinterlands. Shadra spawns during quest Shadra the Venom Queen / Shadra the Venom Queen. She can be very difficult to tame at high level, as spawning NPCs will steal aggro and you can't attack her as she will die with one hit. It is possible, however: instead of accepting the quest from your faction NPC, go to the altar at the high point on the pond shore and accept the quest there. Immediately start taming Shadra the second she spawns and try to complete the tame before the faction NPCs run out and steal aggro. If it doesn't work, abandon the quest, re-accept and try again.]],

    -- NPCs: 43296
    [224] = [[Located in Den of the Devourer, Blackwing Descent (Raid). Chimaeron can only be tamed when he's under 20% health. If you're high level you'll have to be careful you don't kill him. If necessary, remove all your equipment. You can also kill yourself outside the instance and take resurrection sickness to weaken yourself further.]],

    -- NPCs: 43339
    [225] = [[Located in Shuddering Spires, Deepholm. You should try to tame Gorgonite as quickly as you can, before a Son of Gorgonite appears and tries to 'help' you by attacking it.]],

    -- NPCs: 43340
    [226] = [[Located in Redridge Mountains. Phases out once a major zone questline has been completed. Players report still being able to tame by using an immolation trap in the worg pen to pull them. See their Wowhead page for details.]],

    -- NPCs: 43438
    [227] = [[Located in The Winding Halls, The Stonecore (Dungeon).]],

    -- NPCs: 43658
    [228] = [[Located in Lost City of the Tol'Vir (Dungeon). Spawns during the Lockmaw encounter.]],

    -- NPCs: 44109
    [229] = [[Located in Gilneas. Only seems to occur in the swamp after the Battle for Gilneas City.]],

    -- NPCs: 44130
    [230] = [[Located in Gilneas. In and near Stormglen Village. Only seems to occur after the Battle for Gilneas City.]],

    -- NPCs: 44257
    [231] = [[Located in Scoured Reach, Deepholm. Found in a region south of Therazane's Throne. It is initially hidden underground, but appears when you walk over its rumbling dust patch.]],

    -- NPCs: 44390
    [232] = [[Located in Dustwallow Marsh. Phased out once you complete the "Theramore's Fall" scenario. Speak to Zidormi to access the pre-destruction phase.]],

    -- NPCs: 44481
    [233] = [[Located in Western Plaguelands. Can only be tamed during quest "A Different Approach".]],

    -- NPCs: 44587
    [234] = [[Located in Tanaris. Has stealth, but loses it when tamed.]],

    -- NPCs: 44906
    [235] = [[Located in Silverpine Forest. Hangs from the ceiling at the end of the Skittering Dark cave in the northwest of Silverpine.]],

    -- NPCs: 45096
    [236] = [[Located in Lost City of the Tol'Vir (Dungeon).]],

    -- NPCs: 45202
    [237] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. Located near the Obelisk of the Stars.]],

    -- NPCs: 45204
    [238] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. Ridden by Sultan Oogah around some ruins south of the Gate of Eternity.]],

    -- NPCs: 45302, 45353, 51671, 51673, 51674, 51675, 51712, 51713, 51760
    [239] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 45321
    [240] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. Lives along the northern part of the river.]],

    -- NPCs: 45450
    [241] = [[Located in Eastern Plaguelands. Stays transparent but does not retain his sword.]],

    -- NPCs: 45453
    [242] = [[Located in Eastern Plaguelands. Does not keep the green glow.]],

    -- NPCs: 45859
    [243] = [[Located in Sahket Wastes, Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 46126, 46127, 46128, 46129
    [244] = [[Located in Obelisk of the Stars, Uldum. Found during a quest phase for the Harrison Jones quests in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 46278, 46280, 46281
    [245] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. This crocolisk spawns and attacks during the zone quest The Pit of Scales. This is a once-off quest.]],

    -- NPCs: 46317
    [246] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. Lives along the southern part of the river, down into the delta.]],

    -- NPCs: 46369
    [247] = [[Located in Swamp of Sorrows. In the cave along the southern mountains, east of Stonard.]],

    -- NPCs: 46910
    [248] = [[Located in The Flamewake, Mount Hyjal. This core hound phases out later in the zone quest chain.]],

    -- NPCs: 47053
    [249] = [[Located in Swamp of Sorrows. Hides in the cave at the back of the valley at the western edge of the zone.]],

    -- NPCs: 47079
    [250] = [[Located in The Bastion of Twilight (Raid).]],

    -- NPCs: 47117
    [251] = [[Located in Twilight Highlands. Summoned by the Black Recluse.]],

    -- NPCs: 47190, 47202
    [252] = [[Located in Cradle of the Ancients, Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 47204
    [253] = [[Located in Hillsbrad Foothills. Does not keep its egg sacs after taming.]],

    -- NPCs: 47283
    [254] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of Uldum, speak to Zidormi in Ramkahen if you need to switch time phases. Located in the general vicinity of the Temple of Uldum in the west of the zone.]],

    -- NPCs: 47390
    [255] = [[Located in Thousand Needles. Makes quieter sounds than most beetles.]],

    -- NPCs: 47544
    [256] = [[Located in D-Block, Tol Barad. Svarnos is underground in the D-Block cells, which are accessible from a structure to the south-west of Ironclad Garrison. D-Block isn't always open (and is always closed during battles) so you may have to be patient.]],

    -- NPCs: 47720
    [257] = [[Located in Uldum; Lost City of the Tol'vir (Dungeon). This camel can relaibly be found in the Terrace of the Augurs area of the Lost City of the Tol'vir dungeon. It can also be found in Neferset City in the original (pre-N'Zoth Invasion) phase of Uldum, speak to Zidormi in Ramkahen if you need to switch time phases. It phases out later in the zone quest chain.]],

    -- NPCs: 47726
    [258] = [[Located in Neferset City, Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. This creature phases out later in the zone quest chain.]],

    -- NPCs: 47740
    [259] = [[Located in Neferset City, Uldum. Found in the original (pre-N'Zoth Invasion) phase of Uldum, speak to Zidormi in Ramkahen if you need to switch time phases. Summoned by Neferset Snake Charmers during combat. These phase out later in the zone quest chain. The red variant does not make sounds when clicked, the other three colours do.]],

    -- NPCs: 47769
    [260] = [[Located in Glopgut's Hollow, Twilight Highlands. Found outside, on the eastern side of the ogre settlement of Glopgut's Hollow, in the north-west of the zone.]],

    -- NPCs: 47801
    [261] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone, in a broad area around the Obelisk of the Stars and Halls of Origination. It also occurs at the southern tip of Neferset City in both original and Assault phases (somewhat confusingly), but in the original phase it disppears later in the quest chain. Speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 47803
    [262] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of the zone. Located around ridges south of the Obelisk of the Moon / east of Temple of Uldum. Speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 48278, 48440, 48441, 48442
    [263] = [[Located in The Deadmines (Dungeon).]],

    -- NPCs: 48447, 48450
    [264] = [[Located in The Deadmines (Dungeon). In the final room.]],

    -- NPCs: 48448, 48449
    [265] = [[Located in The Deadmines (Dungeon). In the final room. Doesn't have a silver portrait but it only appears rarely.]],

    -- NPCs: 48451
    [266] = [[Located in Ironclad Cove, The Deadmines (Dungeon). Found on an island to the south-west of the ship, in the final room of the dungeon.]],

    -- NPCs: 48479
    [267] = [[Located in Twilight Highlands. Only found during a specific Alliance quest phase for "Rescue at Glopgut's Hollow"]],

    -- NPCs: 48724
    [268] = [[Located in Mount Hyjal. Later quest phase. Disappears in final phase.]],

    -- NPCs: 48873
    [269] = [[Located in Elwynn Forest. Tekton is found in a flock of sheep by a house on a high ridge, in the north-west of corner of the river valley that lies east of Stormwind (approximate coordinates 51, 14). Be very sure to tame it before it can reach you or it will explode!]],

    -- NPCs: 49565, 50997
    [270] = [[Located in The Hidden Grove, Winterspring.]],

    -- NPCs: 49822
    [271] = [[Located in Crumbling Depths, Deepholm. This rare shale spider is normally only accessible on days when the world quest Underground Economy is up. This quest is offered by Ricket, a goblin who will only appear on days when she offers a quest. She's located in the first chamber Crumbling Depths, which is situated in the enormous cave visible to the north-north-east on the Deepholm map.Accept Ricket's quest, which gives you an explosive (but infinitely reusable) item called "Ricket's Tickers", then proceed further into the caves. Follow the first circular cave in an anticlockwise direction (watch out for the Colossal Gyreworm!) and take the second exit on the right, leaving you in a large, open cavern containing some broken pillars. Almost directly ahead you can see the side-cavern containing Jadefang, but it's up on a ledge that isn't reachable (though using Track Beasts you can confirm that Jadefang is up). Instead, turn to your right and take the eastern exit passageway, which loops back around to the left and ends at a balcony overlooking the cavern you were just in. Mount up and leap directly ahead and land on top of the broken green pillar. This places you not far from the entrance to Jadefang's cavern. Now turn your back to the entrance to Jadefang's cave and activate the "Ricket's Tickers". If all goes right, after 5-6 seconds you'll be blown backwards, up to the entrance of Jadefang's cave where you can tame it. If you miss, repeat the procedure as many times as you need, as Ricket's Tickers are reusable for as long as you have the associated quest.]],

    -- NPCs: 50058
    [272] = [[Located in Mount Hyjal. Throne of Flame. Immune to traps.]],

    -- NPCs: 50154
    [273] = [[Located in Sahket Wastes, Uldum. This brown scorpion may appear (rarely) in a number of locations in the Sahket Wastes in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. In addition to this colour there are four other versions of Madexx that may appear, each with its own colour and ID: Madexx (red), Madexx (green), Madexx (black), and Madexx (blue).]],

    -- NPCs: 50249
    [274] = [[Located in The Steam Pools, Feralas. Found in a special phase of the Steam Pools, which you are teleported to after finding and clicking on one of the rare Mysterious Camel Figurines in Uldum (original phase).]],

    -- NPCs: 50313, 50320
    [275] = [[Located in Winterspring. Inside Mazthoril cave]],

    -- NPCs: 50328
    [276] = [[Located in Tirisfal Glades. Appears in Deathknell up in the mountains.]],

    -- NPCs: 50335
    [277] = [[Located in Hillsbrad Foothills. Flies in a circle over a ruined tower near The Ruins of Southshore.]],

    -- NPCs: 50348
    [278] = [[Located in Winterspring. Just west of The Hidden Grove.]],

    -- NPCs: 50361
    [279] = [[Located in Black Tooth Hovel, Burning Steppes. Appears at the foot of the mountains roughly south-east of Black Tooth Hovel.]],

    -- NPCs: 50370
    [280] = [[Located in Silithus. North-east of Hive'Ashi. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 50728
    [281] = [[Located in Lethlor Ravine, Badlands. Spawns atop a pile of bones on a rise on the southern border, south-east corner of Lethlor Ravine.]],

    -- NPCs: 50735
    [282] = [[Located in Dustwallow Marsh. In shallow water under a tree.]],

    -- NPCs: 50737
    [283] = [[Located in Twilight's Run, Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 50741
    [284] = [[Located in Thousand Needles. Under water.]],

    -- NPCs: 50742, 50744, 51004
    [285] = [[Located in Hive'Ashi, Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 50743, 50746
    [286] = [[Located in Hive'Regal, Silithus. Original Silithus creatures vanish after you complete the Antorus raid. To time-travel to the earlier phase, speak to Zidormi near Valor's Rest.]],

    -- NPCs: 50747
    [287] = [[Located in Ahn'Qiraj: The Fallen Kingdom, Silithus. Located in the non-instanced portion of Ahn'Qiraj, south of Silithus.]],

    -- NPCs: 50748
    [288] = [[Located in Thousand Needles. Under water, near Splithoof Crag.]],

    -- NPCs: 50763
    [289] = [[Located in Tirisfal Glades. Inside a fireplace.]],

    -- NPCs: 50765
    [290] = [[Located in Azurelode Mine, Hillsbrad Foothills. Aggressive to both Alliance AND Horde, unlike the others in that area; spawns deep in the mine.]],

    -- NPCs: 50770
    [291] = [[Located in Thoradin's Wall, Arathi Highlands. Located in the very north-west corner, between the wall and mountains, in the original phase of the zone.]],

    -- NPCs: 50792
    [292] = [[Located in Blackrock Stronghold, Burning Steppes. Appears in the mountains north-east of Blackrock Stronghold.]],

    -- NPCs: 50803
    [293] = [[Located in Tirisfal Glades. Flies in a slow circle around the top of the tower.]],

    -- NPCs: 50807
    [294] = [[Located in Valley of Ashes, Burning Steppes. Catal is located roughly south-west of Dreadmaul Rock. On the zone map it appears at the very end of the road that comes out of Redridge Mountains.]],

    -- NPCs: 50810
    [295] = [[Located in Terror Wing Path, Burning Steppes. Appears south-east of Dreadmaul Rock.]],

    -- NPCs: 50813
    [296] = [[Located in Eastern Plaguelands. Flies in a circle around the ruins of a house.]],

    -- NPCs: 50815
    [297] = [[Located in Fireplume Peak, Molten Front. Skarr can appear on a floating rock off the east side of Fireplume Peak. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 50839
    [298] = [[Located in Blackrock Mountain. Does a loop of the circular road inside the mountain.]],

    -- NPCs: 50842
    [299] = [[Located in Fields of Honor, Burning Steppes. Appears just to the west of Blackrock Stronghold, wandering along the shore of the magma.]],

    -- NPCs: 50843
    [300] = [[Located in Vale of Eternal Blossoms. See this video for tracking information.]],

    -- NPCs: 50846
    [301] = [[Located in Searing Gorge. Appears in the mountains along the northern border, west of Dustfire Valley and north of The Cauldron.]],

    -- NPCs: 50850, 50859
    [302] = [[Located in The Jade Forest. See this video for tracking information.]],

    -- NPCs: 50854
    [303] = [[Located in Krasarang Wilds. Bloodtooth is a special tracking tame that wanders stealthed along the southern coast of Krasarang Wilds. See this video for tracking information.]],

    -- NPCs: 50874
    [304] = [[Located in Stonetalon Mountains. In a small cave just east of Thal'darah Grove.]],

    -- NPCs: 50876
    [305] = [[Located in Dustfire Valley, Searing Gorge. Appears in the mountains north of the words "Dustfire Valley" and south-west of the words "Stonewrought Pass" on the zone map.]],

    -- NPCs: 50884
    [306] = [[Located in Stonetalon Mountains. Has vocalizations when clicked. On a small grassy patch northwest of Sunrock Retreat.]],

    -- NPCs: 50885
    [307] = [[Located in Valley of the Four Winds. See this video for tracking information.]],

    -- NPCs: 50886
    [308] = [[Located in Misty Reed Strand, Swamp of Sorrows. Has vocalizations when clicked.]],

    -- NPCs: 50892
    [309] = [[Located in Thousand Needles. Stays larger than most tamed wasps. On cliffs, south-east of Razorfen Downs.]],

    -- NPCs: 50895
    [310] = [[Located in Thal'darah Grove, Stonetalon Mountains. Volux flies high over the grove but can be reached from the top of the tower as it flies past. Note that Volux will phase out and become unavailable once you advance the zone quest chain past the point at which the bomb drops - for Alliance this is when you accept the quest Last Ditch Effort.]],

    -- NPCs: 50905
    [311] = [[Located in Felwood. Stays larger than most tamed wasps.]],

    -- NPCs: 50930
    [312] = [[Located in Tirisfal Glades. Slightly hidden behind a big, fallen tree.]],

    -- NPCs: 50940
    [313] = [[Located in Go'Shek Farm, Arathi Highlands. At Go'shek farm in some stables.]],

    -- NPCs: 50944, 50998
    [314] = [[Located in Kun-Lai Summit. See this video for tracking information.]],

    -- NPCs: 50946
    [315] = [[Located in Blackchar Cave, Searing Gorge. Hogzilla stands outside a sealed cave in the mountains in the far southwest of the zone.]],

    -- NPCs: 50948
    [316] = [[Located in Searing Gorge. Appears in the raised area just east of The Cauldron and north-west of Thorium Advance.]],

    -- NPCs: 50959
    [317] = [[Located in Fireplume Peak, Molten Front. Karkin can appear on a floating rock off either the east or south-east side of Fireplume Peak. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 50960
    [318] = [[Located in Dread Wastes. Hexapos is a special tracking tame. See this video for tracking information.]],

    -- NPCs: 50981
    [319] = [[Located in Nagrand - Draenor. Wanders a fixed path in Nagrand, possibly starting just to the south-east of the Ring of Trials. Check the Wowhead link for a map. It is reported to have a long spawn timer, possibly 12-24 hours or more.]],

    -- NPCs: 50990
    [320] = [[Located in Nagrand - Draenor. Nakk spawns rarely. It wanders a path in northern Nagrand, roughly from the east side of the Ring of Blood, south to near the Joz's Rylaks flightpoint, and west to the east side of Mok'Gol Watchpost. It also drops the Bloodhoof Bull mount.]],

    -- NPCs: 51002
    [321] = [[Located in Firewatch Ridge, Searing Gorge. Appears deep within a large cave.]],

    -- NPCs: 51010
    [322] = [[Located in The Cauldron, Searing Gorge. Appears in a cave in the far north-west corner of The Cauldron.]],

    -- NPCs: 51013
    [323] = [[Located in Townlong Steppes. See this video for tracking information.]],

    -- NPCs: 51018
    [324] = [[Located in Badlands. Inside a crypt by Dustwind Dig.]],

    -- NPCs: 51025
    [325] = [[Located in Felwood. Under water.]],

    -- NPCs: 51040
    [326] = [[Located in Northfold Manor, Arathi Highlands. In a small shed.]],

    -- NPCs: 51042
    [327] = [[Located in Eastern Plaguelands. By the side of Stephen Browman, a quest mob.]],

    -- NPCs: 51044
    [328] = [[Located in Garren's Haunt, Tirisfal Glades. Inside a barn.]],

    -- NPCs: 51048
    [329] = [[Located in Pyrox Flats, Searing Gorge. Appears fast asleep among the dark iron dwarves, by a large crucible of molten iron.]],

    -- NPCs: 51053
    [330] = [[Located in Eastern Plaguelands. In the lowest level of the crypt.]],

    -- NPCs: 51061
    [331] = [[Located in Dustwallow Marsh. Very large in the wild, but shrinks to a regular size after taming.]],

    -- NPCs: 51062
    [332] = [[Located in Unearthed Grounds, Stonetalon Mountains. Highest level, under a platform.]],

    -- NPCs: 51063
    [333] = [[Located in Boulderfist Hall, Arathi Highlands. Within the western ogre cave]],

    -- NPCs: 51066
    [334] = [[Located in Blackrock Mountain. Just a little away from the Blackrock Depths instance portal, surrounded by aggressive dwarves.]],

    -- NPCs: 51069
    [335] = [[Located in Dustwallow Marsh. Appears on a ledge within the cave.]],

    -- NPCs: 51076
    [336] = [[Located in Hillsbrad Foothills. Inside a hollowed-out tree stump.]],

    -- NPCs: 51193
    [337] = [[Located in Uldum. Found in the original (pre-N'Zoth Invasion) phase of Uldum, speak to Zidormi in Ramkahen if you need to switch time phases. Located in the far west of the zone.]],

    -- NPCs: 51401
    [338] = [[Located in Sahket Wastes, Uldum. This red scorpion may appear (rarely) in a number of locations in the Sahket Wastes in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. In addition to this colour there are four other versions of Madexx that may appear, each with its own colour and ID: Madexx (brown), Madexx (green), Madexx (black), and Madexx (blue).]],

    -- NPCs: 51402
    [339] = [[Located in Sahket Wastes, Uldum. This green scorpion may appear (rarely) in a number of locations in the Sahket Wastes in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. Speak to Zidormi in Ramkahen if you need to switch time phases. In addition to this colour there are four other versions of Madexx that may appear, each with its own colour and ID: Madexx (brown), Madexx (red), Madexx (black), and Madexx (blue).]],

    -- NPCs: 51403
    [340] = [[Located in Sahket Wastes, Uldum. This black scorpion may appear (rarely) in a number of locations in the Sahket Wastes in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. In addition to this colour there are four other versions of Madexx that may appear, each with its own colour and ID: Madexx (brown), Madexx (red), Madexx (green), and Madexx (blue).]],

    -- NPCs: 51404
    [341] = [[Located in Sahket Wastes, Uldum. This blue scorpion may appear (rarely) in a number of locations in the Sahket Wastes in the original (pre-N'Zoth Invasion) phase of the zone. Speak to Zidormi in Ramkahen if you need to switch time phases. In addition to this colour there are four other versions of Madexx that may appear, each with its own colour and ID: Madexx (brown), Madexx (red), Madexx (green), and Madexx (black).]],

    -- NPCs: 51676
    [342] = [[Located in Vir'naal River Delta, Uldum. Found in the original (pre-N'Zoth Invasion) phase of Uldum, speak to Zidormi in Ramkahen if you need to switch time phases.]],

    -- NPCs: 51972
    [343] = [[Located in Dun Morogh. Hidden valley north of Gnomeregan. On foot it can be reached from coordinates 40.0, 56.0.]],

    -- NPCs: 52085, 52345, 52373, 52375, 52376, 52377, 52379, 52413, 52418, 52441
    [344] = [[Located in Zul'Gurub (Dungeon).]],

    -- NPCs: 52157
    [345] = [[Located in Mandokir's Domain, Zul'Gurub (Dungeon). Ohgan is part of the Bloodlord Mandokir encounter and initially serves as the boss's mount. To tame him you'll have to wait until Mandokir dismounts and Ohgan kills all of the Chained Spirits that surround the arena; before then he refuses to be distracted by you.]],

    -- NPCs: 52224
    [346] = [[Located in Northern Stranglethorn. Phased. Only encountered during the level 85 Zandalari quest chain in 4.1, started by Bwemba.]],

    -- NPCs: 52402
    [347] = [[Located in The Coil, Zul'Gurub (Dungeon).]],

    -- NPCs: 52442
    [348] = [[Located in Zul'Gurub (Dungeon). Stays larger than most tamed wasps.]],

    -- NPCs: 52981
    [349] = [[Located in Molten Front. Not to be confused with the two Firelands raid mobs of the same name, which are boss models and cannot be tamed.]],

    -- NPCs: 53152
    [350] = [[Located in The Molten Flow, Molten Front. Located in the caverns under the Molten Front. To reach this area you have to complete the initial set of dailies and then take the daily Into the Fire from General Taldris Moonfall.]],

    -- NPCs: 53206, 53694, 53695
    [351] = [[Located in Firelands (Raid).]],

    -- NPCs: 53265
    [352] = [[Located in Sethria's Roost, Mount Hyjal. Found during the daily quest Rage Against the Flames.]],

    -- NPCs: 53704
    [353] = [[Located in The Dawning Valley, The Wandering Isle (Pandaren Starting Zone). Non-aggressive. Active.]],

    -- NPCs: 53753
    [354] = [[Located in Molten Front. Spawns in fast-moving packs, but only on random days.]],

    -- NPCs: 54318
    [355] = [[Located in Mount Hyjal. Remove your armor to survive tame.]],

    -- NPCs: 54319
    [356] = [[Located in Mount Hyjal. Runs very fast. Remove your armor to survive tame.]],

    -- NPCs: 54320
    [357] = [[Located in Mount Hyjal. He won't show up if you haven't completed the quests to unlock the daily hub. He is found circling high above the Sanctuary of Malorne. His spawn timer is 6-17 hours. He flies up very high. The fall would kill you without some sort of fall slowing mechanism. The best method seems to be to park yourself at the top of the tree just behind the statue of Malorne. Have a freezing trap down. Once he flies close enough, fly up a bit, dismount, shoot and tame.]],

    -- NPCs: 54321
    [358] = [[Located in Molten Front. Use traps to survive the tame. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 54322
    [359] = [[Located in Molten Front. Immune to tame until health is low. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 54323
    [360] = [[Located in Molten Front. Timing and interrupts will help you avoid his deadly venom. Haste will help you tame. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 54324
    [361] = [[Located in Molten Front. Immune to tame until energy is low. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 54338
    [362] = [[Located in Molten Front. Swim in lava to remove web. Even though this beast appears two levels higher than you, you can tame it if you're at least as high as its minimum level.]],

    -- NPCs: 54517
    [363] = [[Located in Ruby Dragonshrine, End Time (Dungeon).]],

    -- NPCs: 54533
    [364] = [[Located in Feralas; Silithus. In a secluded mountain valley in the south-western corner of Feralas, bordering Silithus. Only reachable by flying.]],

    -- NPCs: 54688, 54699, 54700
    [365] = [[Located in End Time (Dungeon). Only available if you get the Emerald Dragonshrine/Echo of Tyrande encounter, which is random.]],

    -- NPCs: 55015
    [366] = [[Located in The Singing Pools, The Wandering Isle (Pandaren Starting Zone). Non-aggressive to people; aggressive to frogs.]],

    -- NPCs: 55874
    [367] = [[Located in The Wandering Isle (Pandaren Starting Zone). Zhao-Ren appears during the Pandaren starting zone quest Battle for the Skies. This version of The Wandering Isle is only accessible to Pandaren during their starting experience.]],

    -- NPCs: 56172
    [368] = [[Located in Pei-Wu Forest, The Wandering Isle (Pandaren Starting Zone). Non-aggressive.]],

    -- NPCs: 56286
    [369] = [[Located in Grookin Hill, The Jade Forest. Can be tamed by Horde if you set yourself "At War" with Forest Hozen.]],

    -- NPCs: 56543
    [370] = [[Located in The Jade Forest. Spawn and attack the cart during the quest after leaving Greenstone Quarry. Other players may see and tame them.]],

    -- NPCs: 56703, 65520
    [371] = [[Located in Stoneplow, Valley of the Four Winds. Only present during the Battle of Stoneplow quest chain.]],

    -- NPCs: 56753
    [372] = [[Located in Singing Marshes, Valley of the Four Winds. Spawns during the quest A Taste for Eggs.]],

    -- NPCs: 56754
    [373] = [[Located in Cloudstrike Dojo, Shado-Pan Monastery (Dungeon). Summoned during the battle with Gu Cloudstrike, the first boss of the dungeon. Despite its name this cloud serpent is black, not blue.]],

    -- NPCs: 56877
    [374] = [[Located in Gate of the Setting Sun (Dungeon). The fourth and final boss in Gate of the Setting Sun.]],

    -- NPCs: 57232, 57237
    [375] = [[Located in Scrollkeeper's Sanctum, Temple of the Jade Serpent, The Jade Forest. Only present during a quest phase.]],

    -- NPCs: 57421
    [376] = [[Located in Silken Fields, Valley of the Four Winds. Spawned using Mothallus Bait, with or without the associated quest. Was named Mothran until patch 5.3.]],

    -- NPCs: 57797
    [377] = [[Located in The Dawning Valley, The Wandering Isle (Pandaren Starting Zone). Non-aggressive. Sleeping.]],

    -- NPCs: 58111
    [378] = [[Located in Krasarang Wilds. Spawn and attack during the quest "Cheer Up, Yi-Mo".]],

    -- NPCs: 58363, 65711, 67084
    [379] = [[Located in The Jade Forest. Can only be tamed when aggressive due to daily quest.]],

    -- NPCs: 58419
    [380] = [[Located in Krasarang Wilds. Activated during the quests The Pools of Youth (Alliance) and The Pools of Youth (Horde).]],

    -- NPCs: 58459, 58475, 58588
    [381] = [[Located in Vale of Eternal Blossoms. Presence depends on daily quests.]],

    -- NPCs: 58568
    [382] = [[Located in Vale of Eternal Blossoms. Spawn if you step on mounds. Presence depends on random daily quest.]],

    -- NPCs: 58645
    [383] = [[Located in Krasarang Wilds. Activated during For Family (Horde) and The Lord Reclaimer (Alliance).]],

    -- NPCs: 58674, 58876, 59309
    [384] = [[Located in Scarlet Halls, Scarlet Monastery (Dungeon).]],

    -- NPCs: 58755
    [385] = [[Located in Gilded Fan near New Cifera, Valley of the Four Winds. Spawns when Manglemaw is killed. Drops a quest-starting item. Can still be summoned after the quest is completed.]],

    -- NPCs: 58768
    [386] = [[Located in Jin Yang Road, Vale of Eternal Blossoms. Found at coordinates 46,59, just north of Tu Shen Burian Ground. Cracklefang carries a sword that is lost after taming.]],

    -- NPCs: 58804, 58808, 58809
    [387] = [[Located in Gilded Fan, Valley of the Four Winds. Spawns during the quest The Great Water Hunt.]],

    -- NPCs: 58811
    [388] = [[Located in Spiritsong River, The Jade Forest. Appears to be in Horde-only phase of area.]],

    -- NPCs: 58883
    [389] = [[Located in Krasarang Wilds. To get Feverbite to spawn you have to kill a large number of Feverbite Hatchling critters that scurry about the area. Eventually she'll appear on the central platform.]],

    -- NPCs: 58884, 58885
    [390] = [[Located in Krasarang Wilds. Sha aura removed on taming.]],

    -- NPCs: 58889
    [391] = [[Located in Valley of the Four Winds. Summons Longfang Pack Wolves.]],

    -- NPCs: 59037
    [392] = [[Located in The Jade Forest. His chain disappears when tamed.]],

    -- NPCs: 59157
    [393] = [[Located in Vale of Eternal Blossoms. Active with daily quest.]],

    -- NPCs: 59339
    [394] = [[Located in Muskpaw Ranch, Kun-Lai Summit. Yaks being chased can be tamed, but yaks being ridden cannot.]],

    -- NPCs: 59488
    [395] = [[Located in The Heartland, Valley of the Four Winds. Spawn when harvesting Spideroot during the quest Growing the Farm I: A Little Problem.]],

    -- NPCs: 59680
    [396] = [[Located in The Burlap Trail, Kun-Lai Summit. Spawn regularly in scripted ambush events.]],

    -- NPCs: 59753
    [397] = [[Located in Fox Grove, The Jade Forest. Originally phased out, but now accessible at later phases.]],

    -- NPCs: 59754
    [398] = [[Located in Fox Grove, Serpent's Heart, The Jade Forest. Originally phased out, but now accessible at later phases.]],

    -- NPCs: 59756
    [399] = [[Located in Fox Grove, The Jade Forest. Remains larger than other caterpillars. He seems to vanish from Fox Grove at later quest phases, but can still be seen and aggroed from just outside Fox Grove if you stand right at the river's edge. Wait patiently and he'll pat down by the river.]],

    -- NPCs: 59757
    [400] = [[Located in The Jade Forest. Purple shadow effect is removed upon taming.]],

    -- NPCs: 59915, 60043, 60047, 60051
    [401] = [[Located in Mogu'shan Vaults (Raid). One of The Stone Guard bosses. In 10-player mode only three of the four possible guardians will be present in a given week.]],

    -- NPCs: 59973
    [402] = [[Located in Vale of Eternal Blossoms. Disappears after initial VEB quest chain.]],

    -- NPCs: 60131
    [403] = [[Located in Kun-Lai Summit. Summoned by Ordo Warbringer.]],

    -- NPCs: 60203
    [404] = [[Located in Mortbreath Grotto, Krasarang Wilds. Found in an underwater cave that is reached from Nayeli Lagoon, roughly under the "YE" of "NAYELI LAGOON" on the map.]],

    -- NPCs: 60373
    [405] = [[Located in The Silent Sanctuary, Vale of Eternal Blossoms. Originally restricted to a specific quest phase, these quilen were made generally accessible in 5.4.]],

    -- NPCs: 60401
    [406] = [[Located in Narsong Trench, Krasarang Wilds. Found in an underwater cave in Narsong Trench, roughly south-east of The Incursion and north-east of Anglers Wharf.]],

    -- NPCs: 60410
    [407] = [[Located in Mogu'shan Vaults (Raid).]],

    -- NPCs: 60576, 64183
    [408] = [[Located in Mogu'shan Vaults (Raid). Trash mob before The Stone Guard bosses.]],

    -- NPCs: 60623
    [409] = [[Located in The Yaungol Advance, Kun-Lai Summit. These appear by the Sha of Anger when it happens to spawn just north-west of Inkgill Mere (but not other spawn points).]],

    -- NPCs: 60875
    [410] = [[Located in Kun-Lai Summit. Found asleep outside Grummle Bazaar and other locations.]],

    -- NPCs: 61159, 62945
    [411] = [[Located in Greenstone Village (Scenario).]],

    -- NPCs: 61306
    [412] = [[Located in Seeker's Point, Kun-Lai Summit. Yao and its companion, Yachi, spawn during the quest The Tongue of Ba-Shon, which is part of the Kun-Lai Summit quest chain. It can be tamed by someone other than the quester.]],

    -- NPCs: 61307
    [413] = [[Located in Seeker's Point, Kun-Lai Summit. Yachi and its companion, Yao, spawn during the quest The Tongue of Ba-Shon, which is part of the Kun-Lai Summit quest chain. It can be tamed by someone other than the quester.]],

    -- NPCs: 61387, 61415, 61945
    [414] = [[Located in Mogu'shan Palace (Dungeon).]],

    -- NPCs: 61408
    [415] = [[Located in Ragefire Chasm (Dungeon). Adarogg seems to have more subdued flames than other beasts with this colour combo.]],

    -- NPCs: 61509
    [416] = [[Located in Niuzao Temple, Townlong Steppes. Present when the daily The Overwhelming Swarm is up.]],

    -- NPCs: 61565
    [417] = [[Located in Crypt of Forgotten Kings (Scenario). Activate after looting the urn.]],

    -- NPCs: 61657, 61658
    [418] = [[Located in Ragefire Chasm (Dungeon).]],

    -- NPCs: 61747
    [419] = [[Located in The Jade Forest. Although this parrot occurs in three colours, oddly only the red variant makes sounds when clicked.]],

    -- NPCs: 61848
    [420] = [[Located in Mount Neverest, Kun-Lai Summit. The Wild Onyx Serpent circles Mount Neverest in Kun-Lai. It can be difficult to reach but you can just get in range of it if you find the right outcropping to stand on. At max level, use an item level 1 weapon (can be bought from a weapon vendor), remove your armor, and perhaps even kill yourself and take resurrection sickness to pull the serpent without killing it.]],

    -- NPCs: 62254
    [421] = [[Located in Crypt of Forgotten Kings (Scenario).]],

    -- NPCs: 62324
    [422] = [[Located in Gao-Ran Battlefront, Townlong Steppes. Appears at the end of the zone quest Cutting the Swarm as the objective the follow-up quest Terror of the Dread Wastes. If you have trouble getting aggro from the Gao-Ran troops, wait until it submerges then tame quickly when it surfaces again.]],

    -- NPCs: 62442
    [423] = [[Located in Terrace of Endless Spring (Raid). Tsulong is a powerful spirit being and not a regular beast. This ID is for his black, attackable form.Once tamed, Tsulong will respawn as a raid boss about 30 seconds later.]],

    -- NPCs: 63510
    [424] = [[Located in The Silent Sanctuary, Vale of Eternal Blossoms. While this stone quilen changes colour during combat, he always reverts to his original grey upon taming.]],

    -- NPCs: 63584
    [425] = [[Located in The Jade Forest. Found on shoreline east of the Jade Temple, but only when the daily "The Darkness Around Us" is offered there.]],

    -- NPCs: 63722
    [426] = [[Located in Zouchin Strand, Kun-Lai Summit. Spawns during a quest.]],

    -- NPCs: 63723
    [427] = [[Located in Zouchin Strand, Kun-Lai Summit. Initial quest phase for area only. Picking at the body of Sage Liao.]],

    -- NPCs: 63895
    [428] = [[Located in Townlong Steppes. This serpent is only accessible when you're on the quest Surprise Attack!. To unlock this once-off quest you have to reach Exalted with Shado-Pan and Revered with Golden Lotus, and then complete the precursor quest, Mogu Incursions.]],

    -- NPCs: 63920
    [429] = [[Located in Niuzao Temple, Townlong Steppes. This version of Hei Feng is only accessible when you're on the quest Surprise Attack!.]],

    -- NPCs: 64321, 64323, 66686
    [430] = [[Located in Cavern of Endless Echoes, Valley of the Four Winds. Cave is blocked. Requires quest Old Man Thistle's Treasure to enter.]],

    -- NPCs: 64724
    [431] = [[Located in Clutches of Shek'zeer, Dread Wastes. Only present when the daily quests are located in that part of the zone.]],

    -- NPCs: 64965
    [432] = [[Located in The Hall of the Serpent, Vale of Eternal Blossoms. Milau appears in the older, pre-Assaults phase of the zone. The Hall of the Serpent is located downstairs in Guo-Lai Halls, in the north of the zone.]],

    -- NPCs: 65229
    [433] = [[Located in The Briny Muck, Dread Wastes. Only present when the Dread Wastes daily questing hub is set in Zan'vess (approximately every three days).]],

    -- NPCs: 65616
    [434] = [[Located in The Jade Forest. Spawns during Cloud Serpent daily quest Needle Me Not.]],

    -- NPCs: 65650
    [435] = [[Located in The Jade Forest. May spawn from Widow's Webs.]],

    -- NPCs: 66464
    [436] = [[Located in Kun-Lai Summit. Drops a Bag of Kafa Beans which summons a ridable kafa-crazed goat.]],

    -- NPCs: 66633
    [437] = [[Located in The Jade Forest. Won't show up on minimap till you enter his cave.]],

    -- NPCs: 66668
    [438] = [[Located in The Jade Forest. Horde-only phase of area around Honeydew Village.]],

    -- NPCs: 66695
    [439] = [[Located in Valley of the Four Winds. Blocked behind boulders. Spawned by Spider Eggs.]],

    -- NPCs: 66772
    [440] = [[Located in Greenstone Village (Scenario). Random boss, doesn't appear every time.]],

    -- NPCs: 66783
    [441] = [[Located in Clutches of Shek'zeer, Dread Wastes. Appears in a quest phase for The Wrath of Shek'zeer. Akkolon can be a difficult tame as the NPCs that accompany can easily take aggro.]],

    -- NPCs: 66799
    [442] = [[Located in The Jade Forest. Summoned during fight with Rakira.]],

    -- NPCs: 67071
    [443] = [[Located in The Jade Forest. Found in a Horde-only quest phase in the Honeydew Village area. Replaced by Sha-Infested Prowler shortly after.]],

    -- NPCs: 67099
    [444] = [[Located in The Heartland, Valley of the Four Winds. Succula hides in the water, just off the shore in the far north-east corner of The Heartland, only a few feet west of the Gilded Fan.]],

    -- NPCs: 67770
    [445] = [[Located in Diremoor, Isle of Thunder. Can only be found in the "Tear Down This Wall!" scenario, available for both Horde and Alliance.]],

    -- NPCs: 67774
    [446] = [[Located in Assault on Zan'vess (Scenario).]],

    -- NPCs: 67820
    [447] = [[Located in Krasarang River, Krasarang Wilds. Bombyx is a special tracking tame that patrols a small section of Krasarang River. See this video for tracking information.]],

    -- NPCs: 67896, 68583, 68584
    [448] = [[Located in Krasarang Wilds. Phased. Appears after the intro quests for Dominance Offensive or Operation: Shieldwall.]],

    -- NPCs: 68079
    [449] = [[Located in Grand Courtyard, Throne of Thunder (Raid). Part of the Iron Qon fight. Ro'shak is only accessible when ridden by Iron Qon.]],

    -- NPCs: 68080
    [450] = [[Located in Grand Courtyard, Throne of Thunder (Raid). Part of the Iron Qon fight. Quet'zal is only accessible when ridden by Iron Qon.]],

    -- NPCs: 68081
    [451] = [[Located in Grand Courtyard, Throne of Thunder (Raid). Part of the Iron Qon fight. Dam'ren is only accessible when ridden by Iron Qon.]],

    -- NPCs: 68476
    [452] = [[Located in Royal Amphitheater, Throne of Thunder (Raid). You may have trouble ending the fight once Horridon is tamed. One option is to feign death, create a group, then leave the group and wait for the 1 minute timer to boot you out of the instance. You may also be locked out of Horridon's arena for a while (30 or more minutes) until the dungeon soft resets.]],

    -- NPCs: 69099
    [453] = [[Located in The Foot of Lei Shen, Isle of Thunder. Nalak respawns approximately every 15-20 minutes.]],

    -- NPCs: 69148
    [454] = [[Located in Diremoor, Isle of Thunder. Has a troll rider which despawns upon taming.]],

    -- NPCs: 69161
    [455] = [[Located in Isle of Giants. World Boss.]],

    -- NPCs: 69177
    [456] = [[Located in Royal Amphitheater, Throne of Thunder (Raid). Appears during third gate phase of Horridon fight, when Amani trolls descend from the stadium to attack you.]],

    -- NPCs: 69180
    [457] = [[Located in The Beast Pens, Isle of Thunder. Ridden by Zandalari Beastlords.]],

    -- NPCs: 69306
    [458] = [[Located in The Beast Pens, Isle of Thunder. Ridden by Loa Speakers.]],

    -- NPCs: 69349
    [459] = [[Located in Conqueror's Terrace, Isle of Thunder. Flees when attacked. You'll need to freeze it in place.]],

    -- NPCs: 69562
    [460] = [[Located in The Foot of Lei Shen, The Fall of Shan Bu (Isle of Thunder) (Scenario). This version of Nalak appears in the very last stage of the The Fall of Shan Bu, the final scenario in the (one-time) Isle of Thunder intro quest chain. He will activate after you've defeated the troll and mogu NPCs around Shan Bu. He will rapidly fly out of range, so to tame him you should stand to the left of Shan Bu (when facing him from the entrance), on a large disc with a Mogu face, roughly where the mouth is. Start to tame the second he activates.]],

    -- NPCs: 69712
    [461] = [[Located in Roost of Ji-Kun, Throne of Thunder (Raid). The sixth boss of the Throne of Thunder raid.]],

    -- NPCs: 69795
    [462] = [[Located in Diremoor, Isle of Thunder. Spawns sporadically during the constant attacks on Bleak Hollow.]],

    -- NPCs: 69943
    [463] = [[Located in Kun-Lai Summit. Gumi must be reduced to 30% health before it can be tamed. If you're high level it can be very hard to do this without killing it, so you should remove ALL of your gear, kill yourself and take resurrection sickness, then reduce its health slowly with punches.In contrast, if you're low level you may find Gumi hits very hard, so kiting is probably necessary. It runs quickly, so Concussive Shot and Aspect of the Cheetah (and possibly the help of a friend) will be useful.]],

    -- NPCs: 69946
    [464] = [[Located in The Jade Forest. Hutia must be reduced to 30% health before it can be tamed, and it periodically casts an interruptable heal. If you're high level it can be very hard to do this without killing it, so you should remove ALL of your gear, kill yourself and take resurrection sickness, then reduce its health slowly with punches. Unless you have an interrupt that causes no damage you may have to just put up with the heals.In contrast, if you're low level you may find Hutia hits very hard, so kiting (and maybe help from a friend) is probably necessary. Use Concussive Shot to slow it, and interrupt its heals when possible.]],

    -- NPCs: 69947
    [465] = [[Located in Valley of the Four Winds. Degu patrols the cliff-edge at the southern border of the valley, from a point south-east of Stormstout Brewery, east to a point just above Thunder Cleft. It must be reduced to 30% health before it can be tamed. If you're high level it can be very hard to do this without killing it, so you should remove ALL of your gear, kill yourself and take resurrection sickness, then reduce its health slowly with punches.In contrast, if you're low level you may find Degu hits very hard, so kiting is probably necessary. It runs quickly, so Concussive Shot and Aspect of the Cheetah (and possibly the help of a friend) will be useful.]],

    -- NPCs: 70120
    [466] = [[Located in Stormsea Landing, Isle of Thunder. Found in the hold of Beastcaller Tuk'wa's ship.]],

    -- NPCs: 70172
    [467] = [[Located in Townlong Steppes; Dread Wastes. Appears when the giant mantis shrimp fishing event occurs.]],

    -- NPCs: 70327
    [468] = [[Located in Troves of the Thunder King (Scenario). Found in the second area of the Scenario.]],

    -- NPCs: 70448
    [469] = [[Located in Grand Overlook, Throne of Thunder (Raid). Found in the area directly after the first boss. Spawns when you run over patches of grass in the south-east and south-west corners of the platform.]],

    -- NPCs: 70558
    [470] = [[Located in Stormsea Landing, Isle of Thunder. Summoned by Zandalari Beast Handlers during combat.]],

    -- NPCs: 70589
    [471] = [[Located in Forgotten Depths, Throne of Thunder (Raid). This beast appears when you walk over the rumbling patches of dust and mushrooms in the Forgotten Depths.]],

    -- NPCs: 70595
    [472] = [[Located in Blood in the Snow (Scenario).]],

    -- NPCs: 70702
    [473] = [[Located in The Secrets of Ragefire (Scenario). Bug: Taming it will break the rest of the scenario.]],

    -- NPCs: 71297
    [474] = [[Located in Bleak Hollow, Isle of Thunder. Ridden by Zandalari Beastlords, in periodic attacks on Bleak Hollow.]],

    -- NPCs: 71491
    [475] = [[Located in Crypt of Forgotten Kings (Scenario). Found in Heroic mode only. Sits atop the dais behind the first boss, Jin Ironfist.]],

    -- NPCs: 71529
    [476] = [[Located in The Menagerie, Siege of Orgrimmar (Raid). Taming Thok counts as defeating him, so you can complete the rest of the raid.]],

    -- NPCs: 71578
    [477] = [[Located in Chamber of the Paragons, Siege of Orgrimmar (Raid). Will spawn during Paragons fight if Rikkal's Injection spell is not mitigated by tanks.]],

    -- NPCs: 71921, 71923
    [478] = [[Located in The Valley of Strength, Siege of Orgrimmar (Raid). Part of the Kor'kron Dark Shaman boss encounter.]],

    -- NPCs: 72275
    [479] = [[Located in Vale of Eternal Blossoms. This second ID for the Black Bengal Goat was added in patch 5.4. Unlike the other, this one has a Sha aura (lost upon taming).]],

    -- NPCs: 72329
    [480] = [[Located in The Boneslag, Frostfire Ridge. Has fire effects over body which are lost upon taming.]],

    -- NPCs: 72452
    [481] = [[Located in The Valley of Strength, Siege of Orgrimmar (Raid).]],

    -- NPCs: 72775
    [482] = [[Located in Croaking Hollow, Timeless Isle. To increase your chances of Bufo spawning, keeping killing all the other frogs in Croaking Hollow.]],

    -- NPCs: 72876
    [483] = [[Located in Timeless Isle. These beasts can be seen flying over the centre of the isle.]],

    -- NPCs: 72927
    [484] = [[Located in Chamber of the Paragons, Siege of Orgrimmar (Raid).]],

    -- NPCs: 72991
    [485] = [[Located in Icewind Drifts, Frostfire Ridge. Friendly to Horde.]],

    -- NPCs: 73158
    [486] = [[Located in Timeless Isle. To increase your chances of the Emerald Gander spawning, kill Brilliant Windfeathers in the areas surrounding the Celestial Court.]],

    -- NPCs: 73160
    [487] = [[Located in Timeless Isle. To increase your chances of the Ironfur Steelhorn spawning, clear out the packs of other Ironfur yaks from the areas surrounding the Celestial Court.]],

    -- NPCs: 73163
    [488] = [[Located in Timeless Isle. Spawns rarely in place of Imperial Pythons in the lower areas of the island.]],

    -- NPCs: 73166
    [489] = [[Located in Timeless Isle. To increase your chances of the Monstrous Spineclaw spawning, keep killing all the other Spineclaws that can be found along the coastline of the southern half of the isle.]],

    -- NPCs: 73167
    [490] = [[Located in Timeless Isle. Huolon spawns every 30-60 minutes. It follows a circuit that passes over the Blazing Way and can be intercepted close to the north end of the second bridge.]],

    -- NPCs: 73185
    [491] = [[Located in The Menagerie, Siege of Orgrimmar (Raid). Trash mob before the Thok encounter.]],

    -- NPCs: 73223
    [492] = [[Located in The Menagerie, Siege of Orgrimmar (Raid). A couple fly freely about the chamber that houses Thok the Bloodthirsty.]],

    -- NPCs: 73805
    [493] = [[Located in The Cursed Woods, Shadowmoon Valley - Draenor. Green aura lost after taming.]],

    -- NPCs: 73960, 81084
    [494] = [[Located in Embaari Village, Shadowmoon Valley - Draenor. Friendly to Alliance.]],

    -- NPCs: 74446
    [495] = [[Located in The Pool of Ask'ar, Blackfathom Deeps (Dungeon). Changed appearance in 6.0. Used to have ancient sea turtle look.]],

    -- NPCs: 74508
    [496] = [[Located in The Forgotten Pool, Blackfathom Deeps (Dungeon). Can only be tamed once released from captivity. It will flee to an underwater cavern, below the entrance to the Sanctum.]],

    -- NPCs: 74509
    [497] = [[Located in The Forgotten Pool, Blackfathom Deeps (Dungeon). Different to the critter of the same name in the same instance. Reached underwater, in the cavern below the entrance to the Sanctum.]],

    -- NPCs: 74583, 74584
    [498] = [[Located in Razorfen Downs (Dungeon).]],

    -- NPCs: 74620, 75247, 75466, 75467
    [499] = [[Located in Razorfen Kraul (Dungeon).]],

    -- NPCs: 74722
    [500] = [[Located in The Pool of Ask'ar, Blackfathom Deeps (Dungeon).]],

    -- NPCs: 75113
    [501] = [[Located in Darksting Cave & The Forgotten Caves, Gorgrond.]],

    -- NPCs: 75280
    [502] = [[Located in Darktide Roost, Shadowmoon Valley - Draenor. Flying]],

    -- NPCs: 75588, 75590
    [503] = [[Located in Razorfen Kraul (Dungeon). Inhabits the caverns to the far west, on the way to Charlga Razorflank.]],

    -- NPCs: 76143
    [504] = [[Located in Skyreach (Dungeon). Taming Rukhran will block progress in this dungeon.]],

    -- NPCs: 76181
    [505] = [[Located in Dragonspire Hall, Upper Blackrock Spire (Dungeon).]],

    -- NPCs: 76253
    [506] = [[Located in Skyreach (Dungeon).]],

    -- NPCs: 76473, 76517
    [507] = [[Located in Darksting Cave, Gorgrond.]],

    -- NPCs: 76624
    [508] = [[Located in Thunder Pass, Frostfire Ridge. Spawns during the Horde-only quest, The Battle of Thunder Pass.]],

    -- NPCs: 76874, 76946
    [509] = [[Located in The Breaking Grounds, Blackrock Foundry (Raid). Part of the Beastlord Darmac fight.]],

    -- NPCs: 76891
    [510] = [[Located in Frostfire Ridge. In a cave south-west of Bladespire Fortress.]],

    -- NPCs: 76945
    [511] = [[Located in Blackrock Foundry (Raid). Ironcrusher is part of the Beastlord Darmac encounter and cannot be attacked until Darmac activates it. Engage Darmac while he's closest to Ironcrusher in order to ensure it's activated first.]],

    -- NPCs: 76954
    [512] = [[Located in The Pool of Ask'ar, Blackfathom Deeps (Dungeon). His look is the same as the original Ghamoo-Ra, which has changed appearances in 6.0.]],

    -- NPCs: 77093
    [513] = [[Located in Gorgrond. Roardan flies in a circuit around Heart of the Fen and Mistcreep Mire, pausing occasionally to land on a rock or mushroom. If you find a known landing spot to wait at, you can tame as soon as Roardan lands.]],

    -- NPCs: 77122
    [514] = [[Located in Bones of Agurak, Frostfire Ridge. Ridden by Thunderlord orcs. Cannot be aggroed or killed.]],

    -- NPCs: 77314
    [515] = [[Located in Swamplight Cave, Shadowmoon Valley - Draenor.]],

    -- NPCs: 77441
    [516] = [[Located in Deathweb Hollow, Talador. Spawn from Deathweb Cocoons.]],

    -- NPCs: 77442
    [517] = [[Located in Deathweb Hollow, Talador. Spawns from Deathweb Cocoons.]],

    -- NPCs: 77443
    [518] = [[Located in Deathweb Hollow, Talador. Trapped in spider webs.]],

    -- NPCs: 77519
    [519] = [[Located in The Cracking Plains, Frostfire Ridge. The hunting party on its back leaps off and attacks as you tame.]],

    -- NPCs: 77634
    [520] = [[Located in Deathweb Hollow, Talador. Squish a lot of spider critters underfoot to summon this mob.]],

    -- NPCs: 77845
    [521] = [[Located in Nethergarde Keep, Blasted Lands. Phased area of Blasted lands for Warlords of Draenor.]],

    -- NPCs: 77886
    [522] = [[Located in Frost Den, Frostfire Ridge. Friendly to Horde. Attacking the Mother of Wolves.]],

    -- NPCs: 77927
    [523] = [[Located in The Furnace, Upper Blackrock Spire (Dungeon). The only remaining core hound to use the old orange-red model.]],

    -- NPCs: 77957
    [524] = [[Located in Deathweb Hollow, Talador. Spawn when you walk over eggs.]],

    -- NPCs: 78291, 78864, 78872
    [525] = [[Located in Deathweb Hollow, Talador. In the back of the cave.]],

    -- NPCs: 78364
    [526] = [[Located in Rooter's Pass, Gorgrond. Lieutenant O'rok dismounts and attacks when you tame. There's also a chance he'll jump back on again!]],

    -- NPCs: 78432
    [527] = [[Located in West of Tomb of Lights, Talador. The ones patrolling with the Legion Assailants are not controlled and are tameable.]],

    -- NPCs: 78457
    [528] = [[Located in The Burning Front, Talador. Spawned by an event and may phase out when complete.]],

    -- NPCs: 78489
    [529] = [[Located in Dreadmaul Outpost, Blasted Lands. Phased area of Blasted lands for Warlords of Draenor.]],

    -- NPCs: 78528
    [530] = [[Located in Wor'gol (quest phase), Frostfire Ridge. Appears during "Save Wolf Home" quest phase.]],

    -- NPCs: 78550
    [531] = [[Located in Darktide Roost, Shadowmoon Valley - Draenor. Ridden by goblins. Have lights on their heads which vanish upon taming.]],

    -- NPCs: 78918
    [532] = [[Located in Icewind Drifts, Frostfire Ridge. Travels in a pack with an Icehoof Bull and Icehoof Cow.]],

    -- NPCs: 78919
    [533] = [[Located in Icewind Drifts, Frostfire Ridge. Travel in a pack with an Icehoof Bull and Icehoof Calves.]],

    -- NPCs: 78920
    [534] = [[Located in Icewind Drifts, Frostfire Ridge. Travel in a pack with an Icehoof Cow and Icehoof Calves.]],

    -- NPCs: 79061
    [535] = [[Located in The Burial Fields, Shadowmoon Valley - Draenor. Spectral effect lost upon taming.]],

    -- NPCs: 79148
    [536] = [[Located in The Burial Fields, Shadowmoon Valley - Draenor. The Phantom Pearltusk with this ID has a purple ghostly effect that is lost upon taming. It wanders the Burial Fields.]],

    -- NPCs: 79149
    [537] = [[Located in The Burial Fields, Shadowmoon Valley - Draenor. Has a purple ghostly effect that is lost upon taming.]],

    -- NPCs: 79285, 82037
    [538] = [[Located in Shadowmoon Valley - Draenor. Phases out once your garrison is created (Alliance). Never visible to Horde.]],

    -- NPCs: 79483
    [539] = [[Located in Icewind Drifts, Nagrand - Draenor. Appears during the Ring of Trials stage: Ring of Trials: Crushmaul. You must be on this quest, or perhaps quest synced with someone on the quest, in order to see the NPCs.]],

    -- NPCs: 79524
    [540] = [[Located in Vile Cavern, Shadowmoon Valley - Draenor. Hypnocroak's orange eye effect is lost upon taming.]],

    -- NPCs: 79755
    [541] = [[Located in Telaar, Nagrand - Draenor. Not always present. You may wait a while for spawns in some phases.]],

    -- NPCs: 80034
    [542] = [[Located in The Cracking Plains, Frostfire Ridge. Unlike the regular version, this Icewing Rylak spawns infrequently near the lair of an Engorged Ice Lurker. It will be quickly devoured by the worm if you don't aggro it first.]],

    -- NPCs: 80098
    [543] = [[Located in Blackrock Stadium, Upper Blackrock Spire (Dungeon). Part of Tharbek encounter.]],

    -- NPCs: 80174
    [544] = [[Located in The Burning Glacier, Frostfire Ridge. Loses saddle pack on tame.]],

    -- NPCs: 80227
    [545] = [[Located in Frostwall, Frostfire Ridge. Phases out once your garrison is completed, so you would need to reach level 92 first. Never phased to Alliance.]],

    -- NPCs: 80263
    [546] = [[Located in Terror's Cave, Nagrand - Draenor.]],

    -- NPCs: 80420
    [547] = [[Located in Frostwall, Frostfire Ridge. Carried randomly by Frostfire Gronnlings in the pre-Garrison phase of Frostwall. Can be tamed right out of their hands!]],

    -- NPCs: 80715, 85856, 86780
    [548] = [[Located in Tanaan Jungle (Intro Phase).]],

    -- NPCs: 80779
    [549] = [[Located in Frostfire Ridge. Phases out once your Garrison is completed (Horde).]],

    -- NPCs: 80997
    [550] = [[Located in Shadowmoon Valley - Draenor. Friendly to Alliance. It can be found by the west entrance to Embaari Village (with a Trader), and at two settlements in Arbor Glen.]],

    -- NPCs: 81001
    [551] = [[Located in Frostboar Drifts, Frostfire Ridge. Nok-Karosh sleeps amid a pack of Garn Nighthowl wolves.]],

    -- NPCs: 81083
    [552] = [[Located in Embaari Village, Shadowmoon Valley - Draenor. Friendly to Alliance. Found in a pen with some Elekk Calves, to the west of the main village.]],

    -- NPCs: 81306, 81307
    [553] = [[Located in Fiona's Caravan, Shadowmoon Valley - Draenor. Friendly to Alliance.]],

    -- NPCs: 81983, 84399
    [554] = [[Located in The Everbloom (Dungeon).]],

    -- NPCs: 82050
    [555] = [[Located in The Writhing Mire, cave, Spires of Arak. Spawned by The Egg of Varasha event.]],

    -- NPCs: 82192
    [556] = [[Located in The Shimmer Mor, Shadowmoon Valley - Draenor. Has spectral effect which is lost upon taming.]],

    -- NPCs: 82258
    [557] = [[Located in The Burial Fields, Shadowmoon Valley - Draenor. The Phantom Pearltusk with this ID has a white ghostly effect that is lost upon taming. It can be found just south of the Burial Fields.]],

    -- NPCs: 82307
    [558] = [[Located in Shadowmoon Valley - Draenor. Lacks the idle sounds of many wolves of this type.]],

    -- NPCs: 82308
    [559] = [[New Mag'har Orc hunters begin with this pet. It is also located in Shadowmoon Valley - Draenor. This beast is unusual in that it is the starter pet for Mag'har Orcs as well as a wild beast that can be tamed by any hunter. No other racial starter pet has an ID that is also available for general taming.]],

    -- NPCs: 82310
    [560] = [[Located in Ashran (Battleground).]],

    -- NPCs: 82356
    [561] = [[Located in Deathweb Hollow, Talador. Spawn during combat with Deathweb Crawler in the back of the cave.]],

    -- NPCs: 82513
    [562] = [[Located in Plains of Serenity, Shadowmoon Valley - Draenor. Void aura lost upon taming.]],

    -- NPCs: 82530
    [563] = [[Located in Tanaan Jungle (Warlords of Draenor Intro Phase).]],

    -- NPCs: 82617
    [564] = [[Located in Stonefury Cliffs, Frostfire Ridge. Inside a large cave.]],

    -- NPCs: 82778
    [565] = [[Located in Stonecrag Gorge, Nagrand - Draenor. On an overlook at south end of Gorge. Glowing eyes and smoke effects lost upon taming.]],

    -- NPCs: 83389
    [566] = [[Located in Iron Docks (Dungeon and Non-Instanced), Gorgrond; Iron Docks (Dungeon).]],

    -- NPCs: 83444
    [567] = [[Located in Murkbog, Spires of Arak. Electric effect lost upon taming.]],

    -- NPCs: 83455
    [568] = [[Located in Swamplight Trail, Shadowmoon Valley - Draenor. Appear mostly dead, with tentacular growths. Effect is lost upon taming.]],

    -- NPCs: 83553
    [569] = [[Located in Shadowmoon Valley - Draenor. Appears to the west of the Path of the Light.]],

    -- NPCs: 83681
    [570] = [[Located in Gorian Falls, Ashran (Battleground). Not found outside the battleground instance.]],

    -- NPCs: 83719, 83840, 85753, 85756
    [571] = [[Located in Ashran (Battleground). Not found outside the battleground instance.]],

    -- NPCs: 83720
    [572] = [[Located in Ashran (Battleground). Found near the Amphitheater of Annihiliation. Not found outside the battleground instance.]],

    -- NPCs: 83804
    [573] = [[Located in Brute's Rise, Ashran (Battleground). Not found outside the battleground instance.]],

    -- NPCs: 83815
    [574] = [[Located in Archmage Overwatch, Ashran (Battleground). Friendly to Alliance.]],

    -- NPCs: 83841
    [575] = [[Located in Ashran (Battleground). Found on the beach roughly north of Brute's Rise and east of Warspear. It doesn't appear outside the battleground instance.]],

    -- NPCs: 83976
    [576] = [[Located in Skettis, Spires of Arak. Ridden by Skyreach Dawnbreaker.]],

    -- NPCs: 83982
    [577] = [[Located in Skettis, Spires of Arak. Ridden by Skyreach Dawntalon.]],

    -- NPCs: 83984
    [578] = [[Located in Skettis, Spires of Arak. Ridden by Skyreach Tempest-Keeper.]],

    -- NPCs: 84097, 84102
    [579] = [[Located in Ashmaul Burial Grounds, Ashran (Battleground). Not found outside the battleground instance.]],

    -- NPCs: 84190
    [580] = [[Located in Ashmaul Burial Grounds, Ashran (Battleground). On walls inside buildings. Not found outside the battleground instance.]],

    -- NPCs: 84644
    [581] = [[Located in Molten Quarry, Ashran (Battleground). Not found outside the battleground instance.]],

    -- NPCs: 84793
    [582] = [[Located in Cracking Plains, Frostfire Ridge. Frozen, attacks when freed.]],

    -- NPCs: 84798, 84799
    [583] = [[Located in The Cracking Plains, Frostfire Ridge. Frozen. Attacks when freed.]],

    -- NPCs: 84912
    [584] = [[Located in Spires of Arak. Located east of Murkbog, west of Sethekk Hollow. She is spawned by killing the Stingtail wasps around her hive. If you find her wasps phase out (which happens in later quest phases) you can see and kill them from the periphery and tame her when she spawns.]],

    -- NPCs: 84919
    [585] = [[Located in Forgotten Shore, Shadowmoon Valley - Draenor. Frozen in bubbles. Aggressive once released.]],

    -- NPCs: 84955
    [586] = [[Located in South Sea, Spires of Arak. Swamp area south-west of Pinchwhistle Point. Coated in mushrooms which vanish upon taming.]],

    -- NPCs: 85453
    [587] = [[Located in Camp Thornscar, Spires of Arak. Ridden by Shattered Hand Flayer]],

    -- NPCs: 86134
    [588] = [[Located in Sulfurscale Cave, Gorgrond.]],

    -- NPCs: 86286
    [589] = [[Located in The Thorn Pits, Spires of Arak. Some ridden by Shattered Hand Pit-Masters.]],

    -- NPCs: 86455
    [590] = [[Located in The Thorn Pits, Spires of Arak. The Brood Mother is located in a tunnel that has its entrance in the thorny areas just to the south of Bladefist Hold. Head south-west of the outside fighting area.]],

    -- NPCs: 86507
    [591] = [[Located in Deathweb Hollow, Talador. Spawn during combat with Taladorantula.]],

    -- NPCs: 87425
    [592] = [[Located in Umbrafen Point, Shadowmoon Valley - Draenor. Void aura lost upon taming.]],

    -- NPCs: 87699
    [593] = [[Located in Shadowmoon Valley - Draenor. Wanders the wide plains to the north-west, west, and south-west of the Temple of Karabor. Only the dark-coloured ones seem to makes sounds when clicked.]],

    -- NPCs: 88075, 88076
    [594] = [[Located in Ashran. Can be found outside battleground area. Often found around the beaches of Stormshield and Warspear.]],

    -- NPCs: 88150
    [595] = [[Located in Deeproot, Gorgrond. Summoned by the world boss Tarlna the Ageless.]],

    -- NPCs: 88208
    [596] = [[Located in Gorian Proving Grounds, Nagrand - Draenor. When present, it's just to the east, inside the entrance of the Proving Grounds.]],

    -- NPCs: 88523, 88524
    [597] = [[Located in Gorian Proving Grounds, Nagrand - Draenor. Released from cages using Ogre Cage Key, taken from Bloodring Slavers. You, or someone with you, must have the once-only quest, Assault on the Gorian Proving Grounds to open a cage.]],

    -- NPCs: 88525
    [598] = [[Located in The Ring of Blood, Nagrand - Draenor. Released from cages using Ogre Cage Key, taken from Bloodring Slavers. You, or someone with you, must have the once-only quest, Assault on the Gorian Proving Grounds to open a cage.]],

    -- NPCs: 88708
    [599] = [[Located in Shadowmoon Valley - Draenor. Gara is not immediately tameable, but involves a complex quest, starting with a different version of the NPC. A detailed walk-through, and video, of the quest can be found here.]],

    -- NPCs: 88710
    [600] = [[Located in Shadowmoon Valley - Draenor. This wolf is intended as a replacement for hunters who have tamed and then released / lost Gara. She isn't tameable by anyone else. Found only when in the shadow realm, north-west of Karabor.]],

    -- NPCs: 88922
    [601] = [[Located in Tanaan Channel / Coast, Tanaan Jungle. Phased out in 6.2 phase, but can be seen and pulled out of phase along the north-west shore of the zone.]],

    -- NPCs: 89244
    [602] = [[Located in Frostwall & Lunarfall (Garrisons), Frostfire Ridge; Shadowmoon Valley - Draenor. The Ironhoof Trampler appears in the final stage of an Iron Horde garrison invasion, ridden by the final boss. It is tameable but at high level you may have difficulty taking aggro from the other NPCs without killing it.]],

    -- NPCs: 89689
    [603] = [[Located in Hellfire Citadel (Non-Instanced), Tanaan Jungle.]],

    -- NPCs: 89837
    [604] = [[Located in Southwind Cliffs, Frostfire Ridge. Groups of these spawn if you run over the Frostburst Eggs located near Hivelord Ik'rix.]],

    -- NPCs: 90124
    [605] = [[Located in Ironhold Harbor, Tanaan Jungle. Grom'kar Leadslinger rider will dismount once beast is tamed.]],

    -- NPCs: 90517
    [606] = [[Located in Tanaan Jungle. Initially an aberration, not a beast. Made tameable by applying a Vial of Fel Cleansing. The vial can be looted from Fel Rangari Anaara along the southern shore of Tanaan Jungle.]],

    -- NPCs: 90782
    [607] = [[Located in Ruins of Kra'nak, Tanaan Jungle. Rasthe remains transparent after taming, but loses its other spectral and aura effects.]],

    -- NPCs: 90816
    [608] = [[Located in Ruins of Isildien, Feralas. Appears on the western side of the area. Spawns after using /pat on an indeterminate number of Frayfeather hippogryphs.]],

    -- NPCs: 91539, 93952
    [609] = [[Located in Hellfire Citadel (Raid).]],

    -- NPCs: 91916
    [610] = [[Located in Amberlight Cavern, Ashran (Battleground). Not found outside the battleground instance.]],

    -- NPCs: 92117
    [611] = [[Located in Whispering Bluffs, Val'sharah. This bird is summoned by speaking to Lorel Sagefeather, but you can only do so if you haven't completed her quest event, Gorebeak, previously.]],

    -- NPCs: 92599, 92600
    [612] = [[Located in Stormheim. Part of "Worg Pack" vignette above cliffs, west of Aggramar's Vault.]],

    -- NPCs: 92735
    [613] = [[Located in Paledoom's Overlook, Azsuna. In a cave on the eastern side.]],

    -- NPCs: 92937
    [614] = [[Located in Ruins of Kra'nak, Tanaan Jungle. Summoned by Rasthe during combat. It remains transparent after taming, but loses its other spectral and aura effects.]],

    -- NPCs: 92956
    [615] = [[Located in Amberfall Mesa, Stormheim. Friendly to Alliance.]],

    -- NPCs: 93058
    [616] = [[Located in Scuttler's Coast & The Cave of Betrayal, Tanaan Jungle.]],

    -- NPCs: 94708, 94718, 108702
    [617] = [[Located in Shield's Rest (BM Artifact Instance), Stormheim.]],

    -- NPCs: 95043
    [618] = [[Located in Highmountain. Quest phase, "The Drogbar" / "Grasp of the Underking". Carried by some Bitestone Raiders.]],

    -- NPCs: 95328
    [619] = [[Located in Tanaan Jungle. Flies circuits around Hellfire Citadel. They are very hard to engage and you're better taming one from inside the raid.]],

    -- NPCs: 95615
    [620] = [[Located in Iron Docks (Non-Instanced 6.2 Quest Phase), Gorgrond.]],

    -- NPCs: 95762
    [621] = [[Located in Pinerock Basin, Highmountain. Can't be attacked unless activated by the quest Scout it Out. You either need to be on that quest, or get the help of someone who is, in order to interact with it. Once summoned you might have to fight your NPC assistants for aggro. Using a freezing trap may stop them attacking Irewing, and hunters have also been successful by landing on a tree that the NPCs can't reach.]],

    -- NPCs: 96608, 96611
    [622] = [[Located in Fields of the Eternal Hunt, Halls of Valor (Dungeon).]],

    -- NPCs: 97030
    [623] = [[Located in Leygazer's Den, Val'sharah. Cave by sea, SW of Black Rook Hold.]],

    -- NPCs: 97119
    [624] = [[Located in The Naglfar, Maw of Souls (Dungeon). Found in the ship after the first boss.]],

    -- NPCs: 97124
    [625] = [[Located in Nastrondir, Stormheim. Summoned for the quest Rigging the Wager. He can be tamed by someone other than the summoner.]],

    -- NPCs: 97163
    [626] = [[Located in Maw of Souls (Dungeon).]],

    -- NPCs: 97220
    [627] = [[Located in Pinerock Basin, Highmountain. In a cave just south-east of Windripper Peak.]],

    -- NPCs: 97454
    [628] = [[Located in Pinerock Basin, Highmountain. In a cave.]],

    -- NPCs: 97504
    [629] = [[Located in Val'sharah. Wraithtalon circles a small ridge above a cave, east of Shala'nir. Its corrupted effects are lost upon taming.]],

    -- NPCs: 97677
    [630] = [[Located in Tomb of the Penitent, Vault of the Wardens (Dungeon).]],

    -- NPCs: 97928
    [631] = [[Located in Shipwreck Cove, Highmountain. Ridden by Crab-Rider Grmlrml.]],

    -- NPCs: 97991
    [632] = [[Located in Helmouth Shallows (Survival Artifact Quest Instance), Stormheim.]],

    -- NPCs: 98759
    [633] = [[Located in Nal'tira's Lair, The Arcway (Dungeon). Vicious Manafangs with this ID are found with Nal'tira before combat. Taming this spider may prevent the boss, Nal'tira, from descending, so the fight cannot be completed.]],

    -- NPCs: 99598
    [634] = [[Located in Llothien, Azsuna. Cave by stream, near Llothien Prowlers.]],

    -- NPCs: 99636
    [635] = [[Located in Highmountain. Located in mountains in the south-east of the zone. The grey version of this goat doesn't make sounds when clicked.]],

    -- NPCs: 99675
    [636] = [[Located in The Demon Ward, Vault of the Wardens (Dungeon). In the second set of prisoners released in the Inquisitor Tormentorum fight.]],

    -- NPCs: 100328
    [637] = [[Located in Screeching Crag, Highmountain. Summoned during Hexweaver Akara fight.]],

    -- NPCs: 100838
    [638] = [[Located in Nastrondir, Stormheim. Retains the lightning effect on its horns after taming.]],

    -- NPCs: 100890
    [639] = [[Located in Jandvik, Suramar. Must be tamed before you complete the quest, Removing Obstacles in Jandvik. After that point the NPCs can no longer be attacked.]],

    -- NPCs: 101110
    [640] = [[Located in The Drift, Suramar. Can be reached via Oculeth's teleporters when attempting to go to the Library.]],

    -- NPCs: 101581
    [641] = [[Located in Tel'anor, Suramar. Found in a cave just north of Tel'anor. The entrance is just above in the "N" in Tel'anor on the zone map.]],

    -- NPCs: 101624
    [642] = [[Located in The Vile Reef, Northern Stranglethorn. Inside the hold of a shipwreck, just off the coast from Grom'gol Base Camp.]],

    -- NPCs: 102106
    [643] = [[Located in Underslog, Highmountain. In the Echoing Halls. Only present when world quest, "Prisoners of Greystone" is active.]],

    -- NPCs: 102263
    [644] = [[Located in The Nighthold (Raid). Taming Skorpyron may cause the room to remain locked.]],

    -- NPCs: 102361
    [645] = [[Located in Fields of An'she, Highmountain. Only present when world quest, Boilback Plague is active.]],

    -- NPCs: 102385
    [646] = [[Located in Fields of An'she, Highmountain. Present when world quest, Boilback Plague is active.]],

    -- NPCs: 102918
    [647] = [[Located in Earthmother's Bounty, Highmountain. Spawns when collecting "Jumping" vegetables during World Quest "Critical Crops".]],

    -- NPCs: 103045
    [648] = [[Located in The Hold, Maw of Souls (Dungeon). Only found when the world quest Maw of Souls: From Hell's Mouth is active.]],

    -- NPCs: 103217
    [649] = [[Located in The Nighthold (Raid). Spawns during Skorpyron fight.]],

    -- NPCs: 103514
    [650] = [[Located in Stormheim; Suramar. Stormheim southern coast, west of Blackhawk's Bulwark. A cave under a waterfall in Tel'anor in Suramar.]],

    -- NPCs: 103549
    [651] = [[Located in Suramar. Two other NPCs with the same name are not tameable.]],

    -- NPCs: 103563
    [652] = [[Located in Stormsong Valley. Spawns when you attack an Orc Raider at Brennadam Square. Alliance hunters can tame it the usual way, but it is friendly to Horde and can only be tamed by Horde hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode, which allows them to attack Horde NPCs in the area.]],

    -- NPCs: 103605
    [653] = [[Located in Maw of Souls (Dungeon). Only present on days when the world quest Maw of Souls: Return of the Beas is active.]],

    -- NPCs: 103681
    [654] = [[Located in Highmountain. Spawns at the site of the "Slab of Bacon" world quest if it's in Highmountain.]],

    -- NPCs: 103785
    [655] = [[Located in Val'sharah. Spawns at the site of the "Slab of Bacon" world quest if it's in Val'sharah.]],

    -- NPCs: 103786
    [656] = [[Located in Stormheim. Spawns at the site of the "Slab of Bacon" world quest if it's in Stormheim.]],

    -- NPCs: 103787
    [657] = [[Located in Suramar. Baconlisk is only present when the "Slab of Bacon" world quest is up in Suramar. The location of this NPC can vary, so check the quest marker on the zone map for its current position.]],

    -- NPCs: 103808
    [658] = [[Located in Moonwhisper Gulch, Suramar. In a cave.]],

    -- NPCs: 104310
    [659] = [[Located in Windripper Peak, Highmountain. Only present during world quest, "Retake the Skyhorn".]],

    -- NPCs: 104481
    [660] = [[Located in Ala'washte's Nest, Highmountain. Only present on days when the world quest DANGER: Ala'washte is active.]],

    -- NPCs: 104585
    [661] = [[Located in Clackbrine Coast, Highmountain. Present during the world quest, "Crabby Crunchies".]],

    -- NPCs: 104895
    [662] = [[Located in The Broken Isles. Random spawn while mining felslate in any zone. May also appear outside nodes, in large numbers, when the mining World Quest is active. You may need someone with mining to tell you when it is.]],

    -- NPCs: 105756
    [663] = [[Located in Falanaar Tunnels, Suramar. Found extensively in the non-instanced version of the Falanaar Tunnels.]],

    -- NPCs: 105876
    [664] = [[Located in Nal'tira's Lair, The Arcway (Dungeon). Taming this spider may prevent the boss, Nal'tira, from descending, so the fight cannot be completed.]],

    -- NPCs: 105884
    [665] = [[Located in Falanaar Tunnels, Suramar.]],

    -- NPCs: 106311
    [666] = [[Located in Mulgore, The Emerald Nightmare (Raid). This spider spawns as an add during the roc phase of the Elerethe Renferal fight, when you step on the web bridges.]],

    -- NPCs: 106665
    [667] = [[Located in Leyhollow, Azsuna. Spawns during the world quest Leyhollow Infestation, after you complete the first stage.]],

    -- NPCs: 107398
    [668] = [[Located in Moonshade Sanctum, Suramar. Spawns during the quest Breaking the Seal.]],

    -- NPCs: 107431
    [669] = [[Located in Chill Breeze Valley, Dun Morogh. On the south side of Crushcog's Arsenal. We're not yet sure of the minimum level required to tame this one!]],

    -- NPCs: 107440
    [670] = [[Located in Felsurge Nest, Azsuna. Often stealthed until you approach an egg.]],

    -- NPCs: 107459
    [671] = [[Located in Mulgore, The Emerald Nightmare (Raid). Spawns during the spider phase of the Elerethe Renferal fight, when she ascends into the web and casts "Feeding Time".]],

    -- NPCs: 107477
    [672] = [[Located in The Secret Lab, Azshara. Find the Intern's Journal and follow the steps.]],

    -- NPCs: 107487
    [673] = [[Located in Stormtorn Foothills, Stormheim. Appears just west of the Storm's Reach isthmus.]],

    -- NPCs: 107595
    [674] = [[Located in North of Bloodvenom Post, Felwood. Spawns during the day. A different version with a diseased, black appearance spawns at night.]],

    -- NPCs: 107596
    [675] = [[Located in North of Bloodvenom Post, Felwood. Spawns at night. A different version with a grey appearance spawns during the day.]],

    -- NPCs: 107676
    [676] = [[Located in Siege of Orgrimmar (Raid). Combine a Pile of Juggernaut Parts, Blackfuse's Power Core and a Bucket of Blue Paint to create this NPC. Not in the Raid Finder version.]],

    -- NPCs: 107677
    [677] = [[Located in Siege of Orgrimmar (Raid). Combine a Pile of Juggernaut Parts, Blackfuse's Power Core and a Bucket of Green Paint to create this NPC. The paint is hidden in the Shadow Cleft in the raid. Not in the Raid Finder version.]],

    -- NPCs: 107678
    [678] = [[Located in Siege of Orgrimmar (Raid). Combine a Pile of Juggernaut Parts, Blackfuse's Power Core and a Bucket of Teal Paint to create this NPC. Not in the Raid Finder version.]],

    -- NPCs: 107679
    [679] = [[Located in Siege of Orgrimmar (Raid). Combine a Pile of Juggernaut Parts, Blackfuse's Power Core and a Bucket of Grey Paint to create this NPC. The paint is hidden in the tunnel between the Paragons and Garrosh. Not in the Raid Finder version.]],

    -- NPCs: 107778
    [680] = [[Located in Dalaran (Broken Isles). Appears in large numbers when an occasionally-spawning Rotten Egg is destroyed in the Underbelly.]],

    -- NPCs: 107836
    [681] = [[Located in Fungal Rock, Un'Goro Crater. Found deep in the Fungal Rock cave, at the northern end. Her health must be severely reduced (perhaps 25% or lower) before she can be tamed. She hits very hard and can badly hurt you, even at level 60, so you will have to kite her. She makes some very subtle mechanical sounds when clicked.]],

    -- NPCs: 107951
    [682] = [[Located in Highmountain. A tracking tame that requires you to follow Small Oil Puddles and then use a flare to detect the creature. Circles around the Mucksnout Den area, passing through the Field of An'she.]],

    -- NPCs: 108088
    [683] = [[Located in Azsuna. A tracking tame that requires you to follow Small Oil Puddles and then use a flare to detect the creature. Follows a large loop in north-east Azsuna.]],

    -- NPCs: 108106
    [684] = [[Located in The Dormitory, Gnomeregan (Dungeon). A prismatic card reveals a hidden room. He'll need a shocking kick before he becomes tameable. We're not yet sure of the minimum level required to tame this one!]],

    -- NPCs: 108181
    [685] = [[Located in Ironhold Harbor, Tanaan Jungle. This clefthoof occasionally spawns in the raised area just to the west of the Harbor entrance. Despite not being flagged as a rare, it isn't there all the time.]],

    -- NPCs: 108359, 108360, 108361
    [686] = [[Located in The Nighthold (Raid). Occurs in packs of trash mobs before Skorpyron.]],

    -- NPCs: 108542
    [687] = [[Located in Mulgore, The Emerald Nightmare (Raid). Spawns if you walk over spider eggs in the webbed section of the area.]],

    -- NPCs: 109025
    [688] = [[Located in Twilight Vineyards, Suramar. Has a different glow to other purple fireflies.]],

    -- NPCs: 109320
    [689] = [[Located in Suramar. Guards a Starlight Rose Cluster below the south-west end of the bridge, north of the Felsoul Hold pit. Initially hiding in the branches of a tree, it leaps down when you approach.]],

    -- NPCs: 109594
    [690] = [[Located in Azsuna. Stormfeather is located on a ridge above a cave, north of Oceanus Cove. It's not up every day and may only be present when the world quest DANGER: Stormfeather is up.]],

    -- NPCs: 109702
    [691] = [[Located in Temple of a Thousand Lights, Azsuna. Deepclaw is only present when its associated world quest, DANGER: Deepclaw is active. This seems to happen very rarely, perhaps only every few months!]],

    -- NPCs: 110351
    [692] = [[Located in Felsurge Nest, Azsuna. Summoned during Broodmother Lizax fight.]],

    -- NPCs: 110376
    [693] = [[Located in Falanaar Tunnels, Withered Training Instance.]],

    -- NPCs: 110562
    [694] = [[Located in Xalethar's Lair, Val'sharah. Cave by Smolderhide Thicket.]],

    -- NPCs: 110966
    [695] = [[Located in Nal'tira's Lair, The Arcway (Dungeon). Vicious Manafangs with this ID are summoned during combat with Nal'tira.]],

    -- NPCs: 111273
    [696] = [[Located in Suramar. River north of Shal'aran. Infrequent spawn among common Lowland Hardshells.]],

    -- NPCs: 111463
    [697] = [[Located in Stormheim. Cliffs south-east of Halls of Valor. From the Halls of Valor entrance, jump to the grassy cliffs area to the west, then climb up and around the back. Jump down to the lower cliff areas to find him.]],

    -- NPCs: 111633, 111643, 111647
    [698] = [[Located in Eye of Azshara (Non-Instanced).]],

    -- NPCs: 111721
    [699] = [[Located in Mulgore, The Emerald Nightmare (Raid). Spawns on the adjacent small platform during the roc phase of the Elerethe Renferal fight, after the boss changes into her roc form and flies to the far platform.]],

    -- NPCs: 111820
    [700] = [[Located in Engineering Labs, Gnomeregan (Dungeon). Friender is initially asleep and unattackable. Solve the light-button puzzles on three walls to activate him. Use all your defenses, as he hits very hard!]],

    -- NPCs: 111933
    [701] = [[Located in Mulgore, The Emerald Nightmare (Raid). Venomous Spiderlings with this ID may be found as trash mobs in the webbed section of the area.]],

    -- NPCs: 111980
    [702] = [[Located in Mulgore, The Emerald Nightmare (Raid).]],

    -- NPCs: 112039
    [703] = [[Located in Mulgore, The Emerald Nightmare (Raid). Found among Venomous Spiderling packs in the webbed section of the area.]],

    -- NPCs: 112858
    [704] = [[Located in Moonshade Sanctum, Suramar. Spawns during the quest Moonshade Holdout.]],

    -- NPCs: 113040
    [705] = [[Located in Un'goro Crater, The Emerald Nightmare (Raid).]],

    -- NPCs: 113041
    [706] = [[Located in Un'goro Crater, The Emerald Nightmare (Raid). Found in the western regions of the crater and close to the entry point.]],

    -- NPCs: 113123
    [707] = [[Located in Suramar. West / north-west of Felsoul Hold area. Seems to spawn infrequently among Suramar Cliffquills.]],

    -- NPCs: 113185
    [708] = [[Located in Suramar. Seems to be infrequent spawn among Cunning Bushtails in south-western section of zone. Aura lost upon taming.]],

    -- NPCs: 113202
    [709] = [[Located in All In (Quest Scenario). All In is a one-time-only quest scenario offered when you reach 20000 Revered with The Nightfallen. This NPC can only be accessed that once.]],

    -- NPCs: 113205
    [710] = [[Located in Suramar. Possibly an infrequent spawn among Heartwood Stags. Aura is lost upon taming.]],

    -- NPCs: 113417
    [711] = [[Located in Teloth'aran, Suramar. Spawn when you tread on Writhing Egg Sacs.]],

    -- NPCs: 113626
    [712] = [[Located in Mulgore, The Emerald Nightmare (Raid). Spawns on the first platform of the webbed section of the area, possibly in Mythic difficulty only.]],

    -- NPCs: 113694
    [713] = [[Located in Crimson Thicket, Suramar. South of Nighteyes (base of tree, below rocks). Stealthed and can't be detected until you're a few feet away.]],

    -- NPCs: 113974
    [714] = [[Located in Ley Station Anora, Suramar. Ley Station Anora is in a series of tunnels south-west of Tel'anor.]],

    -- NPCs: 114323
    [715] = [[Located in The Eternal Battlefield, Trial of Valor (Raid). Guarm is the third boss encounter of the raid, located in Helheim.]],

    -- NPCs: 114692
    [716] = [[Located in Falanaar Tunnels, Withered Training Instance. Spawns from damaged Ley Spider Eggs.]],

    -- NPCs: 114794
    [717] = [[Located in The Scullery, Return to Karazhan (Dungeon). The Scullery is adjacent to The Banquet Hall. You don't have to defeat Moroes to reach it.]],

    -- NPCs: 114991
    [718] = [[Located in Alcaz Island, Dustwallow Marsh. Situated in the broken tower in the south-west of the island. In order to see it you must ensure Theramore Isle is set to its pre-destruction phase - if it isn't then speak to Zidormi on the west side of the bridge, west of Theramore. To activate the Arachnodrone you must first obtain an Electrified Key by defeating Doctor Weavil, upstairs in the largest building. The drop-rate of the key isn't 100% so you might have to kill him a few times before you obtain one, but he doesn't take long to respawn. Once activated, the arachnodrone must be reduced to 30% health before it can be tamed. Be ready to interrupt its Maximum Repair spell or it'll heal to full health.]],

    -- NPCs: 114992
    [719] = [[Located in Alcaz Island, Dustwallow Marsh. Found just outside the northern-most building on the island. In order to see it you must ensure Theramore Isle is set to its pre-destruction phase - if it isn't then speak to Zidormi on the west side of the bridge, west of Theramore. To activate the Arachnodrone you must first obtain an Electrified Key by defeating Doctor Weavil, upstairs in the largest building. The drop-rate of the key isn't 100% so you might have to kill him a few times before you obtain one, but he doesn't take long to respawn. Once activated, the arachnodrone must be reduced to 30% health before it can be tamed. Be ready to interrupt its Maximum Repair spell or it'll heal to full health.]],

    -- NPCs: 114993
    [720] = [[Located in Alcaz Island, Dustwallow Marsh. Found in an underground cell that can be reached from a sloping passage just outside the largest building on the island. In order to see it you must ensure Theramore Isle is set to its pre-destruction phase - if it isn't then speak to Zidormi on the west side of the bridge, west of Theramore. To activate the Arachnodrone you must first obtain an Electrified Key by defeating Doctor Weavil, upstairs in the largest building. The drop-rate of the key isn't 100% so you might have to kill him a few times before you obtain one, but he doesn't take long to respawn. Once activated, the arachnodrone must be reduced to 30% health before it can be tamed. Be ready to interrupt its Maximum Repair spell or it'll heal to full health.]],

    -- NPCs: 115479
    [721] = [[Located in Alcaz Island, Dustwallow Marsh. You must reduce Model GU-4RD-3R to 30% health or below in order to tame it. If you're high level this can be difficult to do without killing it, but one way to reduce your damage is to remove all your armour and use your auto shots. Failing that, you can weaken yourself further by getting yourself killed and choosing to take resurrection sickness.]],

    -- NPCs: 115671
    [722] = [[Located in Gull Rock, Stormheim. Only present on days when the world quest Direbeak Swarm! is active.]],

    -- NPCs: 115672
    [723] = [[Located in Verdant Cliffs, Val'sharah. Only present on days when the world quest Sharptalon Swarm! is active.]],

    -- NPCs: 115673
    [724] = [[Located in Misty Coast, Highmountain. Only present on days when the world quest Snowfeather Swarm! is active.]],

    -- NPCs: 115674
    [725] = [[Located in Alluvanon's Delta, Azsuna. Only present on days when the world quest Bloodgazer Swarm! is active.]],

    -- NPCs: 115795
    [726] = [[Located in The Abyssal Throne, Tomb of Sargeras (Raid). Periodically summoned during the Mistress Sassz'ine fight.]],

    -- NPCs: 116527
    [727] = [[Located in Gloomshore, Stormheim. Only present when there's a Legion invasion in Stormheim and the invasion quest Crushing the Legion is active.]],

    -- NPCs: 117101
    [728] = [[Located in Bybeen Lair, Broken Shore. Only present when the world quest, "The Hijacked Portal" is available and leads to Bybeen Lair.]],

    -- NPCs: 117354
    [729] = [[Located in The Creeping Grotto, Broken Shore. Present when world quest, "Set You Up the Bomb!" active.]],

    -- NPCs: 118244
    [730] = [[Located in Duskwood. Check bushes that have glowing eyes throughout Duskwood. Stealthed, so may need to get close to detect hidden, or use a flare.]],

    -- NPCs: 118706
    [731] = [[Located in Path of Illumination, Cathedral of Eternal Night (Dungeon). Necrotic Spiderlings with this ID are incidental NPCs in the area.]],

    -- NPCs: 118721
    [732] = [[Located in Shadow Fracture, Broken Shore. Only present when the world quest Arachnid Superiority is active.]],

    -- NPCs: 119721
    [733] = [[Located in The Creeping Grotto, Broken Shore. Spawns from Hatching Eggs.]],

    -- NPCs: 119969
    [734] = [[Located in Triumvirate's End, Eredath. There are very few of these, possibly only one, circling around Triumvirate's End. You may have to climb up on something to be in range of it.]],

    -- NPCs: 119990
    [735] = [[Located in Fields of the Eternal Hunt, Halls of Valor (Dungeon). The runes on Fenryr's flanks glow when he runs. He can only be tamed after you defeat him in Mythic mode, and only if you solo the dungeon up to, and including, that fight. That means you must also solo the first boss of the dungeon (Hymdall) as well as Fenryr. The tameable version of Fenryr spawns at the back of his den after you defeat him.]],

    -- NPCs: 120016
    [736] = [[Located in Path of Illumination, Cathedral of Eternal Night (Dungeon). Necrotic Spiderlings with this ID spawn during combat with the miniboss, Nal'asha.]],

    -- NPCs: 120071
    [737] = [[Located in Azsuna. Only present when there's a Legion invasion in Azsuna and the quest Weaving Fel Webs is active.]],

    -- NPCs: 120477
    [738] = [[Located in Lair of Harjatan, Tomb of Sargeras (Raid). Found in the cavern after Harjatan.]],

    -- NPCs: 120570
    [739] = [[Located in Path of Suffering, Broken Shore. Present when world quest, "Mud Mucking" active. Randomly spawns when clicking on Disturbed Mud.]],

    -- NPCs: 120666, 120667
    [740] = [[Located in Broken Shore. Can spawn from Sentinax portals when a Sentinax Beacon of Warbeasts has been used at the site of the Sentinax. The beacons are random drops, especially from various rare elite NPCs around the zone.]],

    -- NPCs: 121112
    [741] = [[Located in Deadwood Landing, Broken Shore. When spawned, Somber Dawn gallops about Deadwood Landing, the larger island off the west coast of the Broken Shore,]],

    -- NPCs: 121277
    [742] = [[Located in Blood Nest, Broken Shore. Spawns during combat with Brood Mother Nix after someone is inflicted with "Inject Eggs".]],

    -- NPCs: 121502
    [743] = [[Located in Suramar. Stealthed and difficult to detect until close. Near Gloomfang.]],

    -- NPCs: 121540
    [744] = [[Located in The Nighthold (non-instanced), Suramar. Lalathin is located at the non-instanced Nighthold building in Suramar city. She can be found enjoying the view on a domed balcony half way up the south-west side of the main tower.She was originally situated inside the raid, and only when the world quest The Nighthold: Love Tap was active, but this changed in Patch 8.3.]],

    -- NPCs: 121565
    [745] = [[Located in Isolon Basin, Eredath. Retains the void effect around its eyes after being tamed!]],

    -- NPCs: 121567
    [746] = [[Located in Stormwind City. Only Beast Masters of level 45 and above can see the item required to summon this beast, but any hunter with the Exotic Beasts skill (level 10) can tame it! You can summon this sprit gryphon by clicking on the Spectral Feather (not always present, long spawn timer) by the gryphon mount vendor.]],

    -- NPCs: 121571
    [747] = [[Located in Valley of Spirits, Orgrimmar. Only Beast Masters of level 45 and above can see the item required to summon this beast, but any hunter with the Exotic Beasts skill (level 10) can tame it! To summon Gon you need to click on the Spectral Eggshell (not always present, long spawn timer) at the burning pile of skulls by Shadow-Walker Zuru.]],

    -- NPCs: 121623, 121624, 121625
    [748] = [[Located in Eye of Azshara (Non-Instanced). In a cave on the southern coast.]],

    -- NPCs: 121896
    [749] = [[Located in Blood Gate, Zuldazar. Bloodbelly Flyers with three different IDs may be found around the Blood Gate area. This ID is only used by a few that fly rapidly about the area.]],

    -- NPCs: 121898
    [750] = [[Located in Blood Gate, Zuldazar. Bloodbelly Flyers with three different IDs may be found around the Blood Gate area. This ID is only used by a few stationary blood ticks on the ground.]],

    -- NPCs: 122242
    [751] = [[Located in Abandoned Ruin, Nazmir. This tick spawns during the search of the Abadoned Ruin in the Horde zone quest The Shadow of Death.]],

    -- NPCs: 122407, 122410
    [752] = [[Located in Shadowguard Incursion, The Seat of the Triumvirate (Dungeon).]],

    -- NPCs: 122408
    [753] = [[Located in Shadowguard Incursion, The Seat of the Triumvirate (Dungeon). Shadow Stalkers inside The Seat of the Triumvirate can be tamed without the use of Fresh Talbuk Meat.]],

    -- NPCs: 122548
    [754] = [[Located in Emerald Dragonshrine, The Deaths of Chromie (Scenario). These owls are actually all level 112, but you are temporarily bumped to level 112 inside the instance so you can tame them at the minimum instance level of 110. Distract Chromie with other targets first, or she'll attack and pull aggro while you're taming.]],

    -- NPCs: 122961
    [755] = [[Located in Glenbrook Hunting Grounds, Drustvar. Has a shadowy electrical effect that is lost upon taming.]],

    -- NPCs: 122963
    [756] = [[Located in Sacrificial Pits, Atal'Dazar (Dungeon). After entering the instance you can find Rezan in the arena/pit at the bottom.]],

    -- NPCs: 122986, 128434
    [757] = [[Located in Atal'dazar (Dungeon).]],

    -- NPCs: 122998
    [758] = [[Located in The Deaths of Chromie (Scenario).]],

    -- NPCs: 123358
    [759] = [[Located in Port of Zem'lan, Vol'dun. Spawns when you click on a Hissing Crate which can be found at the back of an alcove in the middle of the Port area, right next to Jammo.]],

    -- NPCs: 123604
    [760] = [[Located in Boralus, Tiragarde Sound. Horde hunters can tame this horse the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. It can be found in the stable just south-east of Proudmoore Keep, east of Proudmoore Keep by a cart, and in stables by the wall between Ashvane Docks and Boralus Harbor.]],

    -- NPCs: 123636
    [761] = [[Located in Magma Springs, Molten Front. May spawn in various lava pools in the same area as the Emberspit Scorpions. There may be a couple of hours' wait in between spawns.]],

    -- NPCs: 123653
    [762] = [[Located in The Tusk Pools, Zuldazar. Has spears stuck in its hide that remain after taming.]],

    -- NPCs: 123712
    [763] = [[Located in Winterdeep Basin, Tiragarde Sound. Spawns periodically during the Horde World Quest Goblin Azerite Extraction.]],

    -- NPCs: 123757
    [764] = [[Located in Urok's Lair, Nazmir. Found in a cave on the western side of the Primal Wetlands, in the south-west of the zone.]],

    -- NPCs: 124170
    [765] = [[Located in Fallhaven, Drustvar. Has a curse aura.]],

    -- NPCs: 124188
    [766] = [[Located in The Four Stingers, Vol'dun. Spawns when you hit a Loose Bilewing Hive or contact an Infested Saurolisk corpse.]],

    -- NPCs: 124269, 124271
    [767] = [[Located in Krokuun. Just outside entrance (west) of Petrified Forest.]],

    -- NPCs: 124279
    [768] = [[Located in Krokuun. Flies over central Krokuun. May need to get up high to reach one.]],

    -- NPCs: 124375
    [769] = [[Located in Sunken Path, Nazmir. Has a spear stuck in it which is removed upon taming.]],

    -- NPCs: 124382
    [770] = [[Located in Fallhaven, Drustvar. Has a shadowy electrical effect that is lost upon taming.]],

    -- NPCs: 124399
    [771] = [[Located in Primal Wetlands, Nazmir. Located in a cave under the waterfall in the far west of the area. Covered in Blood Ticks which are lost upon taming.]],

    -- NPCs: 124439
    [772] = [[Located in Grove of Naroua, Krokuun. If you find ones that can't be attacked or tamed, they belong to a different ID.]],

    -- NPCs: 124548
    [773] = [[Located in Fallhaven, Drustvar. Has a curse aura, bow, and prize ribbons. These are lost after taming.]],

    -- NPCs: 124845
    [774] = [[Located in Boralus & Hatherford, Tiragarde Sound. Horde hunters can tame this horse the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. It can be found in the stable just south-east of Proudmoore Keep, and around Hatherord to the north of Boralus.]],

    -- NPCs: 124885
    [775] = [[Located in Shrouded Foothills, Drustvar. Has a shadowy electrical effect which is lost upon taming.]],

    -- NPCs: 124890
    [776] = [[Located in Shrouded Foothills, Drustvar. Has a shadowy electrical effect that is lost upon taming.]],

    -- NPCs: 125214
    [777] = [[Located in Naz'agal, Nazmir. Has tridents stuck in it which are lost upon taming.]],

    -- NPCs: 125547
    [778] = [[Located in Halls of the Boundless Reach, Antorus, the Burning Throne (Raid). Found around the green portal in the open area before the Portal Keeper Hasabel and Defend Eonar encounters. It can also be summoned during combat with the Riftworld Assistant associated with that portal.]],

    -- NPCs: 126217
    [779] = [[Located in Vol'dun. This alpaca is normally friendly to Horde and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The version of Dot with this ID appears at different locations in Vol'dun, depending on which stage of the zone story you're up to. She first appears at Vulpera Hideaway after completing An Explosive Exit, which is early in the zone quest chain, then at Withering Gulch after The Warguard's Trail, and finally at the Temple of Akunda after On The Move. Versions with different IDs appear in different locations after Knowledge of the Past. She doesn't appear to be visible to Alliance.]],

    -- NPCs: 126219
    [780] = [[Located in Vol'dun. This alpaca is normally friendly to Horde and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The version of Dolly with this ID appears at different locations in Vol'dun, depending on which stage of the zone story you're up to. She first appears at Vulpera Hideaway after completing An Explosive Exit, which is early in the zone quest chain, then at Withering Gulch after The Warguard's Trail, and finally at the Temple of Akunda after On The Move. Versions with different IDs appear in different locations after Knowledge of the Past. She doesn't appear to be visible to Alliance.]],

    -- NPCs: 126419
    [781] = [[Located in Grove of Naroua, Krokuun. Naroua can be tamed without the use of Fresh Talbuk Meat.]],

    -- NPCs: 126637
    [782] = [[Located in Zuldazar. In a cave beneath Pterror Rise.]],

    -- NPCs: 126644
    [783] = [[Located in Arid Basin, Vol'dun. In a cave.]],

    -- NPCs: 126732
    [784] = [[Located in Zuldazar. Pinky exists in two versions. This tameable version is for the quest A Good Spanking and is in a special quest phase. Taming Pinky is difficult as your Juvenile Direhorn companion will steal aggro and interrupt your tame. One way to avoid this is to land on top of one of the taller gate posts with the flaming torches, in shooting range of Pinky, but also ensure that your Juvenile Direhorn companion lands on top of the post with you and can't find a path to attack. You can then shoot at the devilsaur and steal aggro from the other NPCs while your companion does nothing. However, if you remain on the flaming post then taming gives a "line of sight" error at the last second. Instead, carefully step sideways over the top of the lower fence while your Juvenile Direhorn remains on the gate post. For the first few steps you remain up in the air, but eventually you'll fall and land on top of the fence, and if you're careful your Juvenile Direhorn will stay behind. You can then tame Pinky without interruption.]],

    -- NPCs: 126749
    [785] = [[Located in Primal Wetlands, Nazmir. This blood tick was untameable when Blood Beasts were first introduced, but became tameable in Patch 8.1.5.]],

    -- NPCs: 126894
    [786] = [[Located in Vol'dun. In the mountains in the south-east of the zone, on a rise south-east of Verdant Plateau. Killing all of the Pit Snakes causes Vathikur to rise.]],

    -- NPCs: 126898
    [787] = [[Located in Eredath. He spawns by the southern corner of Seat of the Triumvirate. Sabuul can be tamed without the use of Fresh Talbuk Meat. Unlike Naroua he retains a purple fog and a subtle void aura after taming. The wavering aura can be faint in the light, but is more obvious in the dark.]],

    -- NPCs: 126945
    [788] = [[Located in Azurelight Square, Eredath. Only present when the rare, Wrangler Kravos has spawned]],

    -- NPCs: 127169
    [789] = [[Located in Vol'dun. Spawns during the Horde quest The Source of the Problem. After taming, dismiss your pet and the cobra should respawn so you can complete the quest.]],

    -- NPCs: 127203
    [790] = [[Located in Mistfall Cleft, Tiragarde Sound. Has a trogg riding it which dies once tamed. The pet retains the trogg portrait, which is sure to be a bug.]],

    -- NPCs: 127259
    [791] = [[Located in Freehold (Non-Instanced), Tiragarde Sound. Spawned when pulling in lines during the Alliance quest Rig Robbing.]],

    -- NPCs: 127279
    [792] = [[Located in Nazmir. The larger ones are tameable, but the smaller, more active ones (same name, but different ID) are not. Located north of the Primal Wetlands.]],

    -- NPCs: 127290
    [793] = [[Located in Mistfall Cleft, Tiragarde Sound. 'Mugg' is actually intended to be the name of the trogg riding this saurolisk. He dies once it is tamed, but the pet retains the trogg portrait. This is sure to be a bug.]],

    -- NPCs: 127333
    [794] = [[Located in Barbthorn Ridge, Drustvar. In a cave.]],

    -- NPCs: 127381
    [795] = [[Located in Tol Dagor (Dungeon). Located in the first area, outside the building complex.]],

    -- NPCs: 127477
    [796] = [[Located in Tol Dagor (Dungeon). Located on the shoreline when you first enter the dungeon.]],

    -- NPCs: 127479
    [797] = [[Located in Tol Dagor (Dungeon).]],

    -- NPCs: 127482
    [798] = [[Located in Sodden Depths, Tol Dagor (Dungeon).]],

    -- NPCs: 127569, 127611
    [799] = [[Located in Invasion Point: Bonich. This stag is found outside the zone barrier, so cannot be physically reached. Instead, in a couple of places around the edge you can just get in range to aggro it with something that won't kill it, like a Tar Trap, which will in turn cause it to come close enough to tame. Invasion Point: Bonich may be reached through a portal in northern Antoran Wastes, Argus.]],

    -- NPCs: 127572
    [800] = [[Located in Norwington Estate, Tiragarde Sound. Friendly to Alliance and part of an Alliance quest phase. Does not seem to be visible to Horde.]],

    -- NPCs: 127602
    [801] = [[Located in Rockskip Woodlands, Tiragarde Sound. Stealthed.]],

    -- NPCs: 127615
    [802] = [[Located in Invasion Point: Bonich. This runner is found outside the zone barrier, so cannot be physically reached. Instead, go directly behind the entry portal and stand in the break between the logs, facing the barrier. Further ahead you'll see a log with a clump of ferns at its right-hand end. Place a freezing trap just in front of the ferns. Every couple of minutes some Ephemeral Runners will run past and with good placement you'll trap one and can tame it. Invasion Point: Bonich may be reached through a portal in northern Antoran Wastes, Argus.]],

    -- NPCs: 127630
    [803] = [[Located in Snapclaw Shore, Drustvar. Spawns occasionally when you reel in fishing rods for the regular quest The Reel Deal, or its World Quest equivalent What a Gull Wants.]],

    -- NPCs: 127651
    [804] = [[Located in Timbered Strandby, Drustvar. Use the Untended Fishing Rod.]],

    -- NPCs: 127768
    [805] = [[Located in The Fallen Outpost, Nazmir. These undead beasts are being ridden by Blood Troll Warmothers. Some are scripted to run along the path towards Zuldazar then despawn, while others linger at the back.]],

    -- NPCs: 127800
    [806] = [[Located in Brokenbough Roost, Tiragarde Sound. Found in a cave on the Brokenbough Roost. Has spears stuck in it that remain upon taming.]],

    -- NPCs: 127847
    [807] = [[Located in Torga's Rest, Nazmir. Flying about the area.]],

    -- NPCs: 127873
    [808] = [[Located in Torga's Rest, Nazmir. Scrounger Patriarchs originally had a standard red raptor look until they were changed (and made tameable) in Patch 8.1]],

    -- NPCs: 128093
    [809] = [[Located in Clearspring Pass, Tiragarde Sound. In a cave.]],

    -- NPCs: 128099, 128115, 128612, 128622
    [810] = [[Located in Forge of Aeons (Scenario). Found in the scenario in which you recruit the Lightforged Draenei to the Alliance, so only available to Alliance players, one time only.]],

    -- NPCs: 128361
    [811] = [[Located in Glenbrook Hunting Grounds, Drustvar. Has a shadowy electrical effect.]],

    -- NPCs: 128435
    [812] = [[Located in Atal'dazar (Dungeon). Tame quickly, before the pack overwhelms you!]],

    -- NPCs: 128441, 128476, 128478
    [813] = [[Located in Norwington Estate, Tiragarde Sound. Found in the stables. Horde hunters can tame this horse the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode.]],

    -- NPCs: 128551
    [814] = [[Located in Freehold (Dungeon).]],

    -- NPCs: 128587
    [815] = [[Located in Zuldazar. This unique skeletal devilsaur requires a trick to tame, as it's normally only encountered while you're stuck in a quest vehicle and can't use your abilities. It also requires you to be a Horde player with access to the once-only quest Bulwark of Torcali. There's a chance that Horde hunters can revisit this quest using party sync - if they have a friend who has it in their quest log - but we haven't yet tested that possibility. The Bulwark of Torcali quest requires you to have completed the major zone storylines for both Zuldazar and Nazmir. At the start of the quest you're asked to mount a direhorn named Old Rotana. Before you click on her, ensure the wooden post at her back left flank is between you and her body. If you position yourself just right, when you click on her the post will block you from mounting but you'll still moved into the quest instance, where you can tame a Risen Gargantuan.]],

    -- NPCs: 128838
    [816] = [[Located in Tiragarde Sound. Horde hunters can tame this Pack Mule the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Found in two locations in the zone: (i) just across the bridge, to the east of Vigil Hill island, and (ii) by the ramparts across on the strait to the east of Freehold Island. It has a large pack on its back which is lost after taming.]],

    -- NPCs: 128848
    [817] = [[Located in Zul'Ahjin, Vol'dun. This alpaca is normally friendly to Horde and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The version of Dolly appears at Zul'Ahjin ruins, east of Scorched Sands Outpost, after the zone story quest Knowledge of the Past and until the quest Unlikely Allies. She doesn't appear to be visible to Alliance.]],

    -- NPCs: 128849
    [818] = [[Located in Zul'Ahjin, Vol'dun. This alpaca is normally friendly to Horde and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The version of Dot appears at Zul'Ahjin ruins, east of Scorched Sands Outpost, after the zone story quest Knowledge of the Past and until the quest Unlikely Allies. She doesn't appear to be visible to Alliance.]],

    -- NPCs: 129070, 129857, 132275
    [819] = [[Located in Freehold (Non-Instanced), Tiragarde Sound.]],

    -- NPCs: 129124
    [820] = [[Located in Zuldazar. A pair are located outside a cave, just east of Warport Rastari, another is found within Warport Rastari.]],

    -- NPCs: 129283
    [821] = [[Located in Vol'dun. Waters to the east of the Port of Zem'lan. Has a bubble around it which is lost upon taming.]],

    -- NPCs: 129298
    [822] = [[Located in Whistlebloom Oasis, Vol'dun. Spawns when you contact an Infested Saurolisk corpse.]],

    -- NPCs: 129482
    [823] = [[Located in The Far Reach, Nazmir. Great Sea Albatrosses with this ID are flying.]],

    -- NPCs: 129500
    [824] = [[Located in Court of Zak'rajan, Vol'dun. Stealthed.]],

    -- NPCs: 129517
    [825] = [[Located in Sacrificial Pits, Atal'Dazar (Dungeon). Spawns if you run over one of the purple piles of bones during the Rezan encounter. Unfortunately, it won't spawn unless you're in combat with Rezan.]],

    -- NPCs: 129626
    [826] = [[Located in Fernwood Ridge, Tiragarde Sound. Curse aura effects lost upon taming.]],

    -- NPCs: 129764
    [827] = [[Located in Glenbrook Hunting Grounds, Drustvar. Has curse aura, which is lost upon taming.]],

    -- NPCs: 129805
    [828] = [[Located in Shrouded Foothills, Drustvar. In a cave. Summoned by opening an Obviously Safe Chest.]],

    -- NPCs: 129833
    [829] = [[Located in Fernwood Ridge, Tiragarde Sound. Located in a cave in the east of the area. Her curse aura is lost upon taming.]],

    -- NPCs: 129835
    [830] = [[Located in Glenbrook Hunting Grounds, Drustvar. Has a dark curse aura, and meat impaled on its rack. Both effects are lost upon taming.]],

    -- NPCs: 129950
    [831] = [[Located in Drustvar. Appears in different locations around the zone.]],

    -- NPCs: 130022, 130023
    [832] = [[Located in Vol'dun. Terrace of the Devoted and the northern coasts of the zone. Might phase with World Quests.]],

    -- NPCs: 130085
    [833] = [[Located in Fernwood Ridge, Tiragarde Sound. Has shadow and glow effects that are lost upon taming.]],

    -- NPCs: 130147
    [834] = [[Located in Anyport, Drustvar. Flying above the area.]],

    -- NPCs: 130191
    [835] = [[Located in Terrace of Sorrows, Nazmir. Spawned during the Bajiatha fight.]],

    -- NPCs: 130338, 130581, 130584, 134798, 140071, 140072, 140296, 140298, 140300, 140689, 140690, 140691
    [836] = [[Located in Island Expeditions (Scenario). A possible encounter on any island, except maybe Crestfall and Snowblossom Village.]],

    -- NPCs: 130350
    [837] = [[Located in The Placid Spring, Tiragarde Sound. The Guardian of the Spring is normally friendly but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. This version of the Guardian is a vignette NPC at approx 61,52 that can be ridden for 40 seconds. If you ride it to Roan Berthold at approx 67,52 you'll be dismounted and receive a lootable chest. A version of the Guardian with a different NPC ID will appear there for a short time.]],

    -- NPCs: 130401
    [838] = [[Located in Vol'dun. In the mountains in the south-east of the zone, on a rise south-east of Verdant Plateau. To summon Vathikur you have to kill all of the Pit Snakes.]],

    -- NPCs: 130439
    [839] = [[Located in Bouldered Bluffs, Vol'dun. In a cave.]],

    -- NPCs: 130443
    [840] = [[Located in The Prickly Grove, Vol'dun. In a cave.]],

    -- NPCs: 130512
    [841] = [[Located in Zuldazar. Garden of the Loa, Mount Mugamba, and central southern Zuldazar. This young ape originally had a monkey model, before it became tameable in Patch 8.1.]],

    -- NPCs: 130643
    [842] = [[Located in Lair of Rezan, Zuldazar. In a cave at the back of the Temple of Rezan. Only present on days when the world quest Twisted Child of Rezan is active.]],

    -- NPCs: 130889
    [843] = [[Located in Old Drust Road, Tiragarde Sound. Horde hunters can tame this Workhorse the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Found just across the bridge, to the east of Vigil Hill island. Only one is present at a time, but if the current one isn't the colour you're after you can kill it and it respawns quickly.]],

    -- NPCs: 130935
    [844] = [[Located in Isolon, Eredath. Behind the circular building. There's only one, so it may not always be present. The horn shape on the wild NPC can vary between the two types, so you may need patience to get the style you prefer.]],

    -- NPCs: 130937
    [845] = [[Located in Eredath. Seems to be an infrequent spawn in areas where Umbralfins occur. If you can't find one, try killing the Umbralfins.]],

    -- NPCs: 130943
    [846] = [[Located in Grove of Naroua, Krokuun. At the back, behind Naroua. Only one seems to be present.]],

    -- NPCs: 130953
    [847] = [[Located in Gorilla Gorge, Zuldazar. This gorilla wears a skull that is lost upon taming.]],

    -- NPCs: 131136
    [848] = [[Located in Tiragarde Sound. Flying above the Waning Glacier.]],

    -- NPCs: 131695
    [849] = [[Located in Zuldazar. Found hiding in the undergrowth at one specific location - off a path leading to Nazmir, north-east of the Garden of the Loa.]],

    -- NPCs: 131817
    [850] = [[Located in The Underrot (Dungeon). Infested with many ticks that are lost upon taming.]],

    -- NPCs: 131890, 131892, 131893, 131897, 132526
    [851] = [[Located in Silithus. Only present in the newer phase of Silithus, after you complete the Antorus raid.]],

    -- NPCs: 131895
    [852] = [[Located in Silithus. Present in the newer phase of Silithus, after you complete the Antorus raid. It was mistakenly classed as a Silithid for a while, but was fixed in Patch 8.1.]],

    -- NPCs: 132194, 132195
    [853] = [[Located in Crimson Forest, Drustvar. Has a shadowy electrical effect that is lost upon taming]],

    -- NPCs: 132211
    [854] = [[Located in Wailing Tideway, Tiragarde Sound. Wears a pirate hat that is lost upon taming.]],

    -- NPCs: 132341
    [855] = [[Located in Rosaline's Apiary, Stormsong Valley. In a cave in the south-west of the area.]],

    -- NPCs: 132578
    [856] = [[Located in Hive'Ashi, Silithus. Only present in the newer phase of Silithus, after you complete the Antorus raid.]],

    -- NPCs: 132580
    [857] = [[Located in Hive'Regal, Silithus. Only present in the newer phase of Silithus, after you complete the Antorus raid.]],

    -- NPCs: 132584
    [858] = [[Located in Hive'Zora, Silithus. Only present in the newer phase of Silithus, after you complete the Antorus raid.]],

    -- NPCs: 132653
    [859] = [[Located in Savagelands, Zuldazar. This pterrordax spawns during combat with open-world raid boss Ji'arak, who only appears when it is her week as Battle for Azeroth world boss.]],

    -- NPCs: 133163
    [860] = [[Located in Zuldazar. Find in jungles north-east of The Sliver (approx 65, 23). She's only up on days when her associated world quest (Tia'Kawan) is active.]],

    -- NPCs: 133298
    [861] = [[Located in Gallery of Failures, Uldir (Raid).]],

    -- NPCs: 133321
    [862] = [[Located in Gloomtail's Den, Zuldazar. Located in a cave in the vicinity of The Slough.]],

    -- NPCs: 133356
    [863] = [[Located in Blushwater Brook, Tiragarde Sound. Spawns after using the suspicious pile of meat trap. You fight a wave of troggs, then Tempestria.]],

    -- NPCs: 133384
    [864] = [[Located in Temple of Sethraliss (Dungeon). The second boss of the dungeon.]],

    -- NPCs: 133527
    [865] = [[Located in The Far Reach, Nazmir. Has spears embedded in its hide which are lost upon taming.]],

    -- NPCs: 133562, 152148
    [866] = [[Located in Jagged Wastes, Deepholm. This gyreworm is available to Blacksmiths only. It spawns during the Blacksmithing quest An Ear to the Ground, which becomes available from your BfA Blacksmithing trainer when you reach a skill of 150 in Battle for Azeroth Blacksmithing. While the quest is in an open area, it appears to be phased so that only the quester can see the worms.]],

    -- NPCs: 133835
    [867] = [[Located in The Underrot (Dungeon).]],

    -- NPCs: 133988
    [868] = [[Located in Upper Corlain, Drustvar. Has a shadowy electrical effect that is lost upon taming.]],

    -- NPCs: 134005
    [869] = [[Located in Lucky Strike Mines, The MOTHERLODE!! (Dungeon).]],

    -- NPCs: 134046, 134047
    [870] = [[Located in The Slough, Zuldazar. Summoned by activating the Strange Egg vignette.]],

    -- NPCs: 134048
    [871] = [[Located in The Slough, Zuldazar. Summoned after you kill two waves of Enthralled Saurids in the Strange Egg vignette.]],

    -- NPCs: 134057
    [872] = [[Located in Primal Wetlands, Nazmir. Blood ticks with this ID are only present on days when the world quest Scorched Earth is up. They're found in groups nearby tameable bloodticks with the same name.]],

    -- NPCs: 134147
    [873] = [[Located in Highland Flats, Stormsong Valley. Only present when the World Quest Beehemoth is active.]],

    -- NPCs: 134296
    [874] = [[Located in Mangrove Shore, Nazmir. Found south-east of Torga's Rest, Lucille is summoned on request by the Tortollan, Chag. Chag seems to be there all the time, and not just during his World Quest, Chag's Challenge, but he won't always offer the dialogue to summon Lucille.]],

    -- NPCs: 134307
    [875] = [[Located in Upper Corlain, Drustvar. Found inside the stables. Has a curse aura that is lost upon taming.]],

    -- NPCs: 134390
    [876] = [[Located in Temple of Sethraliss (Dungeon). Spawned during the Merektha fight.]],

    -- NPCs: 134433
    [877] = [[Located in Blood Gate, Zuldazar. Blood Crawgs with this ID appear during the Horde-only phased quest, Zandalar Forever!. You have to dismount to tame it. To be eligible for this quest you have to complete the quest chains for all three zones of Zandalar and then complete the Bulwark of Torcali quest in Zuldazar.]],

    -- NPCs: 134450
    [878] = [[Located in Tidecross, Stormsong Valley. Does not keep purple aura when tamed.]],

    -- NPCs: 134507
    [879] = [[Located in Zuldazar. Siege Monstrosities with this ID appear during the Horde-only phased quest, Zandalar Forever!. You have to dismount to tame it. To be eligible for this quest you have to complete the quest chains for all three zones of Zandalar and then complete the Bulwark of Torcali quest in Zuldazar.]],

    -- NPCs: 134519
    [880] = [[Located in Rosaline's Apiary, Stormsong Valley. Outside the cave of the Hive Mother.]],

    -- NPCs: 134562
    [881] = [[Located in Crater of Conquerors, Vol'dun. Periodically appears in the west of the area, brought in by a Faithless Raider.]],

    -- NPCs: 134686, 135846
    [882] = [[Located in Temple of Sethraliss (Dungeon).]],

    -- NPCs: 134780
    [883] = [[Located in Backwater Beach, Zuldazar. Spawned by the Chum Bucket vignette.]],

    -- NPCs: 134782
    [884] = [[Located in Zuldazar. Spawned by killing two waves of Enticed Axebeaks at Backwater Beach.]],

    -- NPCs: 134799, 140692
    [885] = [[Located in Island Expeditions (Scenario). A possible encounter on any island, except maybe Crestfall, Dread Chain, and Snowblossom Village.]],

    -- NPCs: 134852
    [886] = [[Located in The Dreadmire, Nazmir. Only appears on days when the world quest Agent of Death is active.]],

    -- NPCs: 134896
    [887] = [[Located in Sodden Depths (Alliance intro phase), Tiragarde Sound. Only accessible during the Alliance introductory storyline for Kul Tiras.]],

    -- NPCs: 134906, 134907, 140034
    [888] = [[Located in Tol Dagor (Non-Instanced), Tiragarde Sound.]],

    -- NPCs: 134934
    [889] = [[Located in Zuldazar. North of Zeb'ahari. Spawns during combat with Tambano.]],

    -- NPCs: 135048
    [890] = [[Located in Banquet Hall, Waycrest Manor (Dungeon).]],

    -- NPCs: 135049, 135234
    [891] = [[Located in Waycrest Manor (Dungeon).]],

    -- NPCs: 135052
    [892] = [[Located in Ballroom, Waycrest Manor (Dungeon).]],

    -- NPCs: 135293
    [893] = [[Located in Muckwallow, Stormsong Valley. Within a cave.]],

    -- NPCs: 135304
    [894] = [[Located in The Slough, Zuldazar. Only present when the Kua'fon daily quest A Nose for Ptrouble is active. There is a 1-in-4 chance of this.]],

    -- NPCs: 135322
    [895] = [[Located in Kings' Rest (Dungeon).]],

    -- NPCs: 135433
    [896] = [[Located in Atal'Dazar, Zuldazar. Not inside the dungeon. Found in the large sunken area before the Kings' Rest dungeon entrance.]],

    -- NPCs: 135450
    [897] = [[Located in Atal'Dazar (Non-Instanced), Zuldazar.]],

    -- NPCs: 135490
    [898] = [[Located in Atal'dazar (Non-Instanced), Zuldazar. Found by a pond and waterfall in the north-west corner. Tame quickly, before the pack overwhelms you!]],

    -- NPCs: 135508
    [899] = [[Located in Savagelands, Zuldazar. Only present when the Kua'fon daily quest A Nose for Ptrouble is active. There is a 1-in-4 chance of this. If Kil'Tawan is still not present, try killing Thunderfoot or Azuresail, and she may spawn.]],

    -- NPCs: 135510
    [900] = [[Located in Savagelands, Zuldazar. Only present when the Kua'fon daily quest A Nose for Ptrouble is active. There is a 1-in-4 chance of this. If Azuresail is still not present, try killing Thunderfoot or Kil'Tawan, and it may spawn.]],

    -- NPCs: 135632
    [901] = [[Located in Briarback Kraul, Stormsong Valley. Found flying above the area. This bird originally had the appearance of a gold condor, but was switched to the hawk model in Patch 8.1.]],

    -- NPCs: 135743
    [902] = [[Located in The Bone Pit, Vol'dun. Risen Ravsaurs with this ID are reanimated by Zunashi the Exile at the start of combat. He's hiding in a cavern under the dunes.]],

    -- NPCs: 135769
    [903] = [[Located in Westwind Weald, Tiragarde Sound. Goldcoat Stingers with this ID are only spawned during combat with Brawr.]],

    -- NPCs: 136183
    [904] = [[Located in Drowned Lands, Stormsong Valley. In a cave. Has a purple smog effect.]],

    -- NPCs: 136280
    [905] = [[Located in Crosswind Commons, Boralus, Tiragarde Sound. During the World Quest "Albatrocity".]],

    -- NPCs: 136311
    [906] = [[Located in Windshorn Hills, Stormsong Valley. Summoned during the Alliance quest Smells Like Trouble, when a player uses the Scent Vial on Durmok Darkmane. Horde hunters can tame this hawk the usual way, though they need to coordinate with an an Alliance player who has the quest and can summon it. It is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode.]],

    -- NPCs: 136417, 136418
    [907] = [[Located in Beryl Meadow, Stormsong Valley. In a cave.]],

    -- NPCs: 136426
    [908] = [[Located in Shoaljai Tar Pits and the plains to the south, Nazmir. Stealthed.]],

    -- NPCs: 136469
    [909] = [[Located in Dire Hills Lodge, Stormsong Valley. Horde must be flagged PvP in order to tame this hound. It is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode.]],

    -- NPCs: 136548
    [910] = [[Located in The Bone Pit & The Blistering Waste, Vol'dun. Part of the World Quests Azerite Mining / Azerite Madness, when the quest is active in Vol'dun.]],

    -- NPCs: 136653
    [911] = [[Located in Eastern Dunes, Vol'dun. Only present when the Horde-only World Quest Sandfishing is active. These worms can be fished out of the sand as part of the quest. The quest is located north-east of Atul'Aman.]],

    -- NPCs: 136667
    [912] = [[Located in Eastern Dunes, Vol'dun. Only present when the Horde-only World Quest Sandfishing is active. These krolusks can be fished out of the sand as part of the quest. The quest is located north-east of Atul'Aman.]],

    -- NPCs: 136914
    [913] = [[Located in Stormsong Valley; Mechagon. Located in Brined Flats, Stormsong Valley (flying above the area), and The Toothy Shallows, Mechagon.]],

    -- NPCs: 136976
    [914] = [[Located in Kings' Rest (Dungeon). Summoned as part of the King Dazar (final boss) encounter, when the King reaches 60% health.]],

    -- NPCs: 136984
    [915] = [[Located in Kings' Rest (Dungeon). Summoned as part of the King Dazar (final boss) encounter, when the King reaches 80% health.]],

    -- NPCs: 137025
    [916] = [[Located in Millstone Hamlet, Stormsong Valley. In a cellar in the south-west of the area.]],

    -- NPCs: 137098
    [917] = [[Located in Tol Dagor (Dungeon). Only present when the world quest Tol Dagor: Shorefront Property is active. Located on the shoreline, head right from the dungeon entrance.]],

    -- NPCs: 137181
    [918] = [[Located in Blushwater Brook, Tiragarde Sound. Spawned during the first stage of the Imperiled Merchants vignette.]],

    -- NPCs: 137182
    [919] = [[Located in Blushwater Brook, Tiragarde Sound. Spawned during the second stage of the Imperiled Merchants vignette.]],

    -- NPCs: 137183
    [920] = [[Located in Blushwater Brook, Tiragarde Sound. Spawned in the final stage of the Imperiled Merchants vignette. It loses its golden aura once tamed.]],

    -- NPCs: 137233
    [921] = [[Located in Temple of Sethraliss (Dungeon). Spawned during the Avatar of Sethralis encounter. They die on contact, so this can be a difficult tame. Try to stun one and tame it quickly.]],

    -- NPCs: 137336
    [922] = [[Located in Ashenwood Grove, Drustvar. Doesn't retain back mushrooms after taming.]],

    -- NPCs: 137338
    [923] = [[Located in Norwington Estate, Tiragarde Sound. Rose is friendly to Alliance and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. She doesn't seem to be visible to Horde players. Rose can be found in the yard by the stables after you complete the main Norwington Estate storyline.]],

    -- NPCs: 137340, 137342
    [924] = [[Located in Norwington Estate, Tiragarde Sound. Found in a yard adjacent to the stables. Horde hunters can tame this horse the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode.]],

    -- NPCs: 137349
    [925] = [[Located in Ashenwood Grove, Drustvar. It doesn't retain the fungi growing on its back after taming.]],

    -- NPCs: 137353
    [926] = [[Located in Ashenwood Grove. Doesn't retain back mushrooms after taming, Drustvar.]],

    -- NPCs: 137487
    [927] = [[Located in Sepulcher of the Dahazi, Kings' Rest (Dungeon). Activates as part of a gauntlet event in the Sepulcher hallway, along with Queen Patlaa. Each of the four groups present will activate sequentially, and you'll probably have to defeat two other groups before this raptor can be attacked.]],

    -- NPCs: 137681
    [928] = [[Located in Bonetrail Gulch, Vol'dun. In a cave.]],

    -- NPCs: 137713
    [929] = [[Located in THE MOTHERLODE!! (Dungeon). Found on the beach. Has gems and coins embedded in it, which are lost upon taming.]],

    -- NPCs: 137714
    [930] = [[Located in Vol'dun. Spawns during the quest Giving Back to Nature, which is part of the Battle for Azeroth Herbalism quest chain. Spawns north-east of Vulpera Hideaway.]],

    -- NPCs: 137716
    [931] = [[Located in THE MOTHERLODE!! (Dungeon). Found on the beach.]],

    -- NPCs: 137720
    [932] = [[Located in Tal'aman, Zuldazar. Spawned by the Disciple of Akil'zon during the Horde quest Punishment of Tal'aman.]],

    -- NPCs: 137829
    [933] = [[Located in Old Merchant Road, Zuldazar. This version of the Dazarian Stalker is only present on days when the Horde world quest Brutal Escort is active. It spawns to attack the caravan, but possibly only if a player is present who has the quest.]],

    -- NPCs: 137836
    [934] = [[Located in Arathi Highlands. Found in the Battle for Azeroth Warfront phase, south and west of Newstead, north of Highlands Mill.]],

    -- NPCs: 137840
    [935] = [[Located in Old Merchant Road, Zuldazar. This gorilla is only present on days when the Horde world quest Brutal Escort is active. It spawns to attack the caravan, but possibly only if a player is present who has the quest.]],

    -- NPCs: 137885
    [936] = [[Located in Nazmir. This crab can spawn during the Horde herbalism profession quest Gathering Mementos, when a player searches the pools of flotsam along the coastline.]],

    -- NPCs: 138086
    [937] = [[Located in Drustvar. In a cave east of Teller's Farm, north-west of Arom's Stand.]],

    -- NPCs: 138286
    [938] = [[Located in Southport Watch, Tiragarde Sound. Flying above the area.]],

    -- NPCs: 138342
    [939] = [[Located in Bouldered Bluffs, Vol'dun. Spawned during combat with the vignette mob Ashmane.]],

    -- NPCs: 138491
    [940] = [[Located in Koramar, Nazmir. Vicious War Crawgs with this ID are summoned by Amaka the Crawg Ma'da in combat.]],

    -- NPCs: 138540
    [941] = [[Located in Feed Pits, Vol'dun. A pair of these cobras are summoned during combat with Fangcaller Xorreth, who is only present on days when his world quest, Fangcaller Xorreth, is active. You may have to kill (or feign death and reset) him more than once before your desired colour appears.]],

    -- NPCs: 138660
    [942] = [[Located in Island Expeditions (Scenario). A possible encounter on Dread Chain, Skittering Hollow, Verdant Wilds.]],

    -- NPCs: 138794
    [943] = [[Located in The Bone Pit, Vol'dun. Dunegorger Kraulok is only present for the week in which it is the active Battle for Azeroth World Boss. This occurs one week in every six.]],

    -- NPCs: 138812
    [944] = [[Located in Zul'Nazman, Nazmir. Has a pulsing red aura before taming.]],

    -- NPCs: 138851
    [945] = [[Located in Island Expeditions (Scenario). Can appear on any island when a Kvaldir invasion is occurring.]],

    -- NPCs: 138963
    [946] = [[Located in Stormsong Valley. Flies around a hilly area just north of the Briny Flats. She's friendly until you disturb her nest, then becomes hostile.]],

    -- NPCs: 138971
    [947] = [[Located in Island Expeditions (Scenario). This serpent can appear on any island during a Mogu invasion, which is one of a number of possible invasion events that can occur randomly in the middle of an Island Expedition. You may need to run several expeditions before Mogu will show up, and they won't be accompanied by these cloud serpents every time. Sometimes the Mogu are accompanied by Zian-Ti Cloudbreaker cloud serpents, which are black with a red sheen rather than gold.]],

    -- NPCs: 138972
    [948] = [[Located in Island Expeditions (Scenario). This serpent can appear on any island during a Mogu invasion, which is one of a number of possible invasion events that can occur randomly in the middle of an Island Expedition. You may need to run several expeditions before Mogu will show up, and they won't be accompanied by these cloud serpents every time. Sometimes the Mogu are accompanied by 'Zian-Ti Serpent' cloud serpents, which are black with a gold sheen rather than red.]],

    -- NPCs: 139194
    [949] = [[Located in The Underrot (Dungeon). Rotmaw can only be found when its associated world quest, The Underrot: Rotmaw is active. It spawns at the back of the caverns between Elder Leaxa and Cragmaw the Infested - the first and second bosses in the dungeon.]],

    -- NPCs: 139298
    [950] = [[Located in Briny Flat, Stormsong Valley. Has harpoons stuck in its shell and is holding an anchor, which are lost upon taming.]],

    -- NPCs: 139328
    [951] = [[Located in The Jeweled Coast, Stormsong Valley. Located in a cave in the large island north-west of Seeker's Vista. This red Sabertron is available all the time - to activate it just kill the Sabertron Technician standing nearby. The nearby units with different colours may only be tamed on rare occasions - a random one can be activated when the World Quest Sabertron is available.]],

    -- NPCs: 139335, 139336, 139356, 139359
    [952] = [[Located in The Jeweled Coast, Stormsong Valley. Located in a cave in the large island north-west of Seeker's Vista, this mechanical tiger is only rarely tameable. Each time the World Quest Sabertron is available there is a chance this unit will be activated after killing the Sabertron Technician. The probability is probably one-in-four per event, given that there are four rarely-available Sabertrons in the cave. The fifth colour, red-black can be activated and tamed all the time.]],

    -- NPCs: 139483
    [953] = [[Located in Nazmir. Located just south of the Antul'Mita Plateau. You may find only one, standing on a rock just across the stream.]],

    -- NPCs: 139486
    [954] = [[Located in Island Expeditions (Scenario). Can appear on any island when a Mogu invasion is occurring.]],

    -- NPCs: 139562
    [955] = [[Located in Mangrove Shore, Nazmir. Horde hunters can tame this hound the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Spitz is one of the pets of Houndmaster Leopold and is only present when the Horde-only world quest Preemptive Assault is up in Nazmir.]],

    -- NPCs: 139563
    [956] = [[Located in Mangrove Shore, Nazmir. Horde hunters can tame this hound the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Milo is one of the pets of Houndmaster Leopold and is only present when the Horde-only world quest Preemptive Assault is up in Nazmir.]],

    -- NPCs: 139709
    [957] = [[Located in Zul'Nazman, Nazmir. Patrols outside the Heart of Darkness.]],

    -- NPCs: 139980
    [958] = [[Located in Windshorn Hills, Stormsong Valley. Taja loses its purple aura upon taming.]],

    -- NPCs: 140038
    [959] = [[Located in Shrine of the Storm (Dungeon). Packs of these are in the water before the final boss - Vol'zith the Whisperer.]],

    -- NPCs: 140070, 140301
    [960] = [[Located in Island Expeditions (Scenario). A possible encounter on any island, except maybe Crestfall, Rotting Mire, and Snowblossom Village.]],

    -- NPCs: 140275
    [961] = [[Located in Rosaline's Apiary, Stormsong Valley. In a cave.]],

    -- NPCs: 140560
    [962] = [[Located in Island Expeditions (Scenario). A possible encounter on Jorundall, Molten Cay, Verdant Wilds, Whispering Reef.]],

    -- NPCs: 140591, 140594
    [963] = [[Located in Archives of Eternity, Uldir (Raid).]],

    -- NPCs: 140604
    [964] = [[Located in Umber Shore, Tiragarde Sound. Hidden under piles of sand.]],

    -- NPCs: 140699
    [965] = [[Located in Xibala, Zuldazar. WARNING: This pet is buggy and may periodically vanish or cause other issues. It's best not to tame it for now. It is part of the Horde skinning quest Lost But Not Forgotten.]],

    -- NPCs: 140735, 140738, 142713
    [966] = [[Located in The Long Wash, Darkshore. Level 110 (War of the Thorns) zone phase.]],

    -- NPCs: 140756
    [967] = [[Located in Old Drust Road, Tiragarde Sound. The Guardian of the Spring is normally friendly but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. This version of the Guardian is the one that appears by Roan Berthold near Southwind Station (approx 67,52) for a short time after completing its associated vignette. The original version of the Guardian appears at The Placid Spring (approx 61,52) and can be mounted and ridden for 40 seconds. If you ride it to Roan Berthold at approx you'll be dismounted and receive a lootable chest.]],

    -- NPCs: 141051
    [968] = [[Located in Stagheart Cliffs, Tiragarde Sound. Only present when the world quest, A Feathery Fad is available.]],

    -- NPCs: 141118
    [969] = [[Located in Stormsong Valley. On a farm in the south. Horde hunters can tame it the normal way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode.]],

    -- NPCs: 141239
    [970] = [[Located in Roaring Highland, Stormsong Valley. Has arrows stuck in his hide that are retained after taming.]],

    -- NPCs: 141643
    [971] = [[Located in The Great Sea (Quest Instance), The Great Sea. This crab is only accessible by Horde players. It appears in the Horde War Campaign quest instance "At the Bottom of the Sea", unlocked when your reputation with The Honorbound reaches 7.5k Honored.]],

    -- NPCs: 141935
    [972] = [[Located in Uldir (Raid).]],

    -- NPCs: 141977
    [973] = [[Located in Stormsong Valley. Located on the river east of Briarback Kraul, it only appears when the World Quest Milden Mud Snout is active.]],

    -- NPCs: 141981
    [974] = [[Located in Tiragarde Sound. In a cave east of Vigil Hill. Spawns when you step on the webs.]],

    -- NPCs: 141988
    [975] = [[Located in Forgotten Cove, Stormsong Valley. Has a shadowy aura that is lost upon taming.]],

    -- NPCs: 142016
    [976] = [[Located in Newstead, Arathi Highlands; Battle of Stromgarde (Warfront). Found in the Battle for Azeroth zone phase. Friendly to Alliance.]],

    -- NPCs: 142198
    [977] = [[Located in Tidebreak Foothills, Stormsong Valley. Has a void-effect that is lost upon taming.]],

    -- NPCs: 142312
    [978] = [[Located in Battle of Stromgarde (Warfront). This version of Skullripper sometimes appears in the warfront instance, by a rocky outcrop east (and a little south) of Dabyrie's Farmstead.]],

    -- NPCs: 142333, 142340
    [979] = [[Located in Arathi Highlands. Found in the Battle for Azeroth zone phase, in the south-west part of the zone.]],

    -- NPCs: 142337, 142338, 142339, 142341, 142342
    [980] = [[Located in Arathi Highlands. Found in the Battle for Azeroth zone phase.]],

    -- NPCs: 142347
    [981] = [[Located in Arathi Highlands. Found in the Battle for Azeroth phase, south and west of Newstead, north of Highlands Mill.]],

    -- NPCs: 142361
    [982] = [[Located in Battle of Stromgarde (Warfront). This version of Plaguefeather sometimes appears in the mid-southern regions of the warfront instance.]],

    -- NPCs: 142403
    [983] = [[Located in Stormsong Valley. Found in a range extending east from Millstone Hamlet to near where Osca the Bloodied spawns in the Roaring Highland.]],

    -- NPCs: 142435
    [984] = [[Located in Arathi Highlands. Plaguefeather is found in the Battle for Azeroth phase of the zone. It circles a tree on a hill, due east of the Circle of Inner Binding, which is east of Stromgarde Keep.]],

    -- NPCs: 142437
    [985] = [[Located in Arathi Highlands. Appears in the Battle for Azeroth zone phase. Found by a rocky outcrop east (and a little south) of Dabyrie's Farmstead.]],

    -- NPCs: 142438
    [986] = [[Located in Arathi Highlands. Appears in the Battle for Azeroth zone phase. North of Go'shek Farm.]],

    -- NPCs: 142440
    [987] = [[Located in Arathi Highlands. Appears in the Battle for Azeroth zone phase, near Newstead.]],

    -- NPCs: 142464
    [988] = [[Located in Dazar'alor, Zuldazar. Alliance hunters can tame this snake in the usual way, but it is friendly to Horde and can only be tamed by Horde hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Moult accompanies Stalker Mojica around the outside of Dazar'alor and probably shouldn't be tameable.]],

    -- NPCs: 142610
    [989] = [[Located in Deadwash, Stormsong Valley. Horde hunters can tame this Pack Mule the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode.]],

    -- NPCs: 142717
    [990] = [[Located in Witherbark Village, Arathi Highlands. Found in the Battle for Azeroth zone phase.]],

    -- NPCs: 142935
    [991] = [[Located in Nazmir; Vol'dun; Zuldazar. There is a chance this blood tick will spawn when players with the herbalism profession gather Siren's Sting in any of the zones of Zandalar. It's unconfirmed, but possible, that you have to have reached at least Rank 2 in Siren's Sting gathering for it to spawn.]],

    -- NPCs: 143416
    [992] = [[Located in Molten Core (Dark Iron Dwarf Scenario). This version of the Ancient Core Hound is found in the scenario in which you recruit the Dark Iron Dwarves to the Alliance, so it's only accessible by Alliance players on that one occasion.]],

    -- NPCs: 143510
    [993] = [[Located in Drustvar; Tiragarde Sound; Stormsong Valley. There is a chance this bee will spawn when players with the herbalism profession gather Siren's Sting in any of the zones of Kul Tiras. It's unconfirmed, but possible, that you have to have reached at least Rank 2 in Siren's Sting gathering for it to spawn.]],

    -- NPCs: 143700
    [994] = [[Located in Boralus & Hatherford, Tiragarde Sound. Horde hunters can tame this alpaca the usual way, but it is friendly to Alliance and can only be tamed by Alliance hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. It can be found in several locations: (i) at a stable just south-east of Proudmoore Keep; (ii) at a stable by the Boralus Wall, just north of the harbor gates, and (iii) at the stables in Hatherord, to the north of Boralus.]],

    -- NPCs: 143718
    [995] = [[Located in Stormsong Valley; Tiragarde Sound. Found sporadically in coastal areas of Tiragarde, especially outside Boralus, and in north-eastern waters of Stormsong.]],

    -- NPCs: 143740
    [996] = [[Located in Vulpera Hideaway, Vol'dun. This alpaca is normally friendly to Horde and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The version of Dot with this ID appears at Vulpera Hideaway after completing the main zone quest chain. She doesn't appear to be visible to Alliance.]],

    -- NPCs: 143741
    [997] = [[Located in Vulpera Hideaway, Vol'dun. This alpaca is normally friendly to Horde and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The version of Dolly with this ID appears at Vulpera Hideaway after completing the main zone quest chain. She doesn't appear to be visible to Alliance.]],

    -- NPCs: 144246
    [998] = [[Located in The Under Junk, Operation: Mechagon (Dungeon). The sixth boss in the Operation: Mechagon dungeon, K.U.-J.0. is the second boss of the underground section.]],

    -- NPCs: 144477
    [999] = [[Located in Sprucewood, Stormsong Valley. The Mountain Goat with this ID is carried by an Ettin Stoneflinger. The ettin will drop the goat if attacked, or if it decides to attack another NPC (which happens often), and the goat will flee to the west. It's possible to tame the goat before it despawns, but you must be extremely quick. It's best to wait by the path to the west of the ettin and target the goat as soon as the ettin drops it and decides to attacks something else.]],

    -- NPCs: 144638
    [1000] = [[Located in Battle of Dazar'alor (Raid). This undead version of Grong only appears in the Alliance version of the raid, so cannot be tamed by Horde hunters. He's the third boss of the raid.]],

    -- NPCs: 144731
    [1001] = [[Located in Horde Airship, Drustvar. Alliance hunters that are able to tame undead will be able to tame this skeletal hound in the usual way, but it is friendly to Horde and can only be tamed by Horde hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. These hounds only appear during Horde assaults on Drustvar. Two can be found on the Horde airship, just north-east of Arom's Stand, in the company of Kaldras Snape. They're located just below decks in the stern of the ship.]],

    -- NPCs: 144825
    [1002] = [[Located in Island Expeditions (Scenario). A possible encounter on Crestfall, Havenswood, Molten Cay, Skittering Hollow, Un'gol Ruins, Verdant Wilds, Whispering Reef.]],

    -- NPCs: 144826, 144830
    [1003] = [[Located in Island Expeditions (Scenario). A possible encounter on Molten Cay, Un'gol Ruins, Verdant Wilds.]],

    -- NPCs: 144827
    [1004] = [[Located in Island Expeditions (Scenario). A possible encounter on Havenswood, Molten Cay, Verdant Wilds.]],

    -- NPCs: 144829
    [1005] = [[Located in Island Expeditions (Scenario). A possible encounter on Havenswood, Verdant Wilds.]],

    -- NPCs: 144831
    [1006] = [[Located in Island Expeditions (Scenario). A possible encounter on Havenswood, Molten Cay, Un'gol Ruins, Verdant Wilds.]],

    -- NPCs: 144833
    [1007] = [[Located in Island Expeditions (Scenario). A possible encounter on Un'gol Ruins, Verdant Wilds.]],

    -- NPCs: 144837
    [1008] = [[Located in Darkshore. Found in the Battle for Azeroth zone phase, in many areas of the zone.]],

    -- NPCs: 144839
    [1009] = [[Located in Darkshore. Found in many areas of the Battle for Azeroth zone phase.]],

    -- NPCs: 144842
    [1010] = [[Located in Darkshore. Found in the Battle for Azeroth zone phase, along most of the foreshore and sea areas.]],

    -- NPCs: 144993
    [1011] = [[Located in Darkshore. Found in many areas of the Battle for Azeroth zone phase. Covered in a dark curse aura which is lost upon taming.]],

    -- NPCs: 145110, 145444, 145457
    [1012] = [[Located in Mariner's Row, Boralus, Tiragarde Sound. Alliance hunters can tame this creature in the usual way, but it is friendly to Horde and can only be tamed by Horde hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. It is present when a Faction Assault is active in Tiragarde Sound, but only when the Alliance quest Not Too Sober Citizens Brigade is offered.]],

    -- NPCs: 145337
    [1013] = [[Located in Nazjatar. Found throughout Nazjatar. The bronze colour does not seem to make sounds when clicked.]],

    -- NPCs: 145343, 152551, 154092
    [1014] = [[Located in Chamber of the Harvesters, Nazjatar.]],

    -- NPCs: 145736
    [1015] = [[Located in Dunwald Ruins, Twilight Highlands (Vulpera Allied Race Recruitment Phase). This saber is only available during the Vulpera Allied Race recruitment questline which means it's only ever available to Horde hunters, and possibly only once ever on your account. See Wowhead's Vulpera Allied Race Guide for more information on how to unlock this race. Of interest, this cat was originally mis-classed as a wolf, but that was fixed in the 9.0 pre-expansion patch.]],

    -- NPCs: 145740
    [1016] = [[Located in Newhome, Nazjatar. Normally friendly to both factions, but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Tinitoa wears a silver crown that is lost upon taming.]],

    -- NPCs: 146321
    [1017] = [[Located in Twilight Vineyards, Suramar (Vulpera Allied Race Recruitment Phase). The version of the Tattered Silkwing with this ID is only available during the Vulpera Allied Race recruitment questline which means it's only ever available to Horde hunters, and possibly only once ever on your account. See Wowhead's Vulpera Allied Race Guide for more information on how to unlock this race.]],

    -- NPCs: 146564
    [1018] = [[Located in Shrine of the Eclipse, The Sunwell (Scenario). This unique beast first appeared in the Blood Elf Heritage quest chain (blood elf-only), but since Patch 11.2.7 other races can encounter it by running "The Children of Blood" chapter of the "Lorewalking: The Elves of Quel'thalas" campaign, given by Lorewalker Cho in Stormwind, Orgrimmar, and Dornogal. See Wowhead's Lorewalking Overview for more information.]],

    -- NPCs: 147453
    [1019] = [[Located in Vol'dun. This alpaca is normally friendly and can only be tamed by using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. It only appears during Alliance assaults on Vol'dun, and can be found at a Horde camp in the south-west of the zone, far to the south-west of Whistlebloom Oasis and north-west of Scorched Sands Outpost. Look for a zeppelin tethered at some ruins.]],

    -- NPCs: 148117
    [1020] = [[Located in Battle of Dazar'alor (Raid). This version of Grong only appears in the Horde version of the raid, so cannot be tamed by Alliance hunters. He's the second boss of the raid.]],

    -- NPCs: 148787
    [1021] = [[Located in Darkshore. Found in the Battle for Azeroth zone phase at coordinates ~56,31. It perches on a ridge in the eastern border mountains, overlooking a waterfall, south-west of Ruins of Mathystra.]],

    -- NPCs: 149644
    [1022] = [[Located in Darkshore. Found in the Battle for Azeroth zone phase. Located north-east of the Maw of the Void whirlpool, to the east of the crevasse and north of a waterfall.]],

    -- NPCs: 149654
    [1023] = [[Located in Darkshore. Appears in the Darkshore warfront phase, in a corner of the beach west of Lor'danel and north of Gloomtide Strand. Tameable by hunters of level 120, despite it being level 121.]],

    -- NPCs: 149663
    [1024] = [[Located in Withering Thicket, Darkshore. Found in the Battle for Azeroth zone phase. Located north of Ruins of Auberdine and west of Bashal'Aran. Even though it is level 121 it is tameable by hunters of level 120.]],

    -- NPCs: 149680
    [1025] = [[Located in Darkshore. Found in the Battle for Azeroth zone phase. Located offshore in various parts of the zone, but only occurs sporadically.]],

    -- NPCs: 149839
    [1026] = [[Located in Mechagon. Normally found in western Mechagon, but also in other areas of the alternate timeline phase of Mechagon, which is accessible on days when Chromie is present in Rustbolt, or by activating a Personal Time Displacer.]],

    -- NPCs: 150154
    [1027] = [[Located in Scrapbone Den, Operation: Mechagon (Dungeon).]],

    -- NPCs: 150254
    [1028] = [[Located in Operation: Mechagon (Dungeon).]],

    -- NPCs: 150293
    [1029] = [[Located in Operation: Mechagon (Dungeon). Stealthed.]],

    -- NPCs: 150373
    [1030] = [[Located in Coral Forest, Nazjatar. Found flying high above the area.]],

    -- NPCs: 150376
    [1031] = [[Located in Coral Forest & Chitterspine Caverns, Nazjatar. This fathom ray occurs as an independent NPC, but it is also summoned as an add during combat with a Fathom Ray Broodkeeper.]],

    -- NPCs: 150467
    [1032] = [[Located in Dragon's Teeth Basin, Nazjatar. Found flying high above the area.]],

    -- NPCs: 151096
    [1033] = [[Located in Spark of the Imagination (Hati quest phase), Ulduar. This version of Hati is the one you initially tame during the Spark of Genius quest chain. He sports the default appearance he had when he was bound to the artifact weapon, Titanstrike, during Legion. See our Saving Hati Guide for details, and for a list of other essences of Hati you can tame at the end of the chain.]],

    -- NPCs: 151133
    [1034] = [[Located in Temple of Storms, The Storm Peaks. 'Titanstrike' : One of the six essences of Hati that may be summoned and tamed at the Shrine of Storms after restoring Hati to life during the Spark of Genius quest chain - see our Saving Hati Guide for details. The colour of this version is identical to the one you tame in the Spark of Imagination, in the previous stage of the quest chain, which was also the default appearance he had when he was bound to the artifact weapon, Titanstrike, during Legion. There's also a vendor, Clockwerk, in the Temple of Storms who sells toys and consumables to use with Hati.]],

    -- NPCs: 151144
    [1035] = [[Located in Temple of Storms, The Storm Peaks. 'Eaglewatch' : One of the six essences of Hati that may be summoned and tamed at the Shrine of Storms after restoring Hati to life during the Spark of Genius quest chain - see our Saving Hati Guide for details. There's also a vendor, Clockwerk, in the Temple of Storms who sells toys and consumables to use with Hati.]],

    -- NPCs: 151145
    [1036] = [[Located in Temple of Storms, The Storm Peaks. 'Elekk's Thunder' : One of the six essences of Hati that may be summoned and tamed at the Shrine of Storms after restoring Hati to life during the Spark of Genius quest chain - see our Saving Hati Guide for details. There's also a vendor, Clockwerk, in the Temple of Storms who sells toys and consumables to use with Hati.]],

    -- NPCs: 151147
    [1037] = [[Located in Temple of Storms, The Storm Peaks. 'Boarshot Cannon' : One of the six essences of Hati that may be summoned and tamed at the Shrine of Storms after restoring Hati to life during the Spark of Genius quest chain - see our Saving Hati Guide for details. There's also a vendor, Clockwerk, in the Temple of Storms who sells toys and consumables to use with Hati.]],

    -- NPCs: 151148
    [1038] = [[Located in Temple of Storms, The Storm Peaks. 'Serpentbite' : One of the six essences of Hati that may be summoned and tamed at the Shrine of Storms after restoring Hati to life during the Spark of Genius quest chain - see our Saving Hati Guide for details. There's also a vendor, Clockwerk, in the Temple of Storms who sells toys and consumables to use with Hati.]],

    -- NPCs: 151149
    [1039] = [[Located in Temple of Storms, The Storm Peaks. 'Hati's Sacrifice' : One of the six essences of Hati that may be summoned and tamed at the Shrine of Storms after restoring Hati to life during the Spark of Genius quest chain - see our Saving Hati Guide for details. There's also a vendor, Clockwerk, in the Temple of Storms who sells toys and consumables to use with Hati.]],

    -- NPCs: 151159
    [1040] = [[Located in Mechagon. This mechanical rocket chicken only appears on days when Oglethorpe Obnoticus is visiting Rustbolt. It runs rapidly and randomly over most of the island, usually following roads and paths. It runs very quickly so you'll have to be quick to tame or rely on stuns and slows.]],

    -- NPCs: 151353, 152708, 154030, 167485
    [1041] = [[Located in Skoldus Hall, Torghast, Tower of the Damned (Dungeon).]],

    -- NPCs: 151634
    [1042] = [[Located in The Heaps, Mechagon. This creature makes some very subtle mechanical sounds when clicked.]],

    -- NPCs: 151672
    [1043] = [[Located in Sparkweaver Point, Mechagon. A proper rare spawn that only appears occasionally.]],

    -- NPCs: 151709
    [1044] = [[Located in The Heaps, Mechagon. Spawns during combat with the rare NPC, Jawbreaker.]],

    -- NPCs: 151773
    [1045] = [[Located in The Under Junk, Operation: Mechagon (Dungeon). Two of these hounds can be found in the trash mobs before K.U.-J.O.]],

    -- NPCs: 151809
    [1046] = [[Located in Surveyors' Outpost, Uldum. Appears in all Assaults phases of the zone. Found south of the Halls of Origination.]],

    -- NPCs: 151811
    [1047] = [[Located in The Steps of Fate, Uldum. Appears in all Assaults phases of the zone. It has a fiery aura that is lost upon taming.]],

    -- NPCs: 151859
    [1048] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in various locations in eastern Uldum.]],

    -- NPCs: 151883
    [1049] = [[Located in Halls of Origination, Uldum. Anaua flies around the exterior of the Halls of Origination. She loses her transparent orange effect when tamed.]],

    -- NPCs: 151933
    [1050] = [[Located in Bondo's Yard, Mechagon. Retains its electrical effects after taming. The Malfunctioning Beastbot appears occasionally in the south-west corner of Bondo's Yard. It must be activated before it can be tamed, which requires a Beastbot Powerpack, which you can manufacture at Pascal-K1N6. The recipe for this item is granted for free as part of the area progression at Rustbolt.]],

    -- NPCs: 151945
    [1051] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in the east of the zone.]],

    -- NPCs: 151948, 157121
    [1052] = [[Located in Surveyors' Outpost, Uldum. Appears during Amathet Assaults.]],

    -- NPCs: 152136
    [1053] = [[Located in Nordrassil, Mount Hyjal. Only appears during the Heart of Azeroth quest Healing Nordrassil.]],

    -- NPCs: 152288
    [1054] = [[Located in Sparkweaver Point, Mechagon. Spawned by destroying Motospider Eggs.]],

    -- NPCs: 152290
    [1055] = [[Located in Coral Forest, Nazjatar. Has been found in south-eastern and northern parts of the area. Found atop a tall coral formation and may require flying, a Gnomish Gravity Well, or something similar to reach.]],

    -- NPCs: 152291
    [1056] = [[Located in Nazjatar. Appears in central Nazjatar.]],

    -- NPCs: 152296
    [1057] = [[Located in Savagelands, Zuldazar. Can be found harassing your Child of Torcali in north-east Savagelands during the Horde "How to Train Your Direhorn" quest A Daughter of Torcali.]],

    -- NPCs: 152319
    [1058] = [[Located in The Heaps, Mechagon. This version is in the regular phase.]],

    -- NPCs: 152359
    [1059] = [[Located in Nar'anan, Nazjatar. Siltstalker can be found on the steps of a ruined building in the south-east of Nar'anan. She's tameable at level 120 despite being level 121.]],

    -- NPCs: 152360
    [1060] = [[Located in Nar'anan, Nazjatar. Toxigore can be tamed at level 120, despite being level 122.]],

    -- NPCs: 152361
    [1061] = [[Located in Nar'anan, Nazjatar. Banescale occasionally spawns immediately after Siltstalker the Packmother has been killed (but definitely not all the time). He appears on the path to the left of her location (when facing towards her), in south-east Nar'anan. He's tameable at level 120 despite being level 121.]],

    -- NPCs: 152448
    [1062] = [[Located in Coral Forest & Dragon's Teeth Basin, Nazjatar. This rare can spawn in place of a Glimmershell Hulk. If you keep killing the latter, the Iridescent Glimmershell will eventually appear!]],

    -- NPCs: 152462
    [1063] = [[Located in Chitterspine Caverns, Chitterspine Grotto, & Deepcoil Tunnels, Nazjatar. Stealthed. Many may be found around Chitterspine Caverns and Chitterspine Grotto in north-west Nazjatar. A few are also located in an underwater cave at the base of a waterfall in Deepcoil Tunnels.]],

    -- NPCs: 152463
    [1064] = [[Located in Chitterspine Grotto & Deepcoil Tunnels, Nazjatar. A number may be found in the caverns of Chitterspine Grotto in north-west Nazjatar. One is also located in an underwater cave at the base of a waterfall in Deepcoil Tunnels.]],

    -- NPCs: 152465
    [1065] = [[Located in Zanj'ir Terrace & Abyssal Pools, Nazjatar. Needlespine can appear in several different locations surrounding the Abyssal Pools, including both the northern and southern ends, and above on the rise to the west.]],

    -- NPCs: 152552
    [1066] = [[Located in Shassera's Lair, Nazjatar. Shassera's Lair is located in the far north-north-east of the zone. The cave entrance is at the north-east edge of Shirakess Repository, east of the Gate of the Queen.]],

    -- NPCs: 152553
    [1067] = [[Located in Ashen Strand, Nazjatar. Appears at the base of a waterfall.]],

    -- NPCs: 152556
    [1068] = [[Located in The Forgotten Tunnel, Nazjatar. The Forgotten Tunnel is reached through an underwater entrance in the far south-eastern corner of Spears of Azshara.]],

    -- NPCs: 152642
    [1069] = [[Located in Dragon's Teeth Basin, Nazjatar. Spawns when you click on your first sand pile during the Alliance-only quest Crab Marks The Spot. This quest is only available when you have Blademaster Inowari active as your bodyguard and is started by a piece of parchment on a rock not far from Braxicus in Dragon's Teth Basin.]],

    -- NPCs: 152657
    [1070] = [[Located in Uldum. Appears during Amathet Assaults. Patrols south of the Obelisk of the Stars.]],

    -- NPCs: 152768
    [1071] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in the north of the zone.]],

    -- NPCs: 152795
    [1072] = [[Located in Nazjatar. This NPC may appear in a number of different locations within the zone, including Lemor'athra Spire (south-west edge, by a fallen tower), Coral Forest (south of Ekka's Hideaway), Elun'Alor Temple (in the building to the east, close to the Horde flightmaster Gizzik Kelpears), Ashen Strand (just north-west of the Horde Flight Point), Kal'methir, and Highborne Estates. It will randomly appear in one of five gemstone colours each time, and if you're unlucky it could take a while to find the look you're after. Fortunately it appears to spawn frequently.]],

    -- NPCs: 152992
    [1073] = [[Located in Sparkweaver Point, Mechagon. Spawns when the daily Bugs, Lot of 'Em! is available. Also found in the alternate timeline phase of Mechagon, which is accessible on days when Chromie is present in Rustbolt, or by activating a Personal Time Displacer.]],

    -- NPCs: 153096
    [1074] = [[Located in Ruins of Guo-Lai, Vale of Eternal Blossoms. Appears in the Assaults phase, during all Assaults.]],

    -- NPCs: 153208
    [1075] = [[Located in Vale of Eternal Blossoms. Appears during Mogu Assaults, through most of the western half of the zone.]],

    -- NPCs: 153238
    [1076] = [[Located in Darkmaul Citadel, Exile's Reach. Found in a pen inside the citadel grounds.]],

    -- NPCs: 153266
    [1077] = [[Located in Killclaw's Lair, Exile's Reach. The large tree-ogre-club in Killclaw's side is lost after taming.]],

    -- NPCs: 153268, 153278
    [1078] = [[Located in Vale of Eternal Blossoms. Appears during Mantid Assaults, in the west of the zone.]],

    -- NPCs: 153465
    [1079] = [[Located in Mechagon. The Abducted Scraphound is a chance spawn when you attempt to rescue abductees from a Mechagon Containment Crate during the quest Abduction Reduction.]],

    -- NPCs: 153473
    [1080] = [[Located in Mechagon. The Abducted Motospider is a chance spawn when you attempt to rescue abductees from a Mechagon Containment Crate during the quest Abduction Reduction.]],

    -- NPCs: 153694
    [1081] = [[Located in Chamber of the Harvesters, Nazjatar. Sometimes spawns when Deepcoil Eggs are destroyed during the world quest Break a Few Eggs / Break a Few Eggs.]],

    -- NPCs: 153764
    [1082] = [[Located in Ashen Strand, Nazjatar. Alliance hunters can tame Wrinklefin in the usual way, but it is friendly to Horde and can only be tamed by Horde hunters using the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. This fathom ray is a faction hub NPC and probably shouldn't be tameable anyway. Also of note, its title, "Droobie's Companion" is incorrect, as it belongs to Dren Nautilin.]],

    -- NPCs: 153812
    [1083] = [[Located in Brinestone Cove, Nazjatar. Stealthed.]],

    -- NPCs: 153959
    [1084] = [[Located in Zanj'ir Terrace, Nazjatar. Its name changes to "Sated Snapdragon" after being fed on the quest Sating Snapdragons / Sating Snapdragons.]],

    -- NPCs: 153971
    [1085] = [[Located in Chitterspine Caverns, Nazjatar. Spawns occasionally when players open Chittershell Clams when on the quest Working With Purpose / Working With Purpose.]],

    -- NPCs: 153980
    [1086] = [[Located in Mechagon. Found in the alternate timeline phase of Mechagon, which is accessible on days when Chromie is present in Rustbolt, or by activating a Personal Time Displacer.]],

    -- NPCs: 153992
    [1087] = [[Located in The Heaps (alternate timeline), Mechagon. This version is found in the alternate timeline phase of Mechagon, which is accessible on days when Chromie is present in Rustbolt, or by activating a Personal Time Displacer.]],

    -- NPCs: 154181
    [1088] = [[Located in Nar'anan, Nazjatar. Only spawns occasionally, as a pack, and attacks the Zan'jir Stalker naga.]],

    -- NPCs: 154219
    [1089] = [[Located in Sparkweaver Point, Mechagon. Spawns during combat with the rare NPC, Mecharantula.]],

    -- NPCs: 154353
    [1090] = [[Located in Uldum. Found in dunes around Orsis, Ruins of Ammon, and the Cradle of the Ancients, in all Assaults phases of the zone.]],

    -- NPCs: 154354
    [1091] = [[Located in Uldum. This tameable version of the Aqir Stinger is found in a number of locations in western Uldum, in all Assaults phases of the zone.]],

    -- NPCs: 154367
    [1092] = [[Located in Uldum. This wasp is found in many locations in western Uldum, in all Assaults phases of the zone. Note: there is an extremely small chance (maybe 1%) that the Aqir Impaler will spawn in its red colour. Most of the time it's blue, so if you're after a red wasp and the Aqir Unearthed Assault is active then you're better looking for the Corpse Swarmers that spawn with Corpse Eater.]],

    -- NPCs: 154576
    [1093] = [[Located in Uldum. Located between Orsis and Ruins of Ammon in all Assaults phases of the zone.]],

    -- NPCs: 154604
    [1094] = [[Located in Chamber of the Moon, Uldum. Appears during Aqir Unearthed Assaults.]],

    -- NPCs: 154761
    [1095] = [[Located in Mistfall Village, Vale of Eternal Blossoms. Normally friendly, but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Appears in the Assaults phase of the zone, during all Assaults. Hovers near the entrance to the Silent Sanctuary.]],

    -- NPCs: 154935, 154936
    [1096] = [[Located in Gorgonian Outlook, Nazjatar. These crabs may be phased. If so, they can still be viewed and pulled out of the area for taming from the adjacent area to the west: The Empress's Approach.]],

    -- NPCs: 155238
    [1097] = [[Located in The Upper Reaches; Twisting Corridors, Torghast, Tower of the Damned (Dungeon). Very rarely appears as a boss in various Torghast wings.]],

    -- NPCs: 155483
    [1098] = [[Located in Torghast, Tower of the Damned (Dungeon). Not always tameable for players level 60 and below. If it appears one level higher than you then you won't be able to tame it, as it's elite.]],

    -- NPCs: 155583
    [1099] = [[Located in Broken Point, Mechagon. Appears in the water, a short distance off-shore.]],

    -- NPCs: 155703
    [1100] = [[Located in Ruins of Ammon, Uldum. Appears in all Assaults phases of the zone.]],

    -- NPCs: 155770
    [1101] = [[Located in Dredhollow, Revendreth. Spawns when you destroy a Crawler Egg, which is only present when Tomb Burster's event is active. Currently erroneously classed as a Humanoid.]],

    -- NPCs: 155779
    [1102] = [[Located in Dredhollow, Revendreth. When Tomb Burster's event is active you can spawn her by destroying a bunch of Crawler Eggs in Dredhollow.]],

    -- NPCs: 156046
    [1103] = [[Located in Mistfall Village, Vale of Eternal Blossoms. Appears in the Assaults phase, during Mogu Assaults.]],

    -- NPCs: 156077
    [1104] = [[Located in Various Locations, Revendreth. Found in Dredgewood, The Banewood, Ember Ward and Dominance Keep.]],

    -- NPCs: 156083
    [1105] = [[Located in Jin Yang Road, Vale of Eternal Blossoms. Only present during Mogu Assaults. Found near Tu'shen Burial Ground, at the same place Cracklefang spawns in the earlier (non-Assaults) phase.]],

    -- NPCs: 156242
    [1106] = [[Located in Coldheart Interstitia, Torghast, Tower of the Damned (Dungeon).]],

    -- NPCs: 156284
    [1107] = [[Located in Revendreth. Found at various locations in the zone, including: Dredgewood, The Banewood, Briarbane Stables & The Old Gate.]],

    -- NPCs: 156389
    [1108] = [[Located in The Golden Stair, Vale of Eternal Blossoms. Normally friendly, but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. Appears in the Assaults phase of the zone, only during Mogu Assaults on days when the quest event Zan-Tien Serpent Cage is active.]],

    -- NPCs: 156756
    [1109] = [[Located in Vale of Eternal Blossoms. Appears in the Assaults phase, during all Assaults. Found in various craggy areas.]],

    -- NPCs: 156759, 156780, 156788, 156931
    [1110] = [[Located in The Summer Fields, Vale of Eternal Blossoms. Appears in the Assaults phase, during all Assaults.]],

    -- NPCs: 156760
    [1111] = [[Located in Whitepetal Lake, Vale of Eternal Blossoms. Appears in the Assaults phase, during all Assaults.]],

    -- NPCs: 156778
    [1112] = [[Located in Sunblossom Hill, Vale of Eternal Blossoms. Appears in the Assaults phase, during all Assaults.]],

    -- NPCs: 157083
    [1113] = [[Located in The Upper Reaches, Torghast, Tower of the Damned (Dungeon).]],

    -- NPCs: 157143
    [1114] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in a camp south of Khartut's Tomb.]],

    -- NPCs: 157162
    [1115] = [[Located in The Hall of the Serpent, Vale of Eternal Blossoms. Appears in the Assaults phase of the zone, during Mogu Assaults.]],

    -- NPCs: 157279
    [1116] = [[Located in Sunblossom Hill, Vale of Eternal Blossoms. Appears during Mogu Assaults.]],

    -- NPCs: 157290
    [1117] = [[Located in Ruins Rise, Vale of Eternal Blossoms. Appears during Mogu Assaults.]],

    -- NPCs: 157301
    [1118] = [[Located in Grand Palisade & Penance Bridge, Revendreth. Possibly only present during/after the quest I Don't Get My Hands Dirty.]],

    -- NPCs: 157341
    [1119] = [[Located in Winterbough Glade, Vale of Eternal Blossoms. Appears in the Assaults phase of the zone, but only during Mogu Assaults, on days when the Serpent Binding event is up. Defeat the mogu restraining this cloud serpent in order to activate it.]],

    -- NPCs: 157466
    [1120] = [[Located in Mistfall Village, Vale of Eternal Blossoms. Appears during Mogu Assaults.]],

    -- NPCs: 157565, 157567
    [1121] = [[Located in Winterbough Glade, Vale of Eternal Blossoms. Appears around hives during the quest event Ravager Hive, which is only available during Mantid Assaults, and not every day.]],

    -- NPCs: 157589
    [1122] = [[Located in Dunwald Ruins, Twilight Highlands (Vulpera Allied Race Recruitment Phase). This black worg is only available during the Vulpera Allied Race recruitment questline which means it's only ever available to Horde hunters, and possibly only once ever on your account. See Wowhead's Vulpera Allied Race Guide for more information on how to unlock this race.]],

    -- NPCs: 157662, 157665
    [1123] = [[Located in Unfallen's Sanctum, Maldraxxus. In the north-east section of House of the Chosen. Friendly at first, it becomes hostile and tameable after completing the main story.]],

    -- NPCs: 158254
    [1124] = [[Located in Kala's Den, Bastion. This version of Kala must be subdued for the quest Tough Love. If tamed she will reset after about a minute so you can complete the quest.]],

    -- NPCs: 158256
    [1125] = [[Located in Agthia's Repose, Bastion. Found during the quest Agthia's Path]],

    -- NPCs: 158409
    [1126] = [[Located in Autumnshade Ridge, Vale of Eternal Blossoms. Appears during Mogu Assaults, summoned by Houndlord Ren during combat.]],

    -- NPCs: 158465
    [1127] = [[Located in Uldum. Appears during Amathet Assaults. Summoned during combat with two rare NPCs in the east of the zone: Scoutmaster Moswen (north of Halls of Origination, ~ 69.6, 42.0) and Fangtaker Orsa (in the south, ~75.0, 68.6).]],

    -- NPCs: 158530
    [1128] = [[Located in Chamber of the Moon, Uldum. Found in the Assaults phase of the zone. Classed as an Aberration.]],

    -- NPCs: 158702
    [1129] = [[Located in Sinfall, Revendreth. Lurking Monitors phase out completely once you adjust the Scorching Mirror during the quest Securing Sinfall and so aren't available at all to hunters who select the Threads of Fate progress method. They initially look like statues. You have to aggro one to reveal which colour it is. Note that they don't appear on your beast tracker until aggroed.]],

    -- NPCs: 158771
    [1130] = [[Located in Aspirant's Crucible, Bastion. Appears during the quest The Cycle of Anima: Drought Conditions.]],

    -- NPCs: 158976, 159178, 159265, 159441, 159460
    [1131] = [[Located in Dominance Keep, Revendreth.]],

    -- NPCs: 158978
    [1132] = [[Located in Dominance Keep, Revendreth. Also found in the Ember Ward, just south of Dominance Keep.]],

    -- NPCs: 159177
    [1133] = [[Located in Dominance Keep, Revendreth. This version of the Loyal Granitefur appears sporadically around the southern ramparts of Dominance Keep.]],

    -- NPCs: 159323
    [1134] = [[Located in The Upper Reaches; Twisting Corridors, Torghast, Tower of the Damned (Dungeon). May randomly appear as a rare boss in the aforementioned Torghast wings.]],

    -- NPCs: 159610
    [1135] = [[Located in Hall of Beasts & The Golden Pasture, Bastion. Flies high over the hills of the southernmost region of the zone.]],

    -- NPCs: 159756
    [1136] = [[Located in Bony Spindles, Maldraxxus. Spawns when you destroy a Marrowbore Nest.]],

    -- NPCs: 159886
    [1137] = [[Located in Bony Spindles, Maldraxxus. Hidden in a cave, behind a shield of Intricate Webbing.]],

    -- NPCs: 159895
    [1138] = [[Located in Bony Spindles, Maldraxxus. Spawns when you attack the Intricate Webbing protecting Sister Chelicerae.]],

    -- NPCs: 160089, 160110
    [1139] = [[Located in Third Chamber of Kalliope, Bastion. Spawns during the quest, "You Go First".]],

    -- NPCs: 160341
    [1140] = [[Located in Vision of Stormwind (Scenario). Can appear in the canals, at the intersection of the four areas.]],

    -- NPCs: 160401, 160402
    [1141] = [[Located in Halls of Atonement (Non-Instanced), Revendreth. Situated in a tower above the Halls of Atonement dungeon entrance.]],

    -- NPCs: 160872
    [1142] = [[Located in Vale of Eternal Blossoms. Only appears during Mantid Assaults and can be found wandering in several locations in the west of the zone.]],

    -- NPCs: 160970
    [1143] = [[Located in Sahket Wastes, Uldum. Appears in the Assaults phase of the zone. Vuk'laz is a world boss that appears every second week.]],

    -- NPCs: 161130
    [1144] = [[Located in Abandoned Camp, Exile's Reach. Appears to phase out during an advanced stage of the zone quest chain, but can be viewed and tamed from the very edge of Quilboar Briarpatch.]],

    -- NPCs: 161131
    [1145] = [[Located in Abandoned Camp, Exile's Reach. Appears to phase out during an advanced stage of the zone quest chain, but can be viewed and aggroed from the very edge of Quilboar Briarpatch.]],

    -- NPCs: 161133
    [1146] = [[Located in Abandoned Camp, Exile's Reach. Appears to phase out during an advanced stage of the zone quest chain, but one can be viewed and aggroed from a point to the west of Abandoned Camp, near the waterfall. Stand right where the zone changes to "Jrokgar's Coast" and catch the one that circles nearby.]],

    -- NPCs: 161256
    [1147] = [[Located in Archivam, Revendreth. Found during the Venthyr-only quest, "Crypt Crashers".]],

    -- NPCs: 161280
    [1148] = [[Located in Uldum. Found throughout most of western Uldum, in all Assaults phases. Note: the red variant of this scarab is extremely rare - perhaps 1-in-100 or more spawns. You may need to search for a while, even kill off the blue scarabs, in order to get one.]],

    -- NPCs: 161527
    [1149] = [[Located in Aspirant's Crucible, Bastion. Summoned by Orator Chloe during the "Beasts of Bastion: Sigilback" event.]],

    -- NPCs: 161528
    [1150] = [[Located in Aspirant's Crucible, Bastion. Summoned by Orator Chloe during the "Beasts of Bastion: Aethon" event.]],

    -- NPCs: 161529
    [1151] = [[Located in Aspirant's Crucible, Bastion. Summoned by Orator Chloe during the "Beasts of Bastion: Nemaeus" event.]],

    -- NPCs: 161530
    [1152] = [[Located in Aspirant's Crucible, Bastion. Summoned by Orator Chloe during the "Beasts of Bastion: Cloudtail" event.]],

    -- NPCs: 161541
    [1153] = [[Located in Ruins of Ammon, Uldum. Spawns during the Vuk'laz the Earthbreaker encounter. Vuk'laz is a world boss that appears every second week in the Assaults phase of the zone.]],

    -- NPCs: 161672
    [1154] = [[Located in Jin Yang Road, Vale of Eternal Blossoms. Appears during Mantid Assaults, in the west of the zone.]],

    -- NPCs: 162140
    [1155] = [[Located in Uldum. Appears during Aqir Unearthed Assaults and patrols the Ankhaten Harbor area.]],

    -- NPCs: 162142
    [1156] = [[Located in Uldum. Appears during Aqir Unearthed Assaults, just west of Obelisk of the Sun. Classed as an Aberration.]],

    -- NPCs: 162147
    [1157] = [[Located in Uldum. Appears during Aqir Unearthed Assaults. Located north of Ruins of Ammon and south-west of Orsis.]],

    -- NPCs: 162150
    [1158] = [[Located in Uldum. Spawned by Corpse Eater during combat. Corpse Eater is only found during Aqir Unearthed Assaults.]],

    -- NPCs: 162173
    [1159] = [[Located in Uldum. Appears during Aqir Unearthed Assaults. Patrols around the lake in the farm north-west of Uldum.]],

    -- NPCs: 162237, 162300
    [1160] = [[Located in House of Rituals, Maldraxxus. Found during the Venthyr-only scenario, "The Medallion of Dominion".]],

    -- NPCs: 162334, 162373
    [1161] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found along the rivers.]],

    -- NPCs: 162335
    [1162] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found along the mid-southern coast and northwestern region of the zone.]],

    -- NPCs: 162336
    [1163] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found along rivers in the south..]],

    -- NPCs: 162360
    [1164] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in the far west of the zone.]],

    -- NPCs: 162361
    [1165] = [[Located in Neferset City, Uldum. Found in the Assaults (N'Zoth Invasion) phase of the zone, except during Black Empire Assaults.]],

    -- NPCs: 162364
    [1166] = [[Located in Neferset City, Uldum. Found in the Assaults (N'Zoth Invasion) phase of the zone, except during Black Empire Assaults. Located at the southern end of Neferset City.]],

    -- NPCs: 162374
    [1167] = [[Located in Cradle of the Ancients, Uldum. Appears in all Assaults phases of the zone.]],

    -- NPCs: 162375
    [1168] = [[Located in Vir'naal River Delta, Uldum. Found in the Assaults phase of Uldum. Not present when the Black Empire Assault (which spans the centre of the zone) is active.]],

    -- NPCs: 162378, 162381
    [1169] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in the north-west of the zone.]],

    -- NPCs: 162380
    [1170] = [[Located in Sahket Wastes, Uldum. Appears in all Assaults phases of the zone.]],

    -- NPCs: 162382
    [1171] = [[Located in Uldum. Appears in all Assaults phases of the zone. Found in northern Uldum.]],

    -- NPCs: 162399
    [1172] = [[Located in Sepulcher of Knowledge, Maldraxxus. Can only be spawned during the quest, "Repeat After Me".]],

    -- NPCs: 162428
    [1173] = [[Located in Etheric Vault, Maldraxxus. Has a spectral effect that it retains. The Vault is located in the west of the House of Constructs.]],

    -- NPCs: 162588
    [1174] = [[Located in Maldraxxus. Gristlebeak cannot initially be attacked, but circles an area east of the the Theater of Pain. She will descend and attack if you destroy her clutch of Unusual Eggs, found further east the foot of jagged, blackened peaks.]],

    -- NPCs: 162681
    [1175] = [[Located in Vol'dun. Normally friendly but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The Elusive Quickhoof is an alpaca that spawns rarely and can be found wandering in one of many different locations in Vol'dun. If you feed it some Seaside Leafy Greens Mix it will award you the Elusive Quickhoof mount. It's still possible to tame it afterwards, as the alpaca remains up for 10 minutes after spawning.]],

    -- NPCs: 163025
    [1176] = [[Located in Obelisk of the Moon, Uldum. Appears in the Assaults phase of the zone. Respawns frequently, not far inside the eastern entrance to the Obelisk of the Moon and immediately runs towards the entrance. Tame it as soon as it spawns, before the other NPCs attack and steal threat.]],

    -- NPCs: 163042
    [1177] = [[Located in Vale of Eternal Blossoms. Normally friendly, but can be tamed if you use the toy "N'lyeth, Sliver of N'Zoth" while in War Mode. The Ivory Cloud Serpent appears only during Mogu Assaults. The Ivory Cloud Serpent spawns every ~1.5 - 3 hours at coordinates ~ 27,55, at roughly 2-3 times the height of the trees, and flies rapidly in clockwise circuits around the zone. The best place to tame it is at the southern end of the roof of the Gate of the Setting Sun.]],

    -- NPCs: 163045
    [1178] = [[Located in Obelisk of the Moon, Uldum. This untameable version of the Aqir Stinger is found only around the Obelisk of the Moon, during all Assaults phases.]],

    -- NPCs: 163091
    [1179] = [[Located in Uldum. Spawns continuously at the eastern entrance of the Obelisk of the Moon. Also spawns during the 'Ambushed Settlers' quest events, which only occur during Aqir Unearthed Assaults.]],

    -- NPCs: 163154
    [1180] = [[Located in Orsis, Uldum. Spawns during the 'Ambushed Settlers' quest events, which only occur during Aqir Unearthed Assaults.]],

    -- NPCs: 163185
    [1181] = [[Located in Gormhive Defense Wall, Ardenweald. Occasionally spawns and heads north through the area. Currently erroneously classed as a humanoid.]],

    -- NPCs: 163259
    [1182] = [[Located in Ruins of Ammon, Uldum. Appears during Aqir Unearthed Assaults, but only on days when the quest event Titanus Egg is active (just west of the Ruins of Ammon). Spawns when you destroy Goliath Eggs.]],

    -- NPCs: 163268
    [1183] = [[Located in Ruins of Ammon, Uldum. Appears during Aqir Unearthed Assaults, but only on days when the quest event Titanus Egg is active (just west of the Ruins of Ammon). Spawns at the culmination of the quest.]],

    -- NPCs: 163503, 163506
    [1184] = [[Located in Spires of Ascension (Dungeon).]],

    -- NPCs: 163616
    [1185] = [[Located in Ardenweald. Rootstinger Swarmlings continually spawn in northern Gormhive and fly north to Gormhive Defense Wall, Claw's Edge and Kaithe Overlook where they despawn. They can also appear by the land bridge at Tirna Scithe (~25,61) on days when the world quest "Swarm Defense" is up in that area.]],

    -- NPCs: 164110
    [1186] = [[Located in Mistveil Tangle, Ardenweald. Spawns after killing several Bristlecone Terrors (which can be attacked after killing the Deranged Guardians). Randomly, one of them will call out for Gormtamer Tizo to save them, which will spawn Chompy (with Tizo on its back). Taming or killing Chompy will spawn Tizo.]],

    -- NPCs: 164197
    [1187] = [[Located in Halls of Atonement, Revendreth. Patrols the southern perimeter. Appears to phase out later in the zone quest chain and is probably unavailable for hunters who select the Threads of Fate advancement path.]],

    -- NPCs: 164198
    [1188] = [[Located in Halls of Atonement, Revendreth. Patrols the western perimeter. Appears to phase out later in the zone quest chain and is probably unavailable for hunters who select the Threads of Fate advancement path.]],

    -- NPCs: 164208
    [1189] = [[Located in Halls of Atonement, Revendreth. Soul Monitors initially look like statues. They don't appear on your beast tracker, or in their proper colour, until aggroed. Appears to phase out later in the zone quest chain and is probably unavailable for hunters who select the Threads of Fate advancement path.]],

    -- NPCs: 164391
    [1190] = [[Located in Shimmerbough, Ardenweald. Flies very high over the area. You can reach Old Ardeite by using the basket of fairy wings found in the first alcove to the left right as you enter Shimmerbough from the Heart of the Forest.]],

    -- NPCs: 164424
    [1191] = [[Located in Cocyrus, The Maw. This Mawsworn Seeker is limited to a special phase which is part of two known Shadowlands zone quest chains. If you already completed these quests you can return if you quest sync with someone who is still on them.The quest chains are: (i) The later Maldraxxus story arc in which you rescue Darion Mograine from the Maw. The story begins with The Maw. (ii) The later Revendreth story arc in which you rescue Prince Renathal from the Maw. There's only ever one Mawsworn Seeker present at a time and it can be slow to respawn, so if you don't see one you may have to wait a few minutes.]],

    -- NPCs: 164479
    [1192] = [[Located in The Necrotic Wake (Dungeon). Bonefang is the mount of Amarth and serves as the second boss in The Necrotic Wake. Taming Bonefang will prevent you continuing with the dungeon and it probably shouldn't be tameable at all. Consider taming a Flayedwing Fleshripper instead.]],

    -- NPCs: 164563
    [1193] = [[Located in Halls of Atonement (Dungeon).]],

    -- NPCs: 164587
    [1194] = [[Located in The Stabbing Wastes, Maldraxxus. Found in the west of the Stabbing Wastes, west of the Theater of Pain (43,48). Only one is ever up at a time, and will randomly spawn with or without horns.]],

    -- NPCs: 164847
    [1195] = [[Located in House of the Chosen, Maldraxxus. Found in multiple locations in the area. Friendly at first, it becomes hostile and tameable after completing the main story.]],

    -- NPCs: 164873, 165905, 167964, 168986, 171181, 171341, 171342
    [1196] = [[Located in De Other Side (Dungeon).]],

    -- NPCs: 165312
    [1197] = [[Located in Vestibule of Eternity, Bastion. Spawns during the World Quest, "Assault on the Vestibule".]],

    -- NPCs: 165336
    [1198] = [[Located in Hall of Chains, Maldraxxus. Found inside a hall in the north-east of the area.]],

    -- NPCs: 165349
    [1199] = [[Located in Hall of Chains & Separation Chamber, Maldraxxus.]],

    -- NPCs: 165404
    [1200] = [[Located in Ardenweald. Found north of the Glitterfall Basin flight point, close to the northern tip of the 'island'. It is the object of the quest What a Buzzkill.]],

    -- NPCs: 165460
    [1201] = [[Located in Tirna Vaal, Ardenweald. Spawns during the zone story quest Nightmares Manifest.]],

    -- NPCs: 165634
    [1202] = [[Located in Temple of Courage, Bastion. Found during the Necrolord-only quest, "Death Rains".]],

    -- NPCs: 165942
    [1203] = [[Located in Dominance Keep, Revendreth. Venthyr Covenant-only. Found during the quest, "Harvester of Wrath".]],

    -- NPCs: 165957
    [1204] = [[Located in The Necrotic Wake, Bastion. Found during the Necrolord-only quest, "Aerial Absolution".]],

    -- NPCs: 165960
    [1205] = [[Located in House of the Chosen, Maldraxxus. Only spawns during the world quest "The Spider on the Wall".]],

    -- NPCs: 165978
    [1206] = [[Located in Planes of Torment & Calcis, The Maw. Found in both the regular and the introductory quest phase for Shadowlands.]],

    -- NPCs: 166027, 171583
    [1207] = [[Located in The Necropolis, Nazmir. Night Fae-only. Found during the Night Fae Chapter, "Deal for a Loa".]],

    -- NPCs: 166177, 166453, 170288
    [1208] = [[Located in Citadel of Doubt, Bastion. Found during the Kyrian-only quest, "The Greater Good".]],

    -- NPCs: 166559
    [1209] = [[Located in Maldraxxus. Found at the very back of a cave in the mountain range south-east of the Theater of Pain, near the Predatory Bloodtusks. The entrance is at coordinates 57,53.]],

    -- NPCs: 166592
    [1210] = [[Located in Theater of Pain, Maldraxxus. Found in the zone starting arena. Phases out after the quest Champion the Cause.]],

    -- NPCs: 166676
    [1211] = [[Located in The Stitchyard, Maldraxxus. Kyrian and Necrolord Covenants only. Found during the quest "Charging the Blade".]],

    -- NPCs: 166679
    [1212] = [[Located in Chalice District, Revendreth. You can get Hopecrusher to appear by examining the 'Large Prey' bat corpse in a courtyard with a large tree in the south-east of the area.]],

    -- NPCs: 166735
    [1213] = [[Located in Mistveil Tangle, Ardenweald. Ridden by Bristlecone Terrors.]],

    -- NPCs: 167129
    [1214] = [[Located in Witherfall Ruin, Revendreth. Reza, and its companion Geza are pets of the rare NPC Huntmaster Petrus and can appear in the Witherfall Ruin area of south-east Revendreth. They can only be tamed after Petrus is defeated. They must be present and still alive when you defeat Petrus and you must tame them immediately afterwards, or they won't be tameable. Note that sometimes they're buggy and the tameable version doesn't appear after he's defeated.]],

    -- NPCs: 167139
    [1215] = [[Located in Witherfall Ruin, Revendreth. Geza, and its companion Reza are pets of the rare NPC Huntmaster Petrus and can appear in the Witherfall Ruin area of south-east Revendreth. They can only be tamed after Petrus is defeated. They must be present and still alive when you defeat Petrus and you must tame them immediately afterwards, or they won't be tameable. Note that sometimes they're buggy and the tameable version doesn't appear after he's defeated.]],

    -- NPCs: 167337
    [1216] = [[Located in Exile's Reach. If you're a gnome this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167342
    [1217] = [[Located in Exile's Reach. If you're a draenei this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167343
    [1218] = [[Located in Exile's Reach. If you're a blood elf this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167344
    [1219] = [[Located in Exile's Reach. If you're a goblin this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167345
    [1220] = [[Located in Exile's Reach. If you're a human this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167346
    [1221] = [[Located in Exile's Reach. If you're an orc this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167347
    [1222] = [[Located in Exile's Reach. If you're a night elf or Alliance pandaren this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167348
    [1223] = [[Located in Exile's Reach. If you're a Horde pandaren this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167349
    [1224] = [[Located in Exile's Reach. If you're a tauren this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167350
    [1225] = [[Located in Exile's Reach. If you're a troll this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167351
    [1226] = [[Located in Exile's Reach. If you're undead this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167352
    [1227] = [[Located in Exile's Reach. If you're a worgen this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167375
    [1228] = [[Located in Exile's Reach. If you're a dwarf this beast can be found on the ship during the intro to Exile's Reach. It's friendly at this stage, but can be tamed at a much later stage, during the quest The Art of Taming.]],

    -- NPCs: 167433
    [1229] = [[Located in Shattered Span, Bastion. Spawns during the quest The Final Countdown. Taming it will reset this quest.]],

    -- NPCs: 167508
    [1230] = [[Located in Vault of the Archon, Bastion. Spawns and attacks during the quest The Vault of the Archon.]],

    -- NPCs: 167719
    [1231] = [[Located in Halls of Atonement, Revendreth. Found in a hidden crypt below the parapets on the north-east side of the Halls of Atonement, coordinates ~ 66,43. Inside the arched gallery at this location one of the sconces on the wall can be activated, revealing a secret staircase down to the crypt.]],

    -- NPCs: 167721
    [1232] = [[Located in Ardenweald. Found in A Strange Cloud, just north of Hibernal Hollow.. Requires proper placement of a freezing trap in order to stun it before you fall asleep.]],

    -- NPCs: 167848
    [1233] = [[Located in Dusky Grotto, Ardenweald. Found during the Night Fae-only quest "Cleansing the Forest".]],

    -- NPCs: 167851
    [1234] = [[Located in Dusty Burrows, Ardenweald. Spawns after you click on sufficient Quivering Gorm Eggs during the vignette event "Unguarded Gorm Eggs". This event may be found in a burrow in the west of the area.]],

    -- NPCs: 168008
    [1235] = [[Located in Gormhive Defense Wall, Ardenweald. This version of the Rootstinger Warrior spawns in northern Gormhive and flies north to Gormhive Defense Wall, Claw's Edge and Kaithe Overlook. It doesn't spawn as frequently as the Rootstinger Swarmlings it accompanies.]],

    -- NPCs: 168135
    [1236] = [[Located in Dreamshrine Basin, Ardenweald. This rare NPC is normally invisible and requires a Dream Catcher to see. This item can be assembled as part of a special activity to obtain the Swift Gloomhoof mount. See that page for more information.]],

    -- NPCs: 168153
    [1237] = [[Located in Plaguefall (Dungeon). Found in a number of locations throughout the dungeon.]],

    -- NPCs: 168192
    [1238] = [[Located in Valley of a Thousand Legs, Maldraxxus. Found in isolated locations: in the north-east corner of the Valley of a Thousand Legs (south-east of the Theater of Pain), and just to the west of the northern entrance of the Theater of Pain.]],

    -- NPCs: 168258
    [1239] = [[Located in Maldraxxus. Gristled Hatchlings spawn when you destroy Unusual Eggs, found east of the Theater of Pain at the foot of jagged peaks.]],

    -- NPCs: 168306
    [1240] = [[Located in Shimmerbough, Ardenweald. Only spawns during the world quest "Pupa Trooper".]],

    -- NPCs: 168310
    [1241] = [[Located in Plaguefall (Dungeon). Initially appears during a scripted event just inside the dungeon entrance, then circles the nearby plague lake.]],

    -- NPCs: 168361
    [1242] = [[Located in Plaguefall (Dungeon).]],

    -- NPCs: 168402
    [1243] = [[Located in Greatwing Roost, Bastion. Darkwing can be summoned when you are on the quest WANTED: Darkwing. She isn't phased and can also be accessed if someone else summons her.]],

    -- NPCs: 168424
    [1244] = [[Located in Maldraxxus. Flies circuits over Hall of Chains, House of Constructs, and The Stitchyard.]],

    -- NPCs: 168453
    [1245] = [[Located in Glutharn's Decay, Maldraxxus. Has a unique green anima effect to it.]],

    -- NPCs: 168579
    [1246] = [[Located in Plaguefall (Dungeon). Spawns when you attack a Hatchling Nest.]],

    -- NPCs: 168591, 171455
    [1247] = [[Located in Sanguine Depths (Dungeon).]],

    -- NPCs: 168850
    [1248] = [[Located in The Banewood, Revendreth. Spawns when you destroy a Fearspinner Sac.]],

    -- NPCs: 169160
    [1249] = [[Located in Dredhollow, Revendreth. Summoned by Hopebreaker Vilstav during combat.]],

    -- NPCs: 169263
    [1250] = [[Located in Bastion. Found in a grassy area just north of the entrance of Temple of Humility, and just across the road on the eastern border of The Golden Pasture.]],

    -- NPCs: 169276
    [1251] = [[Located in Dreamshrine Basin, Ardenweald. Spawns during the zone story quest The Restless Dreamer when you attune the shrine in Dreamshrine Basin.]],

    -- NPCs: 169732
    [1252] = [[Located in Separation Chamber, Maldraxxus. Found in the watery area to the north of the Hall of Chains.]],

    -- NPCs: 169823, 173114
    [1253] = [[Located in Torghast, Tower of the Damned (Dungeon).]],

    -- NPCs: 169840, 169841
    [1254] = [[Located in Forgotten Chamber, Revendreth. Only accessible during the world quest "Major Mirror Disruptions".]],

    -- NPCs: 169972, 169974, 169975, 169976, 169977
    [1255] = [[Located in Crumbled Ridge, Ardenweald. Spawns when you get near the Decayed Husk treasure.]],

    -- NPCs: 170007
    [1256] = [[Located in Bastion. Flies over a pool to the west of Shimmering Pools, in the north-west of Bastion.]],

    -- NPCs: 170184
    [1257] = [[Located in Bastion. Found along the cliffs north-west of The Eternal Forge, in small numbers. It can be hard to reach, but occasionally one flies lower.]],

    -- NPCs: 170331, 170332
    [1258] = [[Located in Bastion. Flitters close to the edge of the cliff on a rise north of Everdawn Terrace. There seems to be only one of this creature.]],

    -- NPCs: 170659
    [1259] = [[Located in Bastion. May spawn on the hill directly south-west of Hero's Rest, among the Argentwing Larions. He will spawn if you are close to the top of the ridge and see a 'purple eyes' symbol above your character, at coordinates ~ 49,50. He takes a very long time to spawn, during which you'll receive four warning messages, starting with "You feel as if you are being watched from above." and ending with "A challenging roar echoes over the hills!".]],

    -- NPCs: 170699
    [1260] = [[Located in Furrowed Glen, Ardenweald. Found at a den set in the roots of a giant tree, in the north of Furrowed Glen.]],

    -- NPCs: 170723
    [1261] = [[Located in Shattered Grove. Shattered Grove is actually another realm, but can be reached through the Maldraxxus quest Working For The Living. It's possible that this realm is only accessible via that quest.]],

    -- NPCs: 170767
    [1262] = [[Located in Dusty Burrows, Ardenweald. Spawns during the world quest "Gormageddon".]],

    -- NPCs: 170781, 170785
    [1263] = [[Located in Bleak Redoubt, Maldraxxus. Only appears during the zone quest The Door to the Unknown, when the Seat of the Primus is under attack. Stay up on the Redoubt and wait for one to circle past and tame it quickly.]],

    -- NPCs: 170847
    [1264] = [[Located in Mistveil Tangle, Ardenweald. Only spawns during the world quest "A Night in the Woods".]],

    -- NPCs: 170923
    [1265] = [[Located in House of the Chosen, Maldraxxus. Friendly to begin with, this beast becomes hostile after nearly completing the main story.]],

    -- NPCs: 170932
    [1266] = [[Located in Garden of Respite, Bastion. Spawns after killing several Anima-Starved Cloudfeathers, then patrols the area.]],

    -- NPCs: 170933
    [1267] = [[Located in Mistveil Tangle, Ardenweald. Occasionally spawns during the world quest, A Night in the Woods. During this quest, the friendly Wild Hunt cycles through six clearings and defeats different attackers. This gorm has a chance of spawning in the north-west clearing, but since encounters can vary between cycles it might take a few rounds before they appear.]],

    -- NPCs: 170969
    [1268] = [[Located in Unyielding Assembly, Maldraxxus. Friendly to begin with, this beast becomes hostile after nearly completing the main story.]],

    -- NPCs: 171017
    [1269] = [[Located in Bastion. In a cave just west of Hero's Rest. The cave contains the Abandoned Stockpile treasure.]],

    -- NPCs: 171827
    [1270] = [[Located in Dusty Burrows, Ardenweald. May spawn when you click on Quivering Gorm Eggs during the vignette event "Unguarded Gorm Eggs". This event may be found in a burrow in the west of the area.]],

    -- NPCs: 172045
    [1271] = [[Located in The Eonian Archives, Bastion. Perched on ridges around the area, these larions are very difficult to reach without flying.]],

    -- NPCs: 172053
    [1272] = [[Located in Bastion. Found just southeast of Hero's Rest attacking Heraclor. Only spawns during the World Quest, "March of the Eternal Protector".]],

    -- NPCs: 172390
    [1273] = [[Located in Unyielding Assembly, Maldraxxus. Available after completing the main story. Located at the back of the House of the Chosen.]],

    -- NPCs: 172628
    [1274] = [[Located in Ossein Foundry, Maldraxxus. Spawns during the Maldraxxi-only quest "Follow Me".]],

    -- NPCs: 172703, 172704
    [1275] = [[Located in Firstborne's Bounty, Bastion. Spawns during the world quest, "Drought Conditions".]],

    -- NPCs: 173045, 173046
    [1276] = [[Located in Bony Spindles, Maldraxxus. Spawns only during the world quest, "Drawing out the Poison".]],

    -- NPCs: 173393
    [1277] = [[Located in Forgotten Chamber, Revendreth. Found during the world quest, "Major Mirror Disruptions".]],

    -- NPCs: 173409
    [1278] = [[Located in Gormhive, Ardenweald. This gorm is only available to players who join The Ascended (Kyrian) covenant, and only appears during a single covenant quest, Piercing the Shell, which is part of the "The Path of Ascension" storyline. It can be found at the southern end of Gormhive.]],

    -- NPCs: 173635
    [1279] = [[Located in Ardenweald. Shadow Croaker appears randomly at one of at least eight possible locations around the edge of Ardenweald. See this map for known locations, but there are probably more we haven't found yet. It is initially stealthed and very hard to see, but it can be detected on your minimap if you have Track Hidden enabled. If you get too close it will run away and move to a different location. You need to approach just close enough to use a Freezing Trap on it, then tame away!]],

    -- NPCs: 173834
    [1280] = [[Located in Chill's Reach. Found during the Necrolord-only quest, A Brokered Deal.]],

    -- NPCs: 173855
    [1281] = [[Located in Dusky Grotto, Ardenweald. Appears during the Night Fae-only quest Cleansing the Forest, which is offered at renown level 8. These cobras appear later during the Dambala fight and you may need to use Aspect of the Turtle to avoid dying while taming. If you're in a shapeshifted form you'll also need to exit the form first. The quest appears to be phased to Night Fae only, so the Shadow of Dambala can only be tamed by a hunter in that covenant. If you miss out, it may be possible to tame one summoned during another Night Fae player's quest.]],

    -- NPCs: 173940
    [1282] = [[Located in Banks of Life, Ardenweald. Found on the small patch of land between the two waterfalls at 48, 21. Spawns during the weekly Necrolord Abominable Stitching quest Asset Extraction, offered by Atticus. It can be seen and tamed by other players.]],

    -- NPCs: 174552
    [1283] = [[Located in Maldraxxus. Necrolord-only initially. Can be created in the Abomination Stitchyard and summoned by the item, Construct's Best Friend. It will initially spawn as a guardian to the one whom summoned it, but can be released and made into a neutral NPC which can then be tamed.]],

    -- NPCs: 175265
    [1284] = [[Located in Maldraxxus. Found immediately east of The Stitchyard. Should retain its name.]],

    -- NPCs: 175478
    [1285] = [[Located in Maldraxxus. Spawns near the entrance to the House of Rituals and follows the path west to a point south of the House of Eyes.]],

    -- NPCs: 175811
    [1286] = [[Located in Desolate Hollow, The Maw. Desolate Hollow is a cave in the Calcis area, with entrance at coordinates ~ 21,39.]],

    -- NPCs: 175818, 175819, 175820
    [1287] = [[Located in Desmotaeron, The Maw. Loses spectral effect upon taming.]],

    -- NPCs: 175860
    [1288] = [[Located in Cocyrus, The Maw. Has a unique spectral effect that it, sadly, loses upon being tamed.]],

    -- NPCs: 176338
    [1289] = [[Located in Mistveil Tangle, Ardenweald. Occasionally spawns during the world quest, A Night in the Woods. During this quest, the friendly Wild Hunt cycles through six clearings and defeats different attackers. This gorm has a chance of spawning in the south-west clearing, but since encounters can vary between cycles it might take a few rounds before they appear.]],

    -- NPCs: 177302
    [1290] = [[Located in Windswept Aerie, Korthia. Found inside the caverns]],

    -- NPCs: 177334
    [1291] = [[Located in Gromit Hollow, Korthia. The Gromit Hollow cave system can be entered from the Windswept Aerie. Nyemi was actually added in Patch 9.1, but a bug made her spawn underneath the terrain and she couldn't be reached. She was fixed in Patch 9.1.5.]],

    -- NPCs: 177335, 180524
    [1292] = [[Located in Gromit Hollow, Korthia. The Gromit Hollow cave system can be entered from the Windswept Aerie.]],

    -- NPCs: 177336
    [1293] = [[Located in Gromit Hollow, Korthia. The Gromit Hollow cave system can be entered from the Windswept Aerie. Zelnithop only seems to appear some days, and will be located on a rise at the very back of the cave.]],

    -- NPCs: 177422, 177441, 177442, 177443, 177444, 177445
    [1294] = [[Located in Helgarde Keep, The Maw.]],

    -- NPCs: 178050
    [1295] = [[Located in Dominance Keep, Revendreth. This version of the Loyal Granitefur only appears during the quest, Hunting Huln, which is part of the Patch 9.1 campaign story. It is found on the eastern side of Dominance Keep and is easier to tame while you're not disguised, otherwise it may dispel your disguise and teleport you back to the start before you can finish the tame. The stone variant appears to be much rarer than the other two colours.]],

    -- NPCs: 178148, 178149
    [1296] = [[Located in The Tremaculum, The Maw. Found if a Venthyr Assault is active and the quest Fangcrack's Fan Club is offered (this doesn't happen every time). This is one of the random beasts that Fangcrack may pull out of the portal for you to kill.]],

    -- NPCs: 178283
    [1297] = [[Located in Revendreth. Found on an isolated piece of land that floats off the south-west edge of the zone. You can reach there by flying, but it can also be reached via the Maw when a Venthyr Assault is active, by taking one of the mirrors surrounding the final boss of the Assault.]],

    -- NPCs: 178507
    [1298] = [[Located in Deserted Overlook, Zereth Mortis. Spawns during the quest Knocking On Death's Door. To remain in the phase with it, you need to use a cushion toy, and immediately click on it after clicking on Kbato. You will ride Kbato, but when you hop off you can then interact with the Tarachnid.]],

    -- NPCs: 178626, 178630
    [1299] = [[Located in Sanctum of Domination (Raid).]],

    -- NPCs: 178743
    [1300] = [[Located in Ardenweald. Only present during the "Battle for Ardenweald" scenario.]],

    -- NPCs: 178937
    [1301] = [[Located in Ta Repository, Bastion. Only found during the quest, Dead Drop, part of a Broker storyline added in Patch 9.1.]],

    -- NPCs: 178963
    [1302] = [[Located in The Sepulcher of the First Ones, Zereth Mortis. Found north of the raid entrance.]],

    -- NPCs: 179043
    [1303] = [[Located in Zereth Mortis. Found in the south-east of the zone, on a rise overlooking the main circular road. It will not be up at the same time as the Overgrown Helicid.]],

    -- NPCs: 179939
    [1304] = [[Located in Choral Residium, Zereth Mortis. Found in a cave in the cliffs to the south-east of the Forge of Afterlives. It loses its Maw-corruption effect upon taming.]],

    -- NPCs: 180678
    [1305] = [[Located in Korthia. Found around the northern zone entrance, Keeper's Respite, and the nothern tip of Sanctuary of Guidance.]],

    -- NPCs: 180705, 191509, 191672, 191903, 193925
    [1306] = [[Located in Scalecracker Keep, The Waking Shores.]],

    -- NPCs: 180924
    [1307] = [[Located in Garudeon's Nest, Zereth Mortis. Summoning Garudeon requires finding three Energizing Leporids in the general area near Garudeon's nest. After feeding the three hatchlings the Leporids, Garudeon will appear.]],

    -- NPCs: 181211
    [1308] = [[Located in House of Plagues, Maldraxxus. Can be found flying around the tops of mushrooms in the north-eastern section of the House of Plagues.]],

    -- NPCs: 181212
    [1309] = [[Located in Citadel of Loyalty, Bastion. Found at limited locations around the Citadel. Two can be found flying by the western edge of the main area and a third can be found sitting on the ground in a plaza further east.]],

    -- NPCs: 181213
    [1310] = [[Located in The Eternal Forge, Bastion. These non-aggressive mechanical gryphons can be found at at least five locations around the Eternal Forge.]],

    -- NPCs: 181359, 181383, 181484
    [1311] = [[Located in Provis Fauna, Zereth Mortis. It loses its Maw-corruption effect upon taming.]],

    -- NPCs: 181861
    [1312] = [[Located in Neltharus (Dungeon).]],

    -- NPCs: 182363
    [1313] = [[Located in Catalyst Gardens, Zereth Mortis. The red and bronze variants of this annelid seem to be far rarer than the other two colours (perhaps only a tenth of the frequency).]],

    -- NPCs: 183265
    [1314] = [[Located in Fissured Breach, Zereth Mortis. There appears to only be one NPC with this ID. It is found on the eastern side of Fissured Breach (at roughly 1 o'clock on the zone's circular road), on a pinnacle of rock off the south side of the road.]],

    -- NPCs: 183291
    [1315] = [[Located in Zereth Mortis. Can be found in at least four locations: One circles around the southeastern area of the zone. Another one flies between the main landmass and the Sepulcher of the First Ones. Another flies between the northern mountains and the center of the zone. Another flies between the center of the zone and the western mountains.]],

    -- NPCs: 183340, 192351, 192486, 192487
    [1316] = [[Located in Big Tree Hills, The Azure Span.]],

    -- NPCs: 183610
    [1317] = [[Located in The Sepulcher of the First Ones, Zereth Mortis. Found outside the raid entrance.]],

    -- NPCs: 183764
    [1318] = [[Located in Zovaal's Grasp, Zereth Mortis. Initially, Zatojin cannot be attacked. To activate it, you need to accumulate 20 stacks of Paralytic Sting from the nearby Menacing Vespoid Workers.]],

    -- NPCs: 183925
    [1319] = [[Located in Fissured Breach, Zereth Mortis. Found atop the high cliffs in northern Fissured Breach. In the absence of flying you will need to unlock teleporter points until you can reach it.]],

    -- NPCs: 183984
    [1320] = [[Located in Bluefeather Cliffs, Thaldraszus. Located in a cave on a terrace above most of the harpy caves in Bluefeather Cliffs. The cave entrance is around 47.5, 71.9. Follow the cave to the very back, where you'll find a goblin named Boomhooch the Lost. If you speak to Boomhooch and offer to rescue him it will induce the Vilomah to spawn.]],

    -- NPCs: 184023
    [1321] = [[Located in Uldaman: Legacy of Tyr (Dungeon).]],

    -- NPCs: 184403
    [1322] = [[Located in The Great Veldt, Zereth Mortis. Summoned by Vexis during combat.]],

    -- NPCs: 184804
    [1323] = [[Located in Untamed Verdure, Zereth Mortis. The Unbroken spawns as a trio of worms, each with a different NPC ID, but only the one with this ID is tameable. They can appear in two colours, and if you're unlucky you may have to kill all of them and wait for respawns until your desired colour appears. Their respawn time is only a few minutes.]],

    -- NPCs: 185266
    [1324] = [[Located in Catalyst Gardens & Plain of Actualization, Zereth Mortis. Can spawn in various locations around Zereth Mortis.]],

    -- NPCs: 185451
    [1325] = [[Located in Catalyst Gardens, Zereth Mortis. Upon reaching you, Gardens Avians with this ID will start to rise into the sky and despawn, so start to tame from a distance! A frost trap does not prevent them despawning.]],

    -- NPCs: 185487
    [1326] = [[Located in Zereth Mortis. Found in the south-east of the zone, on a rise overlooking the main circular road. It will not be up at the same time as Orixal.]],

    -- NPCs: 185505
    [1327] = [[Located in Droning Precipice, Zereth Mortis. Summoned by Feasting during combat.]],

    -- NPCs: 185944
    [1328] = [[Located in Zovaal's Grasp, Zereth Mortis. Summoned by Zatojin during combat.]],

    -- NPCs: 186399
    [1329] = [[Located in Kauriq Gleamlet, The Azure Span. Spawns during the quest, "Ice Breakers".]],

    -- NPCs: 186622, 195448
    [1330] = [[Located in Dragonbane Keep, The Waking Shores.]],

    -- NPCs: 186684
    [1331] = [[Located in Scalecracker Keep; Dragonheart Outpost, The Waking Shores.]],

    -- NPCs: 187111
    [1332] = [[Located in Wild Coast, The Waking Shores. Found in a cave at the northern end of the Wild Coast.]],

    -- NPCs: 187336, 187337, 195635
    [1333] = [[Located in The Flowing Forest, Thaldraszus. Loses Time Effect upon taming.]],

    -- NPCs: 187415
    [1334] = [[Located in Bluefeather Cliffs, Thaldraszus. In the eastern cave.]],

    -- NPCs: 188128
    [1335] = [[Located in Ohn'ahran Plains. Found in a cave west of Rusza'thar Reach]],

    -- NPCs: 189744
    [1336] = [[Located in Passage of Time, Thaldraszus. The green and white variants make sounds when clicked on, the orange does not.]],

    -- NPCs: 190708
    [1337] = [[Located in Ohn'ahran Plains. Part of the zone story quest, "Connection to Ohn'ahra". Located at the river ford approximately mid-way between Maruukai and Rusza'thar Reach.]],

    -- NPCs: 190730
    [1338] = [[Located in The Azure Span. Just west of Three-Falls Lookout. Spawns during the quest, "Water Safety".]],

    -- NPCs: 191496
    [1339] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses its lightning effect after taming.]],

    -- NPCs: 191541
    [1340] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses its lightning effect upon taming.]],

    -- NPCs: 191545
    [1341] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses its electrical effect upon taming. The vultures with this ID are on the ground.]],

    -- NPCs: 191551
    [1342] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses its electrical effect upon taming. The vultures with this ID are flying in the air.]],

    -- NPCs: 191621
    [1343] = [[Located in The Waking Shores. In a cave roughly north of Dragonheart Outpost and south of Scalecracker Keep. Entrance is on the north side of the rocky hill.]],

    -- NPCs: 191628
    [1344] = [[Located in The Waking Shores. Found in several volcanic locations: Burning Ascent, Conservatory Outpost, Scalecracker Keep, and the coast south of Dragonbane Keep.]],

    -- NPCs: 191637
    [1345] = [[Located in The Waking Shores. To the south of Scalecracker Keep.]],

    -- NPCs: 191639
    [1346] = [[Located in Fluttering Cavern and the waterways north of Dragonheart Outpost, The Waking Shores. The blue butterflies make sounds when clicked on, the red and purple do not.]],

    -- NPCs: 191645
    [1347] = [[Located in The Waking Shores. On the green rise south of Scalecracker Keep, and on the ridges east and south of Hornswog Hollow.]],

    -- NPCs: 191647
    [1348] = [[Located in The Waking Shores. On the green rise south of Scalecracker Keep.]],

    -- NPCs: 191665
    [1349] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses electrical effect upon taming.]],

    -- NPCs: 191678
    [1350] = [[Located in Emberflow & Scalecracker Keep, The Waking Shores.]],

    -- NPCs: 191790
    [1351] = [[Located in The Waking Shores. Found in battle with Lava Snails at a couple of spots along the coastal inlet in the south-west of the zone - just south of Dragonbane Keep and north of Apex Canopy.]],

    -- NPCs: 192430
    [1352] = [[Located in Burning Ascent, The Waking Shores. Located at the very back of a cave in southern Burning Ascent.]],

    -- NPCs: 192739
    [1353] = [[Located in Azure Archives, The Azure Span. Found on the top platform. Its name changes to "Soothed Wyrm" after you stabilize the platform, but it has the same ID.]],

    -- NPCs: 192949, 192950, 192951, 192952
    [1354] = [[Located in Ohn'ahran Plains. Located in a cave on top of the cliff south of Primordial Vale. The vale is the forest roughly south of Broadhoof Outpost.]],

    -- NPCs: 193063, 195708
    [1355] = [[Located in Slyvern Plunge, The Azure Span. Loses its purple effect upon taming.]],

    -- NPCs: 193139
    [1356] = [[Located in Dragonbane Keep, The Waking Shores. Found along a lava course to the south of the keep, in the far west of the area.]],

    -- NPCs: 193177
    [1357] = [[Located in Apex Canopy, The Waking Shores. Beakers appears rarely and runs circuits around the area. Despite being a named NPC, Beakers can appear in one of two colours - black or white. Like other pets, its colour becomes stable when tamed.]],

    -- NPCs: 193201
    [1358] = [[Located in Timbertooth Trail, The Azure Span. Not always present. Found on an island in the river, west of the 'N' in Camp Nowhere on the main map. Possibly spawned by attacking the Muckling NPCs.]],

    -- NPCs: 193217
    [1359] = [[Located in Overflowing Rapids, The Waking Shores. Flies a long path through the area.]],

    -- NPCs: 193236
    [1360] = [[Located in Restless Wetlands, The Waking Shores. Spawns whenever Gorjo the Crab Shackler is up.]],

    -- NPCs: 193254
    [1361] = [[Located in Ohn'ahran Plains. Bloodgullet is invisible to you until you click on the Essence of Awakening, which is a pile of purple dust found in a hut at approximately 85.7,20.8 in the Ohn'ahran Plains (on the zone map, it's between the S and T in "TIMBERSTEP"). This gives you an hour-long buff that allows you to see Bloodgullet, who can be found wadering the meadows roughly south-east of the Maruukai flight point and north of the river (around 66.0,43.0).]],

    -- NPCs: 193266
    [1362] = [[Located in Fluttering Cavern, The Waking Shores. Spawns after you collect a large number of of butterflies for Collector Zik, who is located at the cavern entrance. The entrance to Fluttering Cavern is in the upper rock face of the spur south of Wild Preserve, in the south-west of the zone. Speak to Collector Zik to begin collecting, or if you want some idea of your progress.]],

    -- NPCs: 193427, 193429
    [1363] = [[Located in Creektooth Den, The Azure Span. Loses the diseased effect upon being tamed.]],

    -- NPCs: 193428
    [1364] = [[Located in Creektooth Den, The Azure Span. Loses its diseased effect upon being tamed.]],

    -- NPCs: 193521
    [1365] = [[Located in The Waking Shores; Ohn'aran Plains. Found in the Cliffdrip Cave to the south of Wild Preserve in the Waking Shores, and Clearwater Basin in Ohn'aran Plains.]],

    -- NPCs: 193596
    [1366] = [[Located in The Waking Shores. Loses harpoons and anchor after taming.]],

    -- NPCs: 193723
    [1367] = [[Located in Ohn'ahran Plains. Found in a cave east of Ohn'iri Springs.]],

    -- NPCs: 193725
    [1368] = [[Located in Ohn'ahran Plains. Found in a large cave east of Ohn'iri Springs. There are Mossy Armoredons at the entrance.]],

    -- NPCs: 193854
    [1369] = [[Located in Dragon Isles. There's a chance this beast will appear when you use an Elusive Creature Bait in some watery areas of the Dragon Isles, including The Waking Shores, Ohn'ahran Plains, Thaldraszus, Emerald Dream, and much of Zaralek Cavern (including drier areas). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 193859
    [1370] = [[Located in Ohn'ahran Plains; The Waking Shores. There's a chance this beast will appear when you use an Elusive Creature Bait in many parts of the Ohn'ahran Plains and The Waking Shores. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 193861
    [1371] = [[Located in Dragon Isles. There's a chance this beast will appear when you use an Elusive Creature Bait in areas of the Waking Shores that contain magma flows, or in the magma flows in the west of Zaralek Cavern (just east and below the Zaqali Caldera). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 193873
    [1372] = [[Located in The Waking Shores; The Forbidden Reach. There's a chance this beast will appear when you use an Elusive Creature Bait in some watery areas of The Waking Shores and some coastal areas of The Forbidden Reach. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 193891
    [1373] = [[Located in Ohn'ahran Plains; The Azure Span. There's a chance this beast will appear when you use an Elusive Creature Bait in limited areas of the Ohn'ahran Plains and The Azure Span, including Emerald Gardens, Lilac Ramble, Primordial Vale, Cloverwood Hollow, Drake Eye's Pond, and Timbertooth Trail. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 193892
    [1374] = [[Located in The Azure Span; Ohn'ahran Plains. There's a chance this beast will appear when you use an Elusive Creature Bait in The Azure Span and some forested parts of the Ohn'ahran Plains. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 193986
    [1375] = [[Located in The Azure Span; The Forbidden Reach. There's a chance this beast will appear when you use an Elusive Creature Bait in The Azure Span and the slyvern areas in the west of The Forbidden Reach (just across the water from Morqut Islet). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 194020
    [1376] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses its electrical effect upon taming.]],

    -- NPCs: 194021
    [1377] = [[Located in Sagecrest Pines, Ohn'ahran Plains. Loses its electrical effect upon taming. Found by cave in the eastern part of Sagecrest Pines.]],

    -- NPCs: 194085
    [1378] = [[Located in Ohn'ahran Plains; Thaldraszus. There's a chance this beast will appear when you use an Elusive Creature Bait in Thaldraszus and the Ohn'ahran Plains. This bait item can only be crafted and used by players with Dragon Isles Skinning. To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 194102
    [1379] = [[Located in The Azure Span. There's a chance this beast will appear when you use an Elusive Creature Bait in The Azure Span. To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 194103
    [1380] = [[Located in The Azure Span. There's a chance this beast will appear when a player with Dragon Isles Skinning uses an Elusive Creature Bait right outside the bear cave at Slyvern Plunge in The Azure Span (coords ~ 64.4,30.3). Note that this bear can spawn in any of 5 different colours, and it's also possible for quite a few other Elusive creatures to be summoned to this location, so it may take many, many tries to attract the one you want to tame! Also note that if you've placed 40 points into Bait Mastery (Dragon Isles Skinning specialisation) it's likely you'll first summon a rare Elusive Elder Frigidpelt - which you'll have to kill and skin before anything else has a chance of appearing. While the base cooldown on using the bait is 12 hours, you can reduce it by at least 10 minutes for every creature you skin (this reduction improves as you advance the Mastery skill). So if you go to a good skinning area you might be able to use a new bait in 15 minutes or less. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization and spend at least 10 points of Knowledge in it. It's also important to note that you must spend 20 points in the Mastery subspecialization in order to have a chance of summoning Elites. See Wowhead's Dragon Isles Skinning Guide for an overview of how Skinning (and Elusive Creature Bait) works.]],

    -- NPCs: 194242
    [1381] = [[Located in The Azure Span. Found in a cave east of Iskaara.]],

    -- NPCs: 194489
    [1382] = [[Located in Drake Eye's Pond, The Azure Span. There's a chance this beast will appear when you use an Elusive Creature Bait around Drake Eye's Pond (coords ~ 23,33). Elusive Rares can only be summoned if you spend 40 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel), and they can normally be killed and skinned just once a day. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 194568
    [1383] = [[Located in Ohn'ahran Plains. Spawns during the Grand Hunt event, west of Pinewood Post.]],

    -- NPCs: 194750
    [1384] = [[Located in Ohn'ahran Plains. Located west of Broadhoof Outpost. Found on the ground, not flying.]],

    -- NPCs: 195409
    [1385] = [[Located in Nokhudon Hold, Ohn'ahran Plains. Spawns on top of the forge in the far west of Nokhudon Hold. She only spawns on days when the Aylaag Camp is located at Eaglewatch Outpost (south of Maruukai and west of Cloverwood Hollow).]],

    -- NPCs: 195709
    [1386] = [[Located in Sylvan Glade, Ohn'ahran Plains. Only appears during the world quest, Low Hanging Fruit.]],

    -- NPCs: 196398
    [1387] = [[Located in Dragonbane Keep, The Waking Shores. Just southwest of Dragonbane Keep.]],

    -- NPCs: 196523
    [1388] = [[Located in Teerakai, Ohn'ahran Plains. Friendly.]],

    -- NPCs: 196674
    [1389] = [[Located in Tyrhold Reservoir, Thaldraszus. Buffleheaded Waterfowl with this ID can be found flying about the reservoir.]],

    -- NPCs: 197914
    [1390] = [[Located in Ohn'ahran Plains. Summoned by Norbett (Grand Hunt boss) during combat. When he appears, this boss spawns along the river north of Timberstep Outpost.]],

    -- NPCs: 198313
    [1391] = [[Located in Lev'al Rock Isle, The Azure Span. Can be found parading around the island with a drake skull on its back. The skull is lost upon taming. Lev'al Rock Isle is located a long distance south-west of the Azure Archives, beyond the fatigue line and close to the southern border of the map.]],

    -- NPCs: 198314
    [1392] = [[Located in Lev'al Rock Isle, The Azure Span. Can be found parading around the island with a large vertebra on its back. The vertebra is lost upon taming. Lev'al Rock Isle is located a long distance south-west of the Azure Archives, beyond the fatigue line and close to the southern border of the map.]],

    -- NPCs: 198428
    [1393] = [[Located in Thaldraszus. Found in the east of The Temporal Conflux, on a cliff behind the northern side of the main building. The green and white variants make sounds when clicked on, the orange does not.]],

    -- NPCs: 199194, 199195
    [1394] = [[Located in Thaldraszus. Located in a cave southeast of Algeth'era.]],

    -- NPCs: 199248
    [1395] = [[Located in Thaldraszus. Found in a limited range just south-west of Algeth'ar Academy. Only the white variant makes sounds when clicked.]],

    -- NPCs: 199533
    [1396] = [[Located in The Lost Atheneum, The Forbidden Reach. Spawns during the quest, "Inheritance".]],

    -- NPCs: 199544
    [1397] = [[Located in Gelikyr Gardens & Tyrhold Reservoir, Thaldraszus. Found on rock ledges half way up the cliff on the east and north-east sides of Tyrhold Reservoir. They respawn quickly, so if the colour you're after isn't present you can just keep taming and releasing gryphons until it appears.]],

    -- NPCs: 200450
    [1398] = [[Located in Suffusion Camp: Frostburn, The Azure Span. Spawns during Fyrakk Assaults.]],

    -- NPCs: 201579
    [1399] = [[Located in Molten Crucible, Aberrus, the Shadowed Crucible (Raid). Magmorax can be reached quickly in solo LFR mode by speaking to the NPC, Luka Ferad right next to the stairs inside the Seat of the Aspects and queuing for 'Neltharion's Shadow'. But to reach Magmorax in the regular raid you have to defeat the first six bosses: the first is Kazzara, followed by Amalgamation Chamber and Forgotten Experiments on the left side of the raid, and Assault of the Zaqali and Rashok, the Elder on the right (it doesn't matter if you go left or right first). The doors to Zskarn (centre, top) will now be unlocked. After defeating Zskarn you can drop down through a slot in the balcony floor to the magma below. Kill all the Voracious Magma Worms surrounding the central platform to activate Magmorax. Note that this boss will respawn very soon after taming, so you can tame another, or kill it! It's possible that using the raid skip will prevent you reaching this boss.]],

    -- NPCs: 202317
    [1400] = [[Located in Sulfur Wastes, Zaralek Cavern. Can spawn during the Researchers Under Fire event, during the "Neutralizing the Contaminant" and "Hostile Investigators" phases. You'll have to be quick and tame it before others doing the event grab threat.]],

    -- NPCs: 202339, 202341
    [1401] = [[Located in Zul'Gurub (Dungeon). Found throughout the instance.]],

    -- NPCs: 202506
    [1402] = [[Located in Caldera of the Menders, The Forbidden Reach. There's a chance this beast will appear when you use an Elusive Creature Bait at the Caldera of the Menders in The Forbidden Reach. Note that if you have your Bait Mastery subspecialisation maxxed you'll summon an Elusive Auric Argali which you'll need to kill and skin before you can summon this beast. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 202510
    [1403] = [[Located in Caldera of the Menders, The Forbidden Reach. There's a chance this beast will appear when you use an Elusive Creature Bait at the Caldera of the Menders in The Forbidden Reach. Note that if you've placed 40 points into Bait Mastery (Dragon Isles Skinning) it's likely you'll first summon an Elusive Auric Argali - which you'll have to kill and skin before you can summon anything else. To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 203342, 203343
    [1404] = [[Located in The Crystal Fields, Zaralek Cavern. Found in a cave in western Crystal Fields.]],

    -- NPCs: 203348
    [1405] = [[Located in Zaralek Cavern. Found in a cave in western Crystal Fields.]],

    -- NPCs: 203625
    [1406] = [[Located in Zaralek Cavern. Found north of Glimmerogg. Rares in Zaralek Cavern do not spawn every day, and don't even begin to spawn until the zone has been loaded for at least half an hour.]],

    -- NPCs: 203734
    [1407] = [[Located in The War Creche, The Forbidden Reach. Found in the first of the smaller chambers south-west of the main chamber (Earth Warder's Cauldron) in the War Creche, as well as the corridor between the two smaller chambers. The entrance to these areas is elevated and can be reached via a Spellsworn Gateway on the western side of the main chamber. The entrance to the War Creche is in the Old Weyrn Grounds and is marked on the main map.]],

    -- NPCs: 204311, 204316
    [1408] = [[Located in Sulfur Wastes, Zaralek Cavern. Can spawn during the Researchers Under Fire event, during the "Affected Wildlife" phase. You'll have to be quick and tame it before others doing the event grab threat.]],

    -- NPCs: 204435
    [1409] = [[Located in Mysterious Cave, Zaralek Cavern. Can be found during the Sniffenseek dig, "Thieving Critters". Spawns when you click on the 'Wriggling Webs' in the northern branch of the tunnels. Note that taming this spider (instead of killing it for the key) will temporarily delay completion of the dig, but it's possible for new webs to spawn (leaving and re-entering the dig may help reset them).]],

    -- NPCs: 204611
    [1410] = [[Located in Fanged Pasture, Zaralek Cavern. Spawns during the quest, "Agrulculture".]],

    -- NPCs: 204825
    [1411] = [[Located in Zaralek Cavern. There's a chance this beast will appear when you use an Elusive Creature Bait in the magma and sulfur areas in the central west of Zaralek Cavern (the low areas east of Zaqali Caldera). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 204828
    [1412] = [[Located in Zaralek Cavern. There's a chance this beast will appear when you use an Elusive Creature Bait in the magma and sulfur areas in the central west of Zaralek Cavern (the low areas east of Zaqali Caldera). To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 204837
    [1413] = [[Located in Zaralek Cavern. There's a chance this beast will appear when you use an Elusive Creature Bait in Zaralek Cavern, except for the extreme western and northern parts. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 204839
    [1414] = [[Located in Zaralek Cavern. There's a chance this beast will appear when you use an Elusive Creature Bait in Zaralek Cavern, except for the extreme western and northern parts. To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 205001
    [1415] = [[Located in Mysterious Cave, Zaralek Cavern. To find this pet, you first need to reach renown 9 with Loamm Niffen so that you gain "Myrrit Affinity". Once you've done so, you can spawn Treasurewhiskers during a Sniffenseek dig. In the dig caverns, command Myrrit to use his Sniff ability. If he detects an unusual patch of scent, you can burrow and uncover it, possibly revealing Treasurewhiskers. As this mouse can spawn as either purple or gold - and gold is MUCH rarer - there's a chance you may not get the colour you desire first time.]],

    -- NPCs: 205300
    [1416] = [[Located in Mysterious Cave, Zaralek Cavern. Can be found during the Sniffenseek dig, "Vertical Anomaly".]],

    -- NPCs: 205763
    [1417] = [[Located in The Flowing Forest, Thaldraszus. Located on a small, green rise on the north-west side of the Temporal Conflux. It seems to be linked to the daily quest Squeaky Toy of Time and Space from the Everywhen Inn at Eon's Fringe.]],

    -- NPCs: 206073
    [1418] = [[Located in Winterpelt Hollow, The Azure Span. Found in the north-east of the Azure Span, along a frozen waterway just south of the 'RA' in 'THALDRASZUS' on the zone map. These ducks are the objective of the daily quest, Fowl Beasts, offered by Nathanos Marris in the Everywhen Inn, on the cliff by Eon's Fringe and the Temporal Conflux in Thaldrazsus.]],

    -- NPCs: 206094
    [1419] = [[Located in Stillstone Pond & Light's Blooming, Hallowfall. Can spawn when you destroy a Threadling Egg.]],

    -- NPCs: 206180
    [1420] = [[Located in Little Scales Daycare, Valdrakken, Thaldraszus. You can spawn this spectral spider during the Off the Page daily quest at Little Scales Daycare in Valdrakken. Daily quests in this area are only available after you unlock them by completing the "Whelp Daycare" storyline (added in Patch 10.1.5) up to the quest: What's a Duck?. The 'Off the Page' daily only appears every now and then, so you'll most likely have to keep checking for it. During this quest, you read from a storybook and summon a random NPC. You need for Osthilde to appear, as she's the one who summons Death Skitterers in combat, otherwise you can feign death and the NPC will despawn after about 10 seconds and you can try again (if you keep a small distance from the spawning NPC it's possible to avoid aggroing it so it'll despawn after about 10 seconds anyway!) You may have to fight Osthilde for a while before the Death Skitterers spawn, so beware of killing her too quickly. Note that if you haven't unlocked the Daycare dailies yet, it's possible to get someone else to do the summon, as the quest isn't phased.]],

    -- NPCs: 207072
    [1421] = [[Located in Sor'theril Barrow Den, The Emerald Dream. Its orange flame aura is lost upon taming. The entry to Sor'theril Barrow Den is on the south-eastern side of Haven Cascades.]],

    -- NPCs: 207300
    [1422] = [[Located in Thaldraszus. Only appears during the once-off quest, Cavern Cleaning, which is part of the quest chain to recruit the Netherwing Dragonflight, added in Patch 10.2. Found in caverns high up in the mountains on the north side of the Shifting Sands / Temporal Conflux area.]],

    -- NPCs: 207625
    [1423] = [[Located in Barrows of Reverie, The Emerald Dream. Only appears during the world quest, Dryad Fire Drill. Its orange flame aura is lost upon taming.]],

    -- NPCs: 207626
    [1424] = [[Located in The Emerald Dream. Found around waters just north of Amirdrassil. The lighter yellow variant does not make sounds when clicked.]],

    -- NPCs: 207789
    [1425] = [[Located in Root-Bound Sanctuary, The Emerald Dream. Its purple aura is lost upon taming.]],

    -- NPCs: 209909, 210106
    [1426] = [[Located in The Emerald Dream. Found under a large, arching tree root just east of Shoreline Roots and south of Shallow Crossing.]],

    -- NPCs: 209929
    [1427] = [[Located in Shiversnap Grove, The Emerald Dream. When the Envoy is ready to appear, a silver quest icon will appear on the zone map at its location in Shiversnap Grove. Players can summon it by collecting and handing in Shiversnap Blossoms. If you tame it, it appears a new one will spawn soon after!]],

    -- NPCs: 209936
    [1428] = [[Located in Haven Cascades, The Emerald Dream. When she's ready to be spawned a silver quest icon will appear on the zone map at her location in the south of Haven Cascades. To get her to appear: collect picnic ingredients from around the area and deposit them in the baskets until the fill bar is complete. Once summoned, she rampages about the area.]],

    -- NPCs: 210045, 210848
    [1429] = [[Located in Whorlwing Basin, The Emerald Dream. Found in the cavern beneath the large tree in the south of the area.]],

    -- NPCs: 210051
    [1430] = [[Located in The Emerald Dream. Found in the south-west, in a cave inland from Summerjoy Shoal.]],

    -- NPCs: 210070
    [1431] = [[Located in Meandering Rootlands, The Emerald Dream. Found in a cave in the side of a cliff that is reached from Haven Cascades, to the west of the Rootlands.]],

    -- NPCs: 210075
    [1432] = [[Located in Haven Cascades, The Emerald Dream. In a cave on the western side of the falls area.]],

    -- NPCs: 210395, 210397
    [1433] = [[Located in Bloodmyst Isle. It can be found in can be found in Bloodmyst Isle during the Draenei Heritage Armor Questline.]],

    -- NPCs: 210478
    [1434] = [[Located in Mycomancer Cavern (Delve); Fungal Folly (Delve).]],

    -- NPCs: 210508
    [1435] = [[Located in Springrain River, The Emerald Dream. Found in a cave by the watercourse.]],

    -- NPCs: 210795
    [1436] = [[Located in Singing Fen & Meandering Rootlands, The Emerald Dream. The lighter yellow variant does not make sounds when clicked.]],

    -- NPCs: 210868
    [1437] = [[Located in The Emerald Dream. Sul'raka is a tracking tame. She is stealthed and can't be detected or tamed without using a flare in her vicinity, but she also leaves footprints that last for a little while and you can use them to track and find her location. We're currently trying to work out her path.]],

    -- NPCs: 210882
    [1438] = [[Located in Springrain River, The Emerald Dream. Can spawn and attack during the World Quest, Carpe Diem.]],

    -- NPCs: 210908
    [1439] = [[Located in Amirdrassil, The Emerald Dream. Nah'qi flies counterclockwise around Amirdrassil, but very high up, just below the tree's canopy. She isn't flagged as a rare, so you won't see a rare marker on your map. Taming this unique owl requires a special skill which is taught by the Cinder of Companionship. The Cinder is awarded when you learn the mount item Reins of Anu'relos, Flame's Guidance which is a rare drop from Mythic Fyrakk in the Amirdrassil raid. Using the Cinder creates an account-wide unlock for you to tame Nah'qi, so you don't have to specifically obtain it on your hunter.]],

    -- NPCs: 210953
    [1440] = [[Located in Root-Bound Sanctuary, The Emerald Dream. Found in a cave on a high rise by the sea.]],

    -- NPCs: 210981, 210982, 210983
    [1441] = [[Located in Sprigling Gloam, The Emerald Dream. Liliuna initially appears as an untameable regular dreamsaber and turning her into a tameable thornclaw requires a small adventure. Firstly, obtain a Thorn-Laden Heart, which has a low chance of dropping from dreamsabers and flamecats in the Emerald Dream zone in the Dragon Isles (this heart will mention 'saber' in its description - there are also stag and bear versions, but they're for taming other thornbeasts). Once you have the heart, proceed to Drustvar in Kul Tiras and visit Athainne who is sometimes found in Ulfar's Den in the mountains far south-west of Fallhaven (approx. 46,45), and sometimes she wanders along the river below the den (around 52,40) with Athair. If she's not present in either location then you may have to wait - her schedule is unpredictable and it's also possible she disappears completely during daylight hours. Present the heart to her and she'll give you some Moontouched Thorns. Then speak to Ulfar, select his 'I have seen some animals...' dialog, then the dialog about Athainne, and he'll give you a Thornspeaker Ritual Knife. With the knife, proceed to Liliuna's cave at 57,49 in Sprigling Gloam in the Emerald Dream. If Liliuna isn't present (as a dreamsaber), wait a little while and she should appear. Her colour will determine which thornclaw you'll end up with: if she's initially a blue dreamsaber she'll turn into a pale thornclaw, purple becomes black, and teal green becomes green, so you may need to kill and reset her if she's not currently in the colour you need. After you kill her as a saber, use the ritual knife on her corpse and she'll resurrect as a thornclaw which you can tame!]],

    -- NPCs: 210984, 210985, 210986
    [1442] = [[Located in The Emerald Dream. Argyr initially appears as an untameable regular dreamstag and turning him into a tameable thornbuck requires a small adventure. Firstly, obtain a Thorn-Laden Heart, which has a low chance of dropping from stags in the Emerald Dream zone in the Dragon Isles (this heart will mention 'stag' in its description - there are also bear and saber versions, but they're for taming other thornbeasts). Once you have the heart, proceed to Drustvar in Kul Tiras and visit Athainne who is sometimes found in Ulfar's Den in the mountains far south-west of Fallhaven (approx. 46,45), and sometimes she wanders along the river below the den (around 52,40) with Athair. If she's not present in either location then you may have to wait - her schedule is unpredictable and it's also possible she disappears completely during daylight hours. Present the heart to her and she'll give you some Moontouched Thorns. Then speak to Ulfar, select his 'I have seen some animals...' dialog, then the dialog about Athainne, and he'll give you a Thornspeaker Ritual Knife. With the knife, proceed to a glade just south-west of Amirdrassil (44,64) in the Emerald Dream and look for a dreamstag named Argyr. He wanders back and forth a bit, so check the general area, but if you can't see him, wait a little while and he should respawn. His colour will determine which thornbuck you'll end up with: if he's initially a dark brown dreamstag he'll turn into a black thornbuck, golden brown becomes brown, and green & tan becomes green, so you may need to kill and reset him if he's not currently in the colour you need. After you kill him as a stag, use the ritual knife on his corpse and he'll resurrect as a thornbuck which you can tame!]],

    -- NPCs: 210988, 210989, 210990
    [1443] = [[Located in Springrain River, The Emerald Dream. Astera initially appears as an untameable dream bear and turning her into a tameable thornbear requires a small adventure. Firstly, obtain a Thorn-Laden Heart, which has a low chance of dropping from bears in the Emerald Dream zone in the Dragon Isles (this heart will mention 'bear' in its description - there are also stag and saber versions, but they're for taming other thornbeasts). Once you have the heart, proceed to Drustvar in Kul Tiras and visit Athainne who is sometimes found in Ulfar's Den in the mountains far south-west of Fallhaven (approx. 46,45), and sometimes she wanders along the river below the den (around 52,40) with Athair. If she's not present in either location then you may have to wait - her schedule is unpredictable and it's also possible she disappears completely during daylight hours. Present the heart to her and she'll give you some Moontouched Thorns. Then speak to Ulfar, select his 'I have seen some animals...' dialog, then the dialog about Athainne, and he'll give you a Thornspeaker Ritual Knife. With the knife, proceed to the banks of the Springrain River, west of Amirdrassil in the Emerald Dream and look for a dreambear named Displaced Bristlebruin. She should be sleeping on some grass on the south bank of the river at 37,62 (near a cave with a pair of Invasive Podlings). Her colour will determine which thornbear you'll end up with: if she's initially a dark brown dream bear she'll turn into a dark thornbear, golden brown becomes brown, and green & brown becomes green, so you may need to kill and reset her if she's not currently in the colour you need. After you kill her as a bear, use the ritual knife on her corpse and she'll resurrect as a thornbear which you can tame!]],

    -- NPCs: 211176
    [1444] = [[Located in The Emerald Dream. Found in the south-west, flying above the glades north-east of Summerjoy Shoal.]],

    -- NPCs: 211651, 211755
    [1445] = [[Located in Eye of Ysera, The Emerald Dream. Appears in several locations around the main hovering island of the Eye of Ysera during the Emerald Dream campaign quest, Might of the Forest.]],

    -- NPCs: 211990
    [1446] = [[Located in Eye of Ysera, The Emerald Dream. Friendly.]],

    -- NPCs: 212040, 212041, 212061, 212062, 212090
    [1447] = [[Located in The Emerald Dream. There's a chance this beast will appear when you use an Elusive Creature Bait in the Emerald Dream zone of the Dragon Isles. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 212043
    [1448] = [[Located in The Emerald Dream. There's a chance this beast will appear when you use an Elusive Creature Bait in the Emerald Dream zone of the Dragon Isles, possibly more frequently in the south of the zone. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 212065, 212066, 212069
    [1449] = [[Located in The Emerald Dream. There's a chance this beast will appear when you use an Elusive Creature Bait in the Emerald Dream zone of the Dragon Isles. This bait item can only be crafted and used by players with Dragon Isles Skinning. To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 212070
    [1450] = [[Located in The Emerald Dream. There's a chance this beast will appear when you use an Elusive Creature Bait in the Emerald Dream zone of the Dragon Isles. To have a chance to summon an Elite Elusive creature you must spend 20 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel). To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 212133
    [1451] = [[Located in The Emerald Dream. There's a chance this beast will appear when you use an Elusive Creature Bait in the Emerald Dream zone of the Dragon Isles. Elusive Rares can only be summoned if you spend 40 points in the Mastery subspecialization of Bait Crafter (Dragon Isles Skinning - see your Skinning journal in your professions panel), and they can normally be killed and skinned just once a day. To create Elusive Creature Bait you must have levelled Dragon Isles Skinning to the point where you can select the Bait Crafter specialization (see your skinning journal inside your professions panel) and spend at least 10 points of Knowledge in it.]],

    -- NPCs: 212292
    [1452] = [[Located in Azj-Kahet. Summoned during combat by Vilewing (rare NPC at Ruptured Lake) and Patrolling Swarmers (City of Threads).]],

    -- NPCs: 212425
    [1453] = [[Located in Rambleshire, Isle of Dorn. Found underneath the mining bridge west of Rambleshire. It doesn't appear to respawn often.]],

    -- NPCs: 212704
    [1454] = [[Located in Boskroot Basin, Isle of Dorn. Inhabits Boskroot Basin forest, in the south of the isle. Mycotic Shalehorns with this ID often serve as mounts for Boskroot Brutes, but they can be tamed right out from under their rider.]],

    -- NPCs: 212710
    [1455] = [[Located in Boskroot Basin, Isle of Dorn. Inhabits Boskroot Basin forest, in the south of the isle. Only the blue variant makes sounds when clicked.]],

    -- NPCs: 213428
    [1456] = [[Located in The Rookery Landing, The Rookery (Dungeon). Aradan spawns after Kyrioss (the first boss of the dungeon) is defeated and can be tamed on any difficulty, including follower mode (fortunately, followers won't interfere with your tame!). But before you enter the dungeon you must collect the Void-Scarred Stormhammer from the bottom of the sea off the west coast of the Isle of Dorn. Without the hammer, Aradan cannot be tamed or attacked. The hammer lies near a stand of brown and green kelp at around 29.1,36.2 (a bit west of the 'W' in "Storm's Watch" on the zone map); it doesn't glow and can be difficult to see between the rocks. Once you've collected the hammer, enter the dungeon and defeat Kyrioss, jump down to the bottom of the shaft, then head a little south and east (past Stormrider Vokmar) and head up the stairs to the east. This takes you to an exterior landing where Aradan can be seen in the sky to the north. Target Aradan and click on the hammer, which causes the stormrook to land and become tameable. Aradan will spawn with one of 5 possible appearances (all are blue, but with subtly different features) so you may need to run the dungeon a number of times before you find the one you want. Credit goes to waiting4paul of the Secret Finders Discord for discovering how to tame this creature]],

    -- NPCs: 213539, 213542
    [1457] = [[Located in Meandering Rootlands, The Emerald Dream. Found in caverns that have their entrance on the east side of the swamp that lies above the southern end of Haven Cascades (around 55,40).]],

    -- NPCs: 213545
    [1458] = [[Located in Meandering Rootlands & The Char, The Emerald Dream. The black variant with crescent antlers, large ears, horned brows, and a long tail is 25 times more likely to appear than any other look!]],

    -- NPCs: 213608
    [1459] = [[Located in Meandering Rootlands, The Emerald Dream. Tula'rhun can be found at the very back of a set of caverns that have their entrance on the east side of the swamp that lies above the southern end of Haven Cascades (around 55,40).]],

    -- NPCs: 213647
    [1460] = [[Located in The Emerald Dream. This fey darter can spawn during Superbloom events when someone chooses the ability Fae Lens from a dreamfruit. This ability isn't offered every Superbloom. You may have trouble taming one of these darters before someone kills it, but it's also not a unique colour.]],

    -- NPCs: 213668
    [1461] = [[Located in The Emerald Dream. These tarantulas spawn during Superbloom events if someone chooses the ability Arachnid Annihilation from a dreamfruit and then clicks on an Invasive Spider Sac. This ability isn't offered every Superbloom. You may have trouble taming one of these spiders before someone kills it, but it's also not a unique colour.]],

    -- NPCs: 213922
    [1462] = [[Located in The Wormlands, Azj-Kahet. Initially appears as a rumbling patch of earth.]],

    -- NPCs: 214397
    [1463] = [[Located in Hallowfall. Can be found during the A Light in the Dark questline of The War Within campaign.]],

    -- NPCs: 214757
    [1464] = [[Located in Stillstone Pond, Hallowfall. Found in a cave on the east side of the pond. Initially inactive, but can be rendered attackable but tossing 10 Shadowblind Grouper at it. These can be fished from the eponymous pools in the waters nearby.]],

    -- NPCs: 215411
    [1465] = [[Located in The Silken Path, Azj-Kahet. Spawns on the bridge as part of an ambush during the zone campaign quest, 'A Guiding Thread'. If you've completed this quest you can still see the spawns that other players trigger.]],

    -- NPCs: 215608
    [1466] = [[Located in Siegehold, Azj-Kahet. Siegehold Drones with this ID are not hostile.]],

    -- NPCs: 215733
    [1467] = [[Located in Shadowvein Extraction Site, The Ringing Deeps. Initially submerged, but surfaces when you approach its rumbling dust patch.]],

    -- NPCs: 215772
    [1468] = [[Located in Chittering Den, The Ringing Deeps. Found inside a cave in the central part of the area. Look for the corpses of 'devoured' creatures outside.]],

    -- NPCs: 215990
    [1469] = [[Located in Azj-Kahet. Flies about the high Eastern Span walkways in the east of the zone and also in The Transformatory in the south-east of the City of Threads.]],

    -- NPCs: 215991
    [1470] = [[Located in Eastern Span, Azj-Kahet. Patrols north of the large covered platform situated roughly midway along the high Eastern Span walkway, in the east of the zone. There's possibly only one up at a time.]],

    -- NPCs: 216037
    [1471] = [[Located in Ruptured Lake, Azj-Kahet. Flies about in the eastern part of the area.]],

    -- NPCs: 216039
    [1472] = [[Located in Pillar-nest Xesh, Azj-Kahet. Located on the west side of the pit, by the city wall. Has a black aura that is retained upon taming.]],

    -- NPCs: 216044
    [1473] = [[Located in Azj-Kahet. Flies rapidly about wilds in the east of the zone, west of Mmarl.]],

    -- NPCs: 216078
    [1474] = [[Located in Shadowmire, Hallowfall. Dwells in a small cave in the east of the area.]],

    -- NPCs: 216197
    [1475] = [[Located in The Proscenium, Isle of Dorn. Only present during the campaign quest chain when the area is under attack, i.e. during 'The Cavalry is Here', etc.]],

    -- NPCs: 216249, 216288, 229812, 229813, 229814, 229816, 229817, 229820, 229821
    [1476] = [[Located in Isle of Dorn; The Ringing Deeps; Hallowfall; Azj-Kahet. Has a chance to spawn when you dig up a patch of Disturbed Earth around any of the main Khaz Algar ('The War Within') zones. To unlock this you need to complete the quest Everyday I'm Snufflin in The Ringing Deeps.]],

    -- NPCs: 216340
    [1477] = [[Located in Echoing Overlook, Ara-Kara, City of Echoes (Dungeon).]],

    -- NPCs: 216387
    [1478] = [[Located in The Wormlands, Azj-Kahet. Summoned by Wormcaller Iz'tikrine during combat.]],

    -- NPCs: 216555
    [1479] = [[Located in The Burrows, Azj-Kahet. Spawns as part of the "Escape the Burrows!" phase of the "Kaheti Hospitality" zone campaign quest. These NPCs appear in the first wave and will be mowed down very quickly by Alleria and Anduin, so your best strategy is to stand well away from your companions and draw one of these spiders off as soon as it appears. You can abandon and restart the quest as many times as you like until you successfully tame the colours you want. This is a once-only campaign instance, though it's uncertain if party sync will allow you to repeat it.]],

    -- NPCs: 217121, 221065
    [1480] = [[Located in The Three Shields (Quest Phase), Isle of Dorn. Found in a special phase for the Ringing Deeps quest, 'The Wickless Candle'.]],

    -- NPCs: 217379
    [1481] = [[Located in Chittering Den, The Ringing Deeps. Covered in spider eggs that are lost upon taming.]],

    -- NPCs: 217417
    [1482] = [[Located in Chittering Den, Azj-Kahet. Covered in spider eggs that are lost upon taming.]],

    -- NPCs: 217939, 217949
    [1483] = [[Located in Tranquil Strand, Isle of Dorn. Found during the intro quest phase for the beach, but gone after completing "To Dornogal".]],

    -- NPCs: 218066
    [1484] = [[Located in Pillar-nest Xesh, Azj-Kahet. Spawns when egg sacs are destroyed in this area.]],

    -- NPCs: 219246, 219425
    [1485] = [[Located in Taelloch Mine, The Ringing Deeps. Found inside the mines, in the east of the area.]],

    -- NPCs: 219265
    [1486] = [[Located in The Opalcreg, Isle of Dorn. Found deep in the mine tunnels.]],

    -- NPCs: 219365
    [1487] = [[Located in Hallowfall. Found by the shores north of the Veneration Grounds. Its glow effect is lost upon taming.]],

    -- NPCs: 219397
    [1488] = [[Located in The Opalcreg, Isle of Dorn. The serpents with this ID are found inside the mine tunnels.]],

    -- NPCs: 219653, 219662, 219664
    [1489] = [[Located in Dalaran (Khaz Algar intro quest phase). Only appears during the Breach intro quest for The War Within, when Dalaran first arrives at the Isle of Dorn and is under siege.]],

    -- NPCs: 219654
    [1490] = [[Located in Dalaran (Khaz Algar intro quest phase). Only appears during the Breach intro quest for The War Within, when Dalaran first arrives at the Isle of Dorn and is under siege. Flies high, so you'll need to find a suitable location and possibly shoot it to bring it into taming range. Only the black and the green variants make sounds when clicked.]],

    -- NPCs: 219790
    [1491] = [[Located in The Hallowfall Gate & Candleslag Quarry, The Ringing Deeps. Initially, this magma snail cannot be interacted with or tamed due to it being ridden by a kobold: either a Kobold Trapper (Candleslag Quarry) or a Brightrock Shellvalier (inside the Hallowfall Gate mines). Once the kobold is dead the snail becomes a standalone NPC and can be tamed.]],

    -- NPCs: 219949
    [1492] = [[Located in The Ringing Deeps. Found in regions south and east of The Earthenworks and north of Brunwin's Terrace, up to the entrance to the Lost Mines area.]],

    -- NPCs: 220059
    [1493] = [[Located in Hallowfall. Found by the pond outside Tenir's Ascent.]],

    -- NPCs: 220300
    [1494] = [[Located in Dornogal, Isle of Dorn. Occasionally found around the hills in the west of the city. It appears to be buggy as even though you can attack it or cast tame, it ignores you and the tame fails, and then it despawns.]],

    -- NPCs: 220399
    [1495] = [[Located in Rak-Zakaz, Azj-Kahet. Often found carrying a package on its back that is lost upon taming.]],

    -- NPCs: 220483
    [1496] = [[Located in Pillar-nest Xesh, Azj-Kahet. Located in the pit on the east side of the City of Threads. Often found carrying a container on its back that is lost upon taming.]],

    -- NPCs: 220707
    [1497] = [[Located in Azj-Kahet. Summoned by Battelfront Haulers during combat in Arathi's End in the north-east of the zone. Also summoned by the rare Kaheti Silkhauler during combat. This rare follows the north-south road in the north-east of the zone. Its range extends from Azj-Kahet in the far north-east (east of Faerin's Advance), south past Rak-Zakaz, and probably as far south as the road to the south-west of Rak-Ahat.]],

    -- NPCs: 221126
    [1498] = [[Located in Cinderwold, Isle of Dorn. BUG: this pet is erroneously classed as Exotic, so currently only usable by Beast Masters. It has been reported and hopefully will be fixed at some stage.]],

    -- NPCs: 221131
    [1499] = [[Located in Tenir's Ascent, Hallowfall. There's a chance this creature will appear when you destroy an Arathi Crate during the world quest, Recovery Job.]],

    -- NPCs: 221474
    [1500] = [[Located in Morgaen's Tears, Hallowfall. In the wilds west of Veneration Grounds. It appears sporadically to the west of Morgaen's Tears.]],

    -- NPCs: 221528
    [1501] = [[Located in Isle of Dorn. Found in several locations on the isle. Soaring Plainshawks with this ID are usually perched on rocky pinnacles rather than flying.]],

    -- NPCs: 221648
    [1502] = [[Located in Velhan's Claim, Hallowfall. Velhan's Claim consists of the two islands just north-east of the Priory of the Sacred Flame. The Perchfather can be found on the highest rock peak of the western island.]],

    -- NPCs: 221704
    [1503] = [[Located in Siegehold, Azj-Kahet. Siegehold Drones with this ID are hostile.]],

    -- NPCs: 222019
    [1504] = [[Located in The Opalcreg, Isle of Dorn. The serpents with this ID are found outside (above) the mines.]],

    -- NPCs: 222040
    [1505] = [[Located in Isle of Dorn. Found by a beach north of Freywold VIllage and the Earthcrawl Mines, near the rocky islets. The NPC with this ID is found a bit further south than the other Opalooze Mollusc. Prior to taming this one appears smaller than the other, but they're the same size as pets.]],

    -- NPCs: 222155
    [1506] = [[Located in Isle of Dorn. The NPC with this ID is found a bit further north than the other Opalooze Mollusc. Prior to taming this one appears larger than the other, but they're the same size as pets.]],

    -- NPCs: 222248
    [1507] = [[Located in Hallowfall. Packs of this ray periodically circle over parts of the zone, including Tenir's Ascent, Sanguine Grasps, Priory of the Sacred Flame, and The Aegis Wall. Has a shadow-sparkling effect, but unsure if this would be retained if it were tameable.]],

    -- NPCs: 222690
    [1508] = [[Located in Ancient Falls, The Ringing Deeps. This spectral devilsaur can only be found when the event, "Worldsoul Memory: Primal Predators" is up, located roughly north-west of Opportunity Point in The Ringing Deeps. The zone in which the Worldsoul Memory is active rotates daily, starting with Isle of Dorn, then The Ringing Depths, then Hallowfall, finally Azj-Kahet. You require one Radiant Echo in order to enter the event phase and cannot use another player to access it.]],

    -- NPCs: 222936
    [1509] = [[Located in Sanctified Grounds, Priory of the Sacred Flame (Dungeon). Around the northern exterior of the Priory grounds.]],

    -- NPCs: 223042
    [1510] = [[Located in Hallowfall; Isle of Dorn. There's a chance this beast will appear when you use an Elusive Creature Lure in this zone. To learn how to create a lure you must earn at least 25 points in Khaz Algar Skinning and select the Luring specialization (see your skinning journal inside your professions panel). See Wowhead's The War Within Skinning Guide for more information on how luring works.]],

    -- NPCs: 223056, 223058
    [1511] = [[Located in The Ringing Deeps. There's a chance this beast will appear when you use an Elusive Creature Lure in this zone. To learn how to create a lure you must earn at least 25 points in Khaz Algar Skinning and select the Luring specialization (see your skinning journal inside your professions panel). See Wowhead's The War Within Skinning Guide for more information on how luring works.]],

    -- NPCs: 223060, 223067
    [1512] = [[Located in Azj-Kahet. There's a chance this beast will appear when you use an Elusive Creature Lure in this zone. To learn how to create a lure you must earn at least 25 points in Khaz Algar Skinning and select the Luring specialization (see your skinning journal inside your professions panel). See Wowhead's The War Within Skinning Guide for more information on how luring works.]],

    -- NPCs: 223091
    [1513] = [[Located in Shadowvein Extraction Site, The Ringing Deeps. Found outside a mine entrance in the west of the Extraction Site.]],

    -- NPCs: 223117, 223905
    [1514] = [[Located in Maddening Deep, Azj-Kahet. You must have the Unseeming Shift debuff in order to see this creature. This debuff is bestowed during the Melody of Madness quest chain, but you can also gain stacks of it in the Maddening Deeps by clicking on the Black Blood Extractors or standing in the ashen-red pools.]],

    -- NPCs: 223613
    [1515] = [[Located in The Spiral Weave (Delve). Summoned by Overseer Kasel, during combat. It can be challening to tame one during the fight.]],

    -- NPCs: 223782, 223783
    [1516] = [[Located in Rak-Ush, Azj-Kahet. Found in a cave inside the large pit in the west of the area.]],

    -- NPCs: 224099, 224410, 225912, 226128
    [1517] = [[Located in Hallowfall. Found in grassy areas in the far east of Hallowfall (west of Lothar's Landing / entrance to The Ringing Deeps).]],

    -- NPCs: 224101
    [1518] = [[Located in Hallowfall. Found in grassy areas in the far east of Hallowfall (west of Lothar's Landing / entrance to The Ringing Deeps). Also found in the fields that stretch from west of Tenir's Ascent to south of Mereldar.]],

    -- NPCs: 224133
    [1519] = [[Located in Sunrise Shadow, Isle of Dorn. Found in a grove just north of the Cinderbrew Meadery entrance.]],

    -- NPCs: 224409
    [1520] = [[Located in Hallowfall. Found in the fields just to the west of the entrance to Hallowfall from The Ringing Deeps.]],

    -- NPCs: 224464
    [1521] = [[Located in Hallowfall. Found by a pool in the far east of Hallowfall (below Lothar's Landing / entrance to The Ringing Deeps).]],

    -- NPCs: 224521
    [1522] = [[Located in Eastern Span, Azj-Kahet. Flies about the western sections of the Eastern Span walkway.]],

    -- NPCs: 224551
    [1523] = [[Located in Hallowfall. Found in grassy areas in the far east of Hallowfall (below Lothar's Landing / entrance to The Ringing Deeps).]],

    -- NPCs: 224663
    [1524] = [[Located in The Burrows, Azj-Kahet. Periodically spawns during combat with Swarm-Maven Donmiss as part of Stage 2 of the "Escape the Burrows!" phase of the "Kaheti Hospitality" zone campaign quest.]],

    -- NPCs: 224725
    [1525] = [[Located in Camp Murroch, The Ringing Deeps. Can spawn during the quest, "Antifogmatic".]],

    -- NPCs: 224751
    [1526] = [[Located in Growling Hollow, Hallowfall. Found not far from the Mycomancer Cavern delve.]],

    -- NPCs: 224958
    [1527] = [[Located in Hallowfall. There's a chance this beast will appear when you use an Elusive Creature Lure in this zone. To learn how to create a lure you must earn at least 25 points in Khaz Algar Skinning and select the Luring specialization (see your skinning journal inside your professions panel). See Wowhead's The War Within Skinning Guide for more information on how luring works.]],

    -- NPCs: 225244
    [1528] = [[Located in Rak-Ush, Azj-Kahet. Spawns during the quest, "Bug Test".]],

    -- NPCs: 225271
    [1529] = [[Located in Isle of Dorn. Found in small numbers outside the northern & eastern borders of the Boskroot Basin forest. Dazzling Peafowl with this ID are often found leading around a brood of peafowl chicks.]],

    -- NPCs: 225391
    [1530] = [[Located in The Hallowfall Gate, The Ringing Deeps. Found inside the mines north of the gateway to Hallowfall.]],

    -- NPCs: 225393
    [1531] = [[Located in The Hallowfall Gate, The Ringing Deeps. Found in the deepest cavern in the mines north of the gateway to Hallowfall.]],

    -- NPCs: 225488
    [1532] = [[Located in Azj-Kahet. Found south of The Wormlands. It is ridden by a Fungari Myconite, but it can be tamed out from under them!]],

    -- NPCs: 225815
    [1533] = [[Located in The Heaps, Undermine. Can be found in the Revolution phase of Undermine after getting the quest, Get Out There. You can no longer access this phase after completing the campaign.]],

    -- NPCs: 225865
    [1534] = [[Located in Azj-Kahet. Found in the wilds east and south of The Wormlands and south of Siegehold. Emerald Stagshells with this ID are often found flying.]],

    -- NPCs: 225913
    [1535] = [[Located in Hallowfall. Found in grassy areas in the far east of Hallowfall (below Lothar's Landing / entrance to The Ringing Deeps). The Shalehorn Calves with this ID are running about.]],

    -- NPCs: 226005
    [1536] = [[Located in Azj-Kahet. Found across the central north and north-east of the zone. Scavenger Stagshells with this ID seem to be mostly found flying.]],

    -- NPCs: 226028
    [1537] = [[Located in Azj-Kahet. Found occasionally in waterways in the zone, including those outside Siegehold in the north and Twitching Gorge to the west.]],

    -- NPCs: 226101
    [1538] = [[Located in Pillar-nest Vosh, Azj-Kahet. Summoned by Agaricus Festerbloom (located in the back of the fungal cave) during combat. Its name changes to 'Confused Swarmite' if Agaricus dies.]],

    -- NPCs: 226176
    [1539] = [[Located in Untamed Valley, Azj-Kahet. Horned Stagshells with this ID are usually found flying. Found in wilds south-east of The Weaver's Lair and west of Rak-Ahat.]],

    -- NPCs: 226381, 226417
    [1540] = [[Located in The Cataract River, The Ringing Deeps. Can spawn during the quest, "Stone Tracing".]],

    -- NPCs: 226562
    [1541] = [[Located in Bilgewater Flats, Undermine. This peafowl requires a large amount of money to tame! It can be spawned after completing The Perfect Wedding storyline in Undermine, beginning with Or Else and ending with Ad-Hoc Wedding Planner. After the wedding is over and the storyline is complete, gather 500,000 gold and return to Grelik Greaseguard at the Exotics Market in Bilgewater Flats (north-west of Demolition Dome). He'll now have a new dialogue option: 'Can you get me a blazefeather peacock?'. Once you agree and pay him, you can get him to summon as many tameable Blazefeather Peacocks as you want, with no extra fee. And don't worry: there should be no risk of them being attacked or tamed by other players, as only you can see them.]],

    -- NPCs: 226625
    [1542] = [[Located in Khaz Algar Delves. Found in five delve instances: Nightfall Sanctum, Mycomancer Cavern, Fungal Folly, The Sinkhole, and Tak-Rethan Abyss.]],

    -- NPCs: 227026
    [1543] = [[Located in Eastern Span, Azj-Kahet. Flies along the high Eastern Span walkways in the east of the zone.]],

    -- NPCs: 227198
    [1544] = [[Located in The Three Shields, Isle of Dorn. Inhabits the largest of the three small, rocky islands off the north-east coast of Dorn. Only the blue variant makes sounds when clicked.]],

    -- NPCs: 227367
    [1545] = [[Located in Salien Gutters, Azj-Kahet. It seems likely this sea slug started out as an unintended tameable creature, but it was left that way!]],

    -- NPCs: 227373
    [1546] = [[Located in Khaz Algar Delves. Can spawn if NPCs in delves are killed when they have the buff, 'Zekvir's Infestation' from Zekvir. Zekvir is an additional surprise encounter that can appear in any delve.]],

    -- NPCs: 227569
    [1547] = [[Located in Stormtide Dregs, Flotsam Shoal, Siren Isle. Found in a special 'storm' phase of Siren Isle that you can access after completing the zone's weekly quest (by participating in activities and killing various NPCs around Siren Isle) and unlocking Special Assignment: Storm's a Brewin. Once unlocked, speak to Suzie Boltwrench at Flotsam Shoal to enter or leave the storm phase at any time, even after you complete the assignment.]],

    -- NPCs: 227572
    [1548] = [[Located in Hallowfall. Found in the far south of the zone, just before the Ruptured Lake entrance to Azj-Kahet, on the cliffs to the east of the river.]],

    -- NPCs: 227627
    [1549] = [[Located in Isle of Dorn. Possibly found in a single location: flying high over a beach to the south-east of Earthcrawl Mines and Freywold Village.]],

    -- NPCs: 227799
    [1550] = [[Located in Isle of Dorn. Flies about the cliffs east of Cinderbrew Meadery.]],

    -- NPCs: 227808
    [1551] = [[Located in Light's Blooming, Hallowfall. Spawns during combat with Ravageant.]],

    -- NPCs: 228427
    [1552] = [[Located in Dalaran. Spawned by Queensguard An'Jak Shabtir during the War Within Intro questline in Dalaran.]],

    -- NPCs: 228465
    [1553] = [[Located in The Heaps, Undermine. Spawns from the quest, "G.E.T.A. The Captain". It is surrounded by smaller mudskippers that act like they are part of the model, but they're lost upon taming.]],

    -- NPCs: 229060
    [1554] = [[Located in Hallowfall. Found where the rivers converge south-west of Mereldar during the quest, "Fishing is Good for the Soul".]],

    -- NPCs: 229532
    [1555] = [[Located in Siren Isle. Found in a special 'storm' phase of Siren Isle that you can access after completing the zone's weekly quest (by participating in activities and killing various NPCs around Siren Isle) and unlocking Special Assignment: Storm's a Brewin. Once unlocked, speak to Suzie Boltwrench at Flotsam Shoal to enter or leave the storm phase at any time, even after you complete the assignment.]],

    -- NPCs: 229617, 229620
    [1556] = [[Located in Hallowfall. Found in the wilds east of Dunelle's Kindness, down from the zone entrance from The Ringing Deeps.]],

    -- NPCs: 229638
    [1557] = [[Located in Isle of Dorn. Found on Sunken Shield - a rocky island off the south-east coast of Dorn, and also on an island in the far west - in the strait between Storm's Watch and Dhar Oztan. The cloudrooks on Sunken Shield appear in all three colours, but the ones on the western island only seem to appear in the mid-grey, despite having the same NPC ID.]],

    -- NPCs: 229688
    [1558] = [[Located in Old Sacrificial Pit - City of Threads, Azj-Kahet. Flies high over the pit, situated in the far west of the city.]],

    -- NPCs: 229856
    [1559] = [[Located in Stormtide Dregs, Siren Isle. Spawns with the rare NPC, Coralweaver Calliso. Its chain collar disappears when attacked.]],

    -- NPCs: 230141
    [1560] = [[Located in Siren Isle. Spawns on days when Vrykul are invading the isle. Found around the central part of the isle.]],

    -- NPCs: 230830
    [1561] = [[Located in Deadfin Mire, Siren Isle. Found in a special 'storm' phase of Siren Isle that you can access after completing the zone's weekly quest (by participating in activities and killing various NPCs around Siren Isle) and unlocking Special Assignment: Storm's a Brewin. Once unlocked, speak to Suzie Boltwrench at Flotsam Shoal to enter or leave the storm phase at any time, even after you complete the assignment.]],

    -- NPCs: 230971
    [1562] = [[Located in Pei-Wu Forest, The Wandering Isle (Open Zone). The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231053
    [1563] = [[Located in Pei-Wu Forest & Wreck of the Skyseeker, The Wandering Isle (Open Zone). The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231115
    [1564] = [[Located in Slam Central Station, Undermine. Has a chance of spawning when you click on Questionable Crates during the world quest, Contraband Banned. This quest is only available if you've signed a weekly contract with the Blackwater Cartel but you can choose a new contract after each weekly reset. It's also possible to get someone with access to the quest to spawn the crab for you but you'd have to tame it before it was killed.]],

    -- NPCs: 231146
    [1565] = [[Located in The Wandering Isle (Open Zone). Found in the southern portion of the Isle. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231153
    [1566] = [[Located in The Dawning Valley, The Wandering Isle (Open Zone). The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231194, 231195
    [1567] = [[Located in The Dawning Valley, The Wandering Isle (Open Zone). Widespread in the northern section of the Isle. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231217
    [1568] = [[Located in Undermine. Can be found when digging through S.C.R.A.P. piles.]],

    -- NPCs: 231257, 231258
    [1569] = [[Located in Ridge of Laughing Winds, The Wandering Isle (Open Zone). Roams the ridge to the west of Pool of the Paw, south of Morning Breeze Village. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231259
    [1570] = [[Located in The Wandering Isle (Open Zone). Flies around the northern portion of the Isle. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231315
    [1571] = [[Located in The Wandering Isle (Open Zone). Flies around the center of the Isle. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231324
    [1572] = [[Located in The Wandering Isle (Open Zone). Flies around the central east and central west portions of the Isle. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231340
    [1573] = [[Located in The Wandering Isle (Open Zone). Flies around the western part of the Isle. The Wandering Isle is open to any character on your account after you complete the Pandaren Heritage quest chain. You reach it via the same balloon you used at the start of the chain.]],

    -- NPCs: 231380
    [1574] = [[Located in The Waterworks, Operation: Floodgate (Dungeon).]],

    -- NPCs: 231808, 231809
    [1575] = [[Located in The Maw. Found only during the Midnight Prologue quest chain added in Patch 11.2.7. The involved storyline begins with a summons from Arator: Meet Arator.]],

    -- NPCs: 231986
    [1576] = [[Located in Stormtide Dregs, Siren Isle. Found in a special 'storm' phase of Siren Isle that you can access after completing the zone's weekly quest (by participating in activities and killing various NPCs around Siren Isle) and unlocking Special Assignment: Storm's a Brewin. Once unlocked, speak to Suzie Boltwrench at Flotsam Shoal to enter or leave the storm phase at any time, even after you complete the assignment.]],

    -- NPCs: 232098
    [1577] = [[Located in Scrapdrift Sands, K'aresh. Runs around in southeastern Scrapdrift Sands. Loses their pink heart ribbon upon taming.]],

    -- NPCs: 232106
    [1578] = [[Located in Magisters' Terrace (Midnight) (Dungeon).]],

    -- NPCs: 232111
    [1579] = [[Located in K'aresh. Can only be found while Phase Diving.]],

    -- NPCs: 232193
    [1580] = [[Located in The Merciless Wastes, K'aresh. Can only be found while Phase Diving.]],

    -- NPCs: 232195
    [1581] = [[Located in K'aresh. Just north of Eco-Dome: Rhovan. Can only be found while Phase Diving.]],

    -- NPCs: 233213
    [1582] = [[Located in North Sufaad, K'aresh. Spawns during the quest, We Are Our Words.]],

    -- NPCs: 233612
    [1583] = [[Located in Emerald Hills Golf Course & Blackwater Marina, Undermine. Spawns when changing batteries during the world quest, What Plants Crave in Undermine.]],

    -- NPCs: 233938
    [1584] = [[Located in Kaja'Coast, Zuldazar. To tame this crab you need to locate and click on five large, yellow Kaja'mite Chunks in the vicinity and then quickly tame him before the effect goes away. If you try to tame him without clicking on the kaja'mite you'll be told you're unworthy.]],

    -- NPCs: 234197
    [1585] = [[Located in Eco-Dome: Primus, K'aresh. Spawns during the quest, Give me Fuel".]],

    -- NPCs: 235095
    [1586] = [[Located in Old Hillsbrad Foothills (Dungeon). This reindeer can only be found during the Feast of Winter Veil. To tame it you need to have your gear transmogged to a full, four-piece 'Festive Holiday' transmog set, including the coat, pants, boots, belt (either Red or Green - but not a mix; and the vest versions don't seem to work currently, but the shorts do). These items can be purchased from Wulmort Jinglepocket or Penney Copperpinch near Greatfather Winter in Ironforge and Orgrimmar, respectively. Alternatively, you can also use the 'Disposable Winter Veil Suits' toy, though currently the green appearance doesn't seem to work, just the red one (but you can keep swapping). If you're not using the full appearance, the reindeer cannot be seen. Inside the dungeon, the solitary reindeer can be found atop the large spur to the east of the entrance, sleeping in a tree hollow at the southern end (around 36.0,39.0). The red-nosed version is much rarer, so you may need to reset the dungeon a number of times to find one but you can '/tar dreaming festive reindeer' from a short way into the entrance tunnel (a bit past the first bend) and its portrait will reveal which appearance it has (but if you enter the instance before donning the transmog set it won't appear until you reach its location!). Much of this information comes from Paryah and PigeonD at Wowhead.]],

    -- NPCs: 235230
    [1587] = [[Located in Kaja'Coast, Zuldazar. Spawned by the Saltwind Matriarch during combat.]],

    -- NPCs: 236539
    [1588] = [[Located in Amani Pass, Eversong Woods. Found during the quest, Light Guide Us.]],

    -- NPCs: 237282
    [1589] = [[Located in The Heaps, Undermine. Spawned by The Captain.]],

    -- NPCs: 237750
    [1590] = [[Located in Fracture of Laacuna, K'aresh. Spawns during the quest, The Void Hunter. Note that an untameable version appears early in the quest and this tameable version appears towards the end.]],

    -- NPCs: 237753
    [1591] = [[Located in Voidscar Cavern, K'aresh. Spawns during the quest, "Distilled Darkness".]],

    -- NPCs: 238478
    [1592] = [[Located in Tazavesh, the Veiled Market, K'aresh. Can only be found while Phase Diving.]],

    -- NPCs: 238547
    [1593] = [[Located in Lunnall River, K'aresh. Can only be found while Phase Diving. Loses Ethereal effect upon taming.]],

    -- NPCs: 238625
    [1594] = [[Located in Tailgate Park, Undermine. Found in a sewer in Tailgate Park. The entrance is an openable sewer lid at coordinates 50.5, 41.2.]],

    -- NPCs: 239207
    [1595] = [[Located in Bilgewater Flats, Undermine. Found in a sewer in Bilgewater Flats. The entrance is an openable sewer lid at coordinates 40.5, 28.6.]],

    -- NPCs: 239210
    [1596] = [[Located in Hovel Hill, Undermine. Found in a sewer near the center of Hovel Hill. The entrance is an openable sewer lid at coordinates 36.0, 37.4.]],

    -- NPCs: 239229
    [1597] = [[Located in The Vatworks, Undermine. Found in a sewer in the north-eastern edge of The Vatworks. The entrance is an openable sewer lid at coordinates 33.8, 57.5.]],

    -- NPCs: 239325
    [1598] = [[Located in The Vatworks, Undermine. This rat can be found on the roof of one of the round, green tank-like buildings in the west of The Vatworks right above the entrance to Steamwheedle Laboratories, around 28, 71. Reaching it isn't trivial but one of the most reliable methods found so far is to obtain a Back-Strapped Missile and use it to reach the roof. These reusable rockets can be found occasionally in Undermine delves, in either the end chests or mislaid curiosities. Once you have one, you can stand at an optimal distance from the building, such as the ground around 32.2, 76.7 (there's often a Noggenfogger Recall Technician on a metal platform nearby), face directly at the building and launch. It may take a few tries to get it right.]],

    -- NPCs: 239832
    [1599] = [[Located in Eco-Dome: Rhovan, K'aresh. Can only be found while Phase Diving. Loses its ethereal effect upon taming.]],

    -- NPCs: 240511, 240544
    [1600] = [[Located in Atal'Aman, Zul'Aman. Found during the Zul'Aman intro quest chain, "Dis Was Our Land" but disappears afterwards]],

    -- NPCs: 241360, 241363
    [1601] = [[Located in K'aresh. Found west of Eco-Dome: Primus during the world quest, Endangered Specimens.]],

    -- NPCs: 242034, 246074
    [1602] = [[Located in Broken Throne, Zul'Aman. To the north-west of the main area. Loses its Void-corruption effect when tamed.]],

    -- NPCs: 242773
    [1603] = [[Located in Dreth'amar Cavern, Harandar. Spawns during the quest, Skyglass Scavenging.]],

    -- NPCs: 242998
    [1604] = [[Located in Hallowfall. Found at the base of a cliff on the north bank of the river north-east of Dunelle's Kindness, around 71.0, 39.7 (look for a path down to the river, a bit east of the bridge). This lynx is initially friendly, but when you interact to try and comfort it, it'll push you away and become tameable. It has a respawn time of around 30 minutes]],

    -- NPCs: 243658
    [1605] = [[Located in Voidstorm. Surrounding Obscurion Citadel. It loses its Void effect and metal collar when tamed.]],

    -- NPCs: 243778
    [1606] = [[Located in The Grudge Pit (Non-Instanced), Harandar. If it isn't present try killing the existing NPCs until it spawns.]],

    -- NPCs: 243780, 246162, 254203, 256344, 256349, 256353, 256354, 256361
    [1607] = [[Located in The Grudge Pit (Non-Instanced), Harandar.]],

    -- NPCs: 244029
    [1608] = [[Located in Dawnstar Spire, Eversong Woods. Spawns during the Runestone Defense event at Tranquil Repose.]],

    -- NPCs: 244048
    [1609] = [[Located in Lightbloom Ath'Ran, Eversong Woods. Spawns when defending the Runestone at Lightbloom Ath'Ran during the Runestone Defense event.]],

    -- NPCs: 244060
    [1610] = [[Located in Fairbreeze Village, Eversong Woods. Spawns during the quest, Displaced Denizens.]],

    -- NPCs: 245997
    [1611] = [[Located in K'aresh. Found southeast of The Atrium. You have to jump on the ground where it's submerged to get it to spawn.]],

    -- NPCs: 246633
    [1612] = [[Located in Eversong Woods. Found running around to the south-west of Tranquillien. Loses Void effect upon taming.]],

    -- NPCs: 247090
    [1613] = [[Located in Dreth'amar Cavern, Harandar. Spawns during the quest, Carry On, Wayward Kuri.]],

    -- NPCs: 247559
    [1614] = [[Located in Den of Predaxus, Voidstorm. Found in a cave on the northern edge of the area.]],

    -- NPCs: 248016
    [1615] = [[Located in Voidscar Arena , Voidstorm. It loses its collar and void effect when tamed.]],

    -- NPCs: 248070
    [1616] = [[Located in Blooming Lattice, Harandar. Spawns during the quest, Memories in Stone.]],

    -- NPCs: 248577
    [1617] = [[Located in Harandar. Summoned by various Rutaani in Harandar.]],

    -- NPCs: 249358, 249359, 254815
    [1618] = [[Located in Eversong Woods. Found near the southern entrance to Zul'Aman.]],

    -- NPCs: 249392
    [1619] = [[Located in North Sanctum, Eversong Woods. Spawns during the Saltheril's Haven Magisters' quest, Fit for a Magister.]],

    -- NPCs: 249797, 249799
    [1620] = [[Located in The Oasis, Eco-Dome: Primus, K'aresh. Can only be found while Phase Diving.]],

    -- NPCs: 249798
    [1621] = [[Located in Eco-Dome: Primus, K'aresh. Found patroling the inside of Eco-Dome: Primus. Has a long respawn timer. Can only be found while Phase Diving.]],

    -- NPCs: 249806
    [1622] = [[Located in The Oasis, Eco-Dome: Primus, K'aresh. Flies around the Eco-Domes, but can only be found while Phase Diving. Requires standing on high cliffs in order to be able to get closer enough to tame them. One such cliff is northwest of The Oasis.]],

    -- NPCs: 249849
    [1623] = [[Located in Harandar. Circles the higher ground to the west of The Grudge Pit (non-instanced).]],

    -- NPCs: 250030
    [1624] = [[Located in Windrunner Spire, Eversong Woods. Spawns during the Runestone Defense event at Dawnstar Spire.]],

    -- NPCs: 250321
    [1625] = [[Located in The Blinding Bloom, Harandar. Found in a cave in the northern edge of the area.]],

    -- NPCs: 250341
    [1626] = [[Located in Encroaching Bloom & The Blinding Bloom, Harandar. In the Blinding Bloom, it can be found in a cave in the south-east of the area.]],

    -- NPCs: 250366
    [1627] = [[Located in Underground Burrows, Voidstorm. The cave entrance is located near the Sunkiller Sanctum delve.]],

    -- NPCs: 250822, 250824
    [1628] = [[Located in Dawnstar Spire, Eversong Woods. Spawns during the quest, And Then They Came.]],

    -- NPCs: 251593
    [1629] = [[Located in The Grudge Pit (Delve).]],

    -- NPCs: 251756, 251758
    [1630] = [[Located in The Grudge Pit (Non-Instanced), Harandar. Spawns during the quest, To the Ring.]],

    -- NPCs: 252466
    [1631] = [[Located in Torment's Rise (Delve). Spawns during combat with Nullaeus.]],

    -- NPCs: 252693
    [1632] = [[Located in Tranquil Repose, Eversong Woods. Appears during the "Void Rift: Tranquil Repose" Void Strike event.]],

    -- NPCs: 252773
    [1633] = [[Located in The Grudge Pit (Non-Instanced), Harandar. Found during the quest, Not-yet Defeated Champions.]],

    -- NPCs: 252994, 252997, 252998, 255847
    [1634] = [[Located in Shrouded Grove, Harandar. Found during the quest, The Stroke of Storms.]],

    -- NPCs: 253305
    [1635] = [[Located in Atal'Aman (Delve).]],

    -- NPCs: 253316
    [1636] = [[Located in Nordrassil Roots, Harandar. Loses flower on back when tamed.]],

    -- NPCs: 253499
    [1637] = [[Located in Zul'Aman. Found just west outside of Maisara Deeps.]],

    -- NPCs: 254709, 254720, 260954
    [1638] = [[Located in Eversong Woods. Appears during various Void Strike events in Eversong.]],

    -- NPCs: 254795
    [1639] = [[Located in Eversong Woods. Found south of the Horde entrance to Silvermoon City.]],

    -- NPCs: 254972
    [1640] = [[Located in Sunstrider Isle, Eversong Woods. Appears during various Void Strike events on Sunstrider Isle.]],

    -- NPCs: 255079
    [1641] = [[Located in Nordrassil Roots, Harandar. Found during the quest, Re-Hydra-ted.]],

    -- NPCs: 255194
    [1642] = [[Located in Sunstrider Isle, Eversong Woods. Appears during the "Voidstrider Isle" Void Strike event.]],

    -- NPCs: 255709
    [1643] = [[Located in Murder Row (Dungeon). Spawned from an Empty Felwyrm Core (purchased from an vendor in the instance). Once you use it, you place it down on the ground (only in the instance), and requires a Warlock or Demon Hunter to infuse it with Fel, spawning the Felwyrm.]],

    -- NPCs: 255886
    [1644] = [[Located in K'aresh. Found only during the Midnight Prologue quest chain added in Patch 11.2.7. The involved storyline begins with a summons from Arator: Meet Arator.]],

    -- NPCs: 255957, 259914
    [1645] = [[Located in Ritual Site: Broken Throne (Scenario). Appears during the Broken Temple Ritual Site event.]],

    -- NPCs: 256095
    [1646] = [[Located in The Blinding Bloom, Harandar. Found flying around the western edge of the area.]],

    -- NPCs: 256230, 256853
    [1647] = [[Located in Suncrown Tree, Eversong Woods.]],

    -- NPCs: 256345
    [1648] = [[Located in Vale of Mists & The Grudge Pit (Non-Instanced), Harandar.]],

    -- NPCs: 256357
    [1649] = [[Located in Vale of Mists & The Grudge Pit (Non-Instanced), Harandar. Also found in the higher area to the west of The Grudge Pit.]],

    -- NPCs: 256844
    [1650] = [[Located in Eversong Woods. Possibly only found as a couple of isolated individuals: one north of Fairbreeze Village and one in the woods a fair way east of East Sanctum and south of Farstrider Hold.]],

    -- NPCs: 256847
    [1651] = [[Located in Eversong Woods. Only known to occur as a single individual that runs along the beach to the west of Lightbloom Ath'Ran and south of Sunset Strand, by a larger number of Glistening Hawkstriders.]],

    -- NPCs: 256858
    [1652] = [[Located in Tranquil Repose, Eversong Woods. Found at Tranquil Repose (a glade west of Tranquillien) and also to the north-west of the southern entrance to Zul'Aman.]],

    -- NPCs: 256898
    [1653] = [[Located in Harandar. Found in various, very high-up places throughout the zone.]],

    -- NPCs: 257127
    [1654] = [[Located in Midnight Delves. Can spawn as a part of a Nemesis group only during the first season of Midnight Delves.]],

    -- NPCs: 257265
    [1655] = [[Located in Nalorakk's Prowl, Zul'Aman. Spawns during the quest, Crab Clues.]],

    -- NPCs: 257491
    [1656] = [[Located in Leech Bog , Zul'Aman. Found hidden in a bear den in the centre of the Leech Bog, around 41.2, 59.7. A swarm of these will appear when you approach the corpses in the back of the cave.]],

    -- NPCs: 257830, 262321
    [1657] = [[Located in Ritual Site: Daggerspine Point (Scenario). Appears during the Daggerspine Point Ritual Site event.]],

    -- NPCs: 258215
    [1658] = [[Located in Zul'Aman. Found to the north of Shadebasin Watch. Only found during the quest, A Quiet Walk Interrupted.]],

    -- NPCs: 258216
    [1659] = [[Located in Zul'Aman. Found to the east of Shadebasin Watch. Only found during the quest, A Quiet Walk Interrupted.]],

    -- NPCs: 258269
    [1660] = [[Located in Storm Fields, Voidstorm. Located in the caves beneath Storm Fields. Requires the quest, "Buried in the Dark" to access.]],

    -- NPCs: 259106
    [1661] = [[Located in Zeb'Nowa, Eversong Woods. This warp stalker appears during several Void Assaults in Zul'Aman and Eversong Woods, if Hal'hadar ethereals are present. Void Assaults switch between the two zones weekly. A good source in ZA is the Void Incursion event that occurs at Speaker's Rest when the zone's Void Assaults tally reaches 100%. During this event, the Hal'hadar Leystalkers are stealthed but easily detected by hunters. An event in Eversong where they occur is the "Cryptic Operations" Void Strike in the crypts at the southern end of the Zeb'Nowa ruins (in the far south-east of the zone, south-west of the entrance to Zul'Aman). This strike appears to be less frequent than most so you may have to clear a number of them before it pops, but when it does be quick to tame one as other players engaging with the event will probably kill them quickly.]],

    -- NPCs: 259955, 259960
    [1662] = [[Located in Maisara Deeps, Zul'Aman. Appears during the "Battery Rush: Maisara Deeps" Void Strike event.]],

    -- NPCs: 260031
    [1663] = [[Located in Ahl'ua Wetland , Harandar . Latticewing Sporegliders with this ID patrol the zone in a small pack.]],

    -- NPCs: 261337
    [1664] = [[Located in Eversong Woods. Appears during the 'Tranquil Repose' and 'South Eversong Woods' Void Strike events in Eversong Woods. Only one of these beasts seems to appear at a time but another may spawn as the event continues. These events only occur when Void Assaults are set in Eversong Woods, which is every second week. Void Strike locations seem to cycle randomly, so keep completing them until one of these two appears.]],

    -- NPCs: 263617
    [1665] = [[Located in Ritual Site: Daggerspine Point (Scenario). There's a chance of summoning this snapdragon while running the Daggerspine Point Ritual Site. This instance is open every second week in Eversong Woods (check for the purple ritual site mark on the zone map) and is soloable. Inside the instance you can find occasional piles of Washed Up Kelp. Interacting with these has a chance of spawning a Void-Touched Snapdragon (which can also drop a mount of the same name).]],
}

PSM.NPCNotes = {
    [462] = notes[1],
    [574] = notes[2],
    [1511] = notes[3],
    [1516] = notes[4],
    [1552] = notes[5],
    [1780] = notes[6],
    [1781] = notes[6],
    [2098] = notes[7],
    [2350] = notes[8],
    [2354] = notes[9],
    [2385] = notes[8],
    [2408] = notes[8],
    [2462] = notes[10],
    [2476] = notes[11],
    [2658] = notes[12],
    [3056] = notes[13],
    [3619] = notes[14],
    [3630] = notes[15],
    [3631] = notes[15],
    [3632] = notes[15],
    [3633] = notes[15],
    [3634] = notes[15],
    [3636] = notes[15],
    [3637] = notes[15],
    [3652] = notes[15],
    [3653] = notes[16],
    [3680] = notes[17],
    [3864] = notes[18],
    [3868] = notes[19],
    [4015] = notes[20],
    [4016] = notes[21],
    [4017] = notes[22],
    [4250] = notes[23],
    [4374] = notes[24],
    [4861] = notes[25],
    [4863] = notes[25],
    [4950] = notes[26],
    [5048] = notes[15],
    [5053] = notes[15],
    [5056] = notes[15],
    [5225] = notes[27],
    [5278] = notes[28],
    [5291] = notes[29],
    [5300] = notes[30],
    [5304] = notes[31],
    [5755] = notes[15],
    [5756] = notes[15],
    [5762] = notes[32],
    [5833] = notes[33],
    [5912] = notes[34],
    [5983] = notes[35],
    [6021] = notes[36],
    [6215] = notes[37],
    [7022] = notes[25],
    [7078] = notes[25],
    [7268] = notes[38],
    [7269] = notes[38],
    [7273] = notes[38],
    [7405] = notes[25],
    [7803] = notes[39],
    [8095] = notes[38],
    [8120] = notes[38],
    [8138] = notes[38],
    [8211] = notes[40],
    [8299] = notes[41],
    [8300] = notes[42],
    [8301] = notes[43],
    [8302] = notes[44],
    [8303] = notes[45],
    [8336] = notes[29],
    [8440] = notes[46],
    [8886] = notes[47],
    [8921] = notes[48],
    [8922] = notes[48],
    [8925] = notes[48],
    [8926] = notes[48],
    [8927] = notes[48],
    [8928] = notes[49],
    [8932] = notes[50],
    [8933] = notes[48],
    [9042] = notes[48],
    [9416] = notes[51],
    [9683] = notes[52],
    [9684] = notes[53],
    [9696] = notes[51],
    [9701] = notes[51],
    [10177] = notes[51],
    [10220] = notes[54],
    [10221] = notes[51],
    [10268] = notes[55],
    [10375] = notes[51],
    [10376] = notes[56],
    [10596] = notes[56],
    [10699] = notes[57],
    [10737] = notes[58],
    [10806] = notes[59],
    [10981] = notes[60],
    [10990] = notes[61],
    [11671] = notes[62],
    [11672] = notes[62],
    [11673] = notes[62],
    [11698] = notes[63],
    [11721] = notes[63],
    [11722] = notes[64],
    [11723] = notes[63],
    [11724] = notes[63],
    [11725] = notes[65],
    [11726] = notes[63],
    [11727] = notes[63],
    [11728] = notes[63],
    [11729] = notes[65],
    [11730] = notes[63],
    [11731] = notes[63],
    [11732] = notes[63],
    [11733] = notes[66],
    [11734] = notes[63],
    [11735] = notes[63],
    [11736] = notes[63],
    [11737] = notes[63],
    [11738] = notes[63],
    [11739] = notes[63],
    [11740] = notes[63],
    [11741] = notes[63],
    [11785] = notes[67],
    [11786] = notes[67],
    [11787] = notes[68],
    [11788] = notes[68],
    [11789] = notes[69],
    [11982] = notes[62],
    [12207] = notes[69],
    [12418] = notes[70],
    [12676] = notes[71],
    [12940] = notes[72],
    [13036] = notes[73],
    [13136] = notes[74],
    [13323] = notes[75],
    [13596] = notes[76],
    [13599] = notes[69],
    [14020] = notes[77],
    [14283] = notes[60],
    [14370] = notes[78],
    [14398] = notes[79],
    [14472] = notes[63],
    [14473] = notes[63],
    [14474] = notes[80],
    [14475] = notes[63],
    [14476] = notes[63],
    [14477] = notes[63],
    [15168] = notes[81],
    [15196] = notes[63],
    [15229] = notes[82],
    [15230] = notes[82],
    [15233] = notes[82],
    [15235] = notes[83],
    [15236] = notes[82],
    [15240] = notes[82],
    [15300] = notes[82],
    [15316] = notes[84],
    [15317] = notes[82],
    [15318] = notes[81],
    [15319] = notes[81],
    [15320] = notes[81],
    [15323] = notes[81],
    [15325] = notes[81],
    [15327] = notes[85],
    [15336] = notes[81],
    [15348] = notes[86],
    [15369] = notes[87],
    [15370] = notes[88],
    [15461] = notes[81],
    [15462] = notes[81],
    [15509] = notes[89],
    [15510] = notes[90],
    [15511] = notes[91],
    [15521] = notes[92],
    [15543] = notes[93],
    [15544] = notes[94],
    [15546] = notes[95],
    [15621] = notes[82],
    [15622] = notes[82],
    [15718] = notes[96],
    [15932] = notes[97],
    [15934] = notes[98],
    [15962] = notes[82],
    [15974] = notes[99],
    [15975] = notes[99],
    [15976] = notes[99],
    [16170] = notes[100],
    [16171] = notes[100],
    [16173] = notes[100],
    [16174] = notes[100],
    [16175] = notes[101],
    [16176] = notes[100],
    [16177] = notes[100],
    [16178] = notes[100],
    [16179] = notes[102],
    [16180] = notes[103],
    [16181] = notes[104],
    [16491] = notes[105],
    [16492] = notes[106],
    [16698] = notes[107],
    [16872] = notes[108],
    [16874] = notes[109],
    [16875] = notes[110],
    [17034] = notes[111],
    [17039] = notes[111],
    [17280] = notes[112],
    [17669] = notes[113],
    [17724] = notes[114],
    [17731] = notes[114],
    [17732] = notes[114],
    [17882] = notes[114],
    [17952] = notes[115],
    [18105] = notes[114],
    [18155] = notes[116],
    [18289] = notes[117],
    [18290] = notes[118],
    [18398] = notes[119],
    [18707] = notes[120],
    [18982] = notes[115],
    [18983] = notes[115],
    [19055] = notes[121],
    [19306] = notes[122],
    [19428] = notes[123],
    [19429] = notes[123],
    [19632] = notes[114],
    [20038] = notes[124],
    [20039] = notes[124],
    [20797] = notes[15],
    [20906] = notes[125],
    [21128] = notes[126],
    [21246] = notes[127],
    [21250] = notes[128],
    [21306] = notes[129],
    [21373] = notes[130],
    [21423] = notes[131],
    [21470] = notes[132],
    [21891] = notes[123],
    [21904] = notes[123],
    [22056] = notes[127],
    [22299] = notes[133],
    [22884] = notes[134],
    [22885] = notes[134],
    [22946] = notes[135],
    [22979] = notes[136],
    [23020] = notes[137],
    [23035] = notes[138],
    [23132] = notes[139],
    [23163] = notes[140],
    [23206] = notes[141],
    [23232] = notes[142],
    [23584] = notes[143],
    [23598] = notes[143],
    [23834] = notes[143],
    [23939] = notes[144],
    [24043] = notes[143],
    [24047] = notes[143],
    [24064] = notes[143],
    [24138] = notes[143],
    [24217] = notes[143],
    [24338] = notes[145],
    [24530] = notes[143],
    [24547] = notes[146],
    [24761] = notes[147],
    [24917] = notes[148],
    [25748] = notes[149],
    [25750] = notes[150],
    [25791] = notes[151],
    [25817] = notes[149],
    [25867] = notes[152],
    [26271] = notes[153],
    [26272] = notes[153],
    [26273] = notes[154],
    [26293] = notes[155],
    [26360] = notes[156],
    [26483] = notes[155],
    [26622] = notes[157],
    [26625] = notes[157],
    [26628] = notes[157],
    [26641] = notes[157],
    [26672] = notes[158],
    [26730] = notes[159],
    [26824] = notes[157],
    [27249] = notes[160],
    [27421] = notes[161],
    [27483] = notes[162],
    [27578] = notes[163],
    [27626] = notes[164],
    [27642] = notes[165],
    [28213] = notes[166],
    [28851] = notes[167],
    [29033] = notes[168],
    [29444] = notes[169],
    [29630] = notes[170],
    [29637] = notes[171],
    [29713] = notes[172],
    [29735] = notes[173],
    [29838] = notes[174],
    [29931] = notes[174],
    [29958] = notes[175],
    [30320] = notes[176],
    [30432] = notes[177],
    [30455] = notes[178],
    [30456] = notes[179],
    [30664] = notes[180],
    [30963] = notes[180],
    [31010] = notes[181],
    [32163] = notes[182],
    [32997] = notes[183],
    [34034] = notes[184],
    [34369] = notes[185],
    [34543] = notes[186],
    [34982] = notes[187],
    [35750] = notes[188],
    [35811] = notes[188],
    [35812] = notes[189],
    [35904] = notes[190],
    [36512] = notes[191],
    [36740] = notes[192],
    [36852] = notes[193],
    [37025] = notes[194],
    [37091] = notes[195],
    [37217] = notes[196],
    [37718] = notes[197],
    [37785] = notes[198],
    [37786] = notes[199],
    [37961] = notes[200],
    [38187] = notes[201],
    [38845] = notes[202],
    [38881] = notes[191],
    [39149] = notes[203],
    [39348] = notes[204],
    [39440] = notes[205],
    [39444] = notes[206],
    [39658] = notes[207],
    [39833] = notes[208],
    [40064] = notes[209],
    [40238] = notes[210],
    [40239] = notes[211],
    [40310] = notes[205],
    [40403] = notes[212],
    [40458] = notes[205],
    [40650] = notes[213],
    [40819] = notes[214],
    [41084] = notes[215],
    [41166] = notes[216],
    [41212] = notes[217],
    [41374] = notes[218],
    [41645] = notes[219],
    [42556] = notes[205],
    [42657] = notes[220],
    [42658] = notes[220],
    [42659] = notes[220],
    [42660] = notes[220],
    [42663] = notes[220],
    [42664] = notes[220],
    [42766] = notes[221],
    [42845] = notes[222],
    [43007] = notes[223],
    [43296] = notes[224],
    [43339] = notes[225],
    [43340] = notes[226],
    [43438] = notes[227],
    [43658] = notes[228],
    [43917] = notes[222],
    [44109] = notes[229],
    [44130] = notes[230],
    [44257] = notes[231],
    [44390] = notes[232],
    [44481] = notes[233],
    [44587] = notes[234],
    [44906] = notes[235],
    [45096] = notes[236],
    [45202] = notes[237],
    [45204] = notes[238],
    [45302] = notes[239],
    [45321] = notes[240],
    [45353] = notes[239],
    [45450] = notes[241],
    [45453] = notes[242],
    [45859] = notes[243],
    [46126] = notes[244],
    [46127] = notes[244],
    [46128] = notes[244],
    [46129] = notes[244],
    [46278] = notes[245],
    [46280] = notes[245],
    [46281] = notes[245],
    [46317] = notes[246],
    [46369] = notes[247],
    [46910] = notes[248],
    [47053] = notes[249],
    [47079] = notes[250],
    [47117] = notes[251],
    [47190] = notes[252],
    [47202] = notes[252],
    [47204] = notes[253],
    [47283] = notes[254],
    [47390] = notes[255],
    [47544] = notes[256],
    [47720] = notes[257],
    [47726] = notes[258],
    [47740] = notes[259],
    [47769] = notes[260],
    [47801] = notes[261],
    [47803] = notes[262],
    [48278] = notes[263],
    [48440] = notes[263],
    [48441] = notes[263],
    [48442] = notes[263],
    [48447] = notes[264],
    [48448] = notes[265],
    [48449] = notes[265],
    [48450] = notes[264],
    [48451] = notes[266],
    [48479] = notes[267],
    [48724] = notes[268],
    [48873] = notes[269],
    [49565] = notes[270],
    [49822] = notes[271],
    [50058] = notes[272],
    [50154] = notes[273],
    [50249] = notes[274],
    [50313] = notes[275],
    [50320] = notes[275],
    [50328] = notes[276],
    [50335] = notes[277],
    [50348] = notes[278],
    [50361] = notes[279],
    [50370] = notes[280],
    [50728] = notes[281],
    [50735] = notes[282],
    [50737] = notes[283],
    [50741] = notes[284],
    [50742] = notes[285],
    [50743] = notes[286],
    [50744] = notes[285],
    [50745] = notes[80],
    [50746] = notes[286],
    [50747] = notes[287],
    [50748] = notes[288],
    [50763] = notes[289],
    [50765] = notes[290],
    [50770] = notes[291],
    [50792] = notes[292],
    [50803] = notes[293],
    [50807] = notes[294],
    [50810] = notes[295],
    [50813] = notes[296],
    [50815] = notes[297],
    [50839] = notes[298],
    [50842] = notes[299],
    [50843] = notes[300],
    [50846] = notes[301],
    [50850] = notes[302],
    [50854] = notes[303],
    [50859] = notes[302],
    [50874] = notes[304],
    [50876] = notes[305],
    [50884] = notes[306],
    [50885] = notes[307],
    [50886] = notes[308],
    [50892] = notes[309],
    [50895] = notes[310],
    [50897] = notes[80],
    [50905] = notes[311],
    [50930] = notes[312],
    [50940] = notes[313],
    [50944] = notes[314],
    [50946] = notes[315],
    [50948] = notes[316],
    [50959] = notes[317],
    [50960] = notes[318],
    [50981] = notes[319],
    [50990] = notes[320],
    [50997] = notes[270],
    [50998] = notes[314],
    [51002] = notes[321],
    [51004] = notes[285],
    [51010] = notes[322],
    [51013] = notes[323],
    [51018] = notes[324],
    [51025] = notes[325],
    [51040] = notes[326],
    [51042] = notes[327],
    [51044] = notes[328],
    [51048] = notes[329],
    [51053] = notes[330],
    [51061] = notes[331],
    [51062] = notes[332],
    [51063] = notes[333],
    [51066] = notes[334],
    [51069] = notes[335],
    [51076] = notes[336],
    [51193] = notes[337],
    [51401] = notes[338],
    [51402] = notes[339],
    [51403] = notes[340],
    [51404] = notes[341],
    [51671] = notes[239],
    [51673] = notes[239],
    [51674] = notes[239],
    [51675] = notes[239],
    [51676] = notes[342],
    [51712] = notes[239],
    [51713] = notes[239],
    [51760] = notes[239],
    [51972] = notes[343],
    [52085] = notes[344],
    [52157] = notes[345],
    [52224] = notes[346],
    [52345] = notes[344],
    [52373] = notes[344],
    [52375] = notes[344],
    [52376] = notes[344],
    [52377] = notes[344],
    [52379] = notes[344],
    [52402] = notes[347],
    [52413] = notes[344],
    [52418] = notes[344],
    [52441] = notes[344],
    [52442] = notes[348],
    [52981] = notes[349],
    [53152] = notes[350],
    [53206] = notes[351],
    [53265] = notes[352],
    [53694] = notes[351],
    [53695] = notes[351],
    [53704] = notes[353],
    [53753] = notes[354],
    [54318] = notes[355],
    [54319] = notes[356],
    [54320] = notes[357],
    [54321] = notes[358],
    [54322] = notes[359],
    [54323] = notes[360],
    [54324] = notes[361],
    [54338] = notes[362],
    [54517] = notes[363],
    [54533] = notes[364],
    [54688] = notes[365],
    [54699] = notes[365],
    [54700] = notes[365],
    [55015] = notes[366],
    [55874] = notes[367],
    [56172] = notes[368],
    [56286] = notes[369],
    [56543] = notes[370],
    [56703] = notes[371],
    [56753] = notes[372],
    [56754] = notes[373],
    [56877] = notes[374],
    [57232] = notes[375],
    [57237] = notes[375],
    [57421] = notes[376],
    [57797] = notes[377],
    [58111] = notes[378],
    [58363] = notes[379],
    [58419] = notes[380],
    [58459] = notes[381],
    [58475] = notes[381],
    [58568] = notes[382],
    [58588] = notes[381],
    [58645] = notes[383],
    [58674] = notes[384],
    [58755] = notes[385],
    [58768] = notes[386],
    [58804] = notes[387],
    [58808] = notes[387],
    [58809] = notes[387],
    [58811] = notes[388],
    [58876] = notes[384],
    [58883] = notes[389],
    [58884] = notes[390],
    [58885] = notes[390],
    [58889] = notes[391],
    [59037] = notes[392],
    [59157] = notes[393],
    [59309] = notes[384],
    [59339] = notes[394],
    [59488] = notes[395],
    [59680] = notes[396],
    [59753] = notes[397],
    [59754] = notes[398],
    [59756] = notes[399],
    [59757] = notes[400],
    [59915] = notes[401],
    [59973] = notes[402],
    [60043] = notes[401],
    [60047] = notes[401],
    [60051] = notes[401],
    [60131] = notes[403],
    [60203] = notes[404],
    [60373] = notes[405],
    [60401] = notes[406],
    [60410] = notes[407],
    [60576] = notes[408],
    [60623] = notes[409],
    [60875] = notes[410],
    [61159] = notes[411],
    [61306] = notes[412],
    [61307] = notes[413],
    [61387] = notes[414],
    [61408] = notes[415],
    [61415] = notes[414],
    [61509] = notes[416],
    [61565] = notes[417],
    [61657] = notes[418],
    [61658] = notes[418],
    [61747] = notes[419],
    [61848] = notes[420],
    [61945] = notes[414],
    [62254] = notes[421],
    [62324] = notes[422],
    [62442] = notes[423],
    [62945] = notes[411],
    [63510] = notes[424],
    [63584] = notes[425],
    [63722] = notes[426],
    [63723] = notes[427],
    [63895] = notes[428],
    [63920] = notes[429],
    [64183] = notes[408],
    [64321] = notes[430],
    [64323] = notes[430],
    [64724] = notes[431],
    [64965] = notes[432],
    [65229] = notes[433],
    [65520] = notes[371],
    [65616] = notes[434],
    [65650] = notes[435],
    [65711] = notes[379],
    [66464] = notes[436],
    [66633] = notes[437],
    [66668] = notes[438],
    [66686] = notes[430],
    [66695] = notes[439],
    [66772] = notes[440],
    [66783] = notes[441],
    [66799] = notes[442],
    [67071] = notes[443],
    [67084] = notes[379],
    [67099] = notes[444],
    [67770] = notes[445],
    [67774] = notes[446],
    [67820] = notes[447],
    [67896] = notes[448],
    [68079] = notes[449],
    [68080] = notes[450],
    [68081] = notes[451],
    [68476] = notes[452],
    [68583] = notes[448],
    [68584] = notes[448],
    [69099] = notes[453],
    [69148] = notes[454],
    [69161] = notes[455],
    [69177] = notes[456],
    [69180] = notes[457],
    [69306] = notes[458],
    [69349] = notes[459],
    [69562] = notes[460],
    [69712] = notes[461],
    [69795] = notes[462],
    [69943] = notes[463],
    [69946] = notes[464],
    [69947] = notes[465],
    [70120] = notes[466],
    [70172] = notes[467],
    [70327] = notes[468],
    [70448] = notes[469],
    [70558] = notes[470],
    [70589] = notes[471],
    [70595] = notes[472],
    [70702] = notes[473],
    [71297] = notes[474],
    [71491] = notes[475],
    [71529] = notes[476],
    [71578] = notes[477],
    [71921] = notes[478],
    [71923] = notes[478],
    [72275] = notes[479],
    [72329] = notes[480],
    [72452] = notes[481],
    [72775] = notes[482],
    [72876] = notes[483],
    [72927] = notes[484],
    [72991] = notes[485],
    [73158] = notes[486],
    [73160] = notes[487],
    [73163] = notes[488],
    [73166] = notes[489],
    [73167] = notes[490],
    [73185] = notes[491],
    [73223] = notes[492],
    [73805] = notes[493],
    [73960] = notes[494],
    [74446] = notes[495],
    [74508] = notes[496],
    [74509] = notes[497],
    [74583] = notes[498],
    [74584] = notes[498],
    [74620] = notes[499],
    [74722] = notes[500],
    [75113] = notes[501],
    [75247] = notes[499],
    [75280] = notes[502],
    [75466] = notes[499],
    [75467] = notes[499],
    [75588] = notes[503],
    [75590] = notes[503],
    [76143] = notes[504],
    [76181] = notes[505],
    [76253] = notes[506],
    [76473] = notes[507],
    [76517] = notes[507],
    [76624] = notes[508],
    [76874] = notes[509],
    [76891] = notes[510],
    [76945] = notes[511],
    [76946] = notes[509],
    [76954] = notes[512],
    [77093] = notes[513],
    [77122] = notes[514],
    [77314] = notes[515],
    [77441] = notes[516],
    [77442] = notes[517],
    [77443] = notes[518],
    [77519] = notes[519],
    [77634] = notes[520],
    [77845] = notes[521],
    [77886] = notes[522],
    [77927] = notes[523],
    [77957] = notes[524],
    [78291] = notes[525],
    [78364] = notes[526],
    [78432] = notes[527],
    [78457] = notes[528],
    [78489] = notes[529],
    [78528] = notes[530],
    [78550] = notes[531],
    [78864] = notes[525],
    [78872] = notes[525],
    [78918] = notes[532],
    [78919] = notes[533],
    [78920] = notes[534],
    [79061] = notes[535],
    [79148] = notes[536],
    [79149] = notes[537],
    [79285] = notes[538],
    [79483] = notes[539],
    [79524] = notes[540],
    [79755] = notes[541],
    [80034] = notes[542],
    [80098] = notes[543],
    [80174] = notes[544],
    [80227] = notes[545],
    [80263] = notes[546],
    [80420] = notes[547],
    [80715] = notes[548],
    [80779] = notes[549],
    [80997] = notes[550],
    [81001] = notes[551],
    [81083] = notes[552],
    [81084] = notes[494],
    [81306] = notes[553],
    [81307] = notes[553],
    [81983] = notes[554],
    [82037] = notes[538],
    [82050] = notes[555],
    [82192] = notes[556],
    [82258] = notes[557],
    [82307] = notes[558],
    [82308] = notes[559],
    [82310] = notes[560],
    [82356] = notes[561],
    [82513] = notes[562],
    [82530] = notes[563],
    [82617] = notes[564],
    [82778] = notes[565],
    [83389] = notes[566],
    [83444] = notes[567],
    [83455] = notes[568],
    [83553] = notes[569],
    [83681] = notes[570],
    [83719] = notes[571],
    [83720] = notes[572],
    [83804] = notes[573],
    [83815] = notes[574],
    [83840] = notes[571],
    [83841] = notes[575],
    [83976] = notes[576],
    [83982] = notes[577],
    [83984] = notes[578],
    [84097] = notes[579],
    [84102] = notes[579],
    [84190] = notes[580],
    [84399] = notes[554],
    [84644] = notes[581],
    [84793] = notes[582],
    [84798] = notes[583],
    [84799] = notes[583],
    [84912] = notes[584],
    [84919] = notes[585],
    [84955] = notes[586],
    [85453] = notes[587],
    [85753] = notes[571],
    [85756] = notes[571],
    [85856] = notes[548],
    [86134] = notes[588],
    [86286] = notes[589],
    [86455] = notes[590],
    [86507] = notes[591],
    [86780] = notes[548],
    [87425] = notes[592],
    [87699] = notes[593],
    [88075] = notes[594],
    [88076] = notes[594],
    [88150] = notes[595],
    [88208] = notes[596],
    [88523] = notes[597],
    [88524] = notes[597],
    [88525] = notes[598],
    [88708] = notes[599],
    [88710] = notes[600],
    [88922] = notes[601],
    [89244] = notes[602],
    [89689] = notes[603],
    [89837] = notes[604],
    [90124] = notes[605],
    [90517] = notes[606],
    [90782] = notes[607],
    [90816] = notes[608],
    [91539] = notes[609],
    [91916] = notes[610],
    [92117] = notes[611],
    [92599] = notes[612],
    [92600] = notes[612],
    [92735] = notes[613],
    [92937] = notes[614],
    [92956] = notes[615],
    [93058] = notes[616],
    [93952] = notes[609],
    [94708] = notes[617],
    [94718] = notes[617],
    [95043] = notes[618],
    [95328] = notes[619],
    [95615] = notes[620],
    [95762] = notes[621],
    [96608] = notes[622],
    [96611] = notes[622],
    [97030] = notes[623],
    [97119] = notes[624],
    [97124] = notes[625],
    [97163] = notes[626],
    [97220] = notes[627],
    [97454] = notes[628],
    [97504] = notes[629],
    [97677] = notes[630],
    [97928] = notes[631],
    [97991] = notes[632],
    [98759] = notes[633],
    [99598] = notes[634],
    [99636] = notes[635],
    [99675] = notes[636],
    [100328] = notes[637],
    [100838] = notes[638],
    [100890] = notes[639],
    [101110] = notes[640],
    [101581] = notes[641],
    [101624] = notes[642],
    [102106] = notes[643],
    [102263] = notes[644],
    [102361] = notes[645],
    [102385] = notes[646],
    [102918] = notes[647],
    [103045] = notes[648],
    [103217] = notes[649],
    [103514] = notes[650],
    [103549] = notes[651],
    [103563] = notes[652],
    [103605] = notes[653],
    [103681] = notes[654],
    [103785] = notes[655],
    [103786] = notes[656],
    [103787] = notes[657],
    [103808] = notes[658],
    [104310] = notes[659],
    [104481] = notes[660],
    [104585] = notes[661],
    [104895] = notes[662],
    [105756] = notes[663],
    [105876] = notes[664],
    [105884] = notes[665],
    [106311] = notes[666],
    [106665] = notes[667],
    [107398] = notes[668],
    [107431] = notes[669],
    [107440] = notes[670],
    [107459] = notes[671],
    [107477] = notes[672],
    [107487] = notes[673],
    [107595] = notes[674],
    [107596] = notes[675],
    [107676] = notes[676],
    [107677] = notes[677],
    [107678] = notes[678],
    [107679] = notes[679],
    [107778] = notes[680],
    [107836] = notes[681],
    [107951] = notes[682],
    [108088] = notes[683],
    [108106] = notes[684],
    [108181] = notes[685],
    [108359] = notes[686],
    [108360] = notes[686],
    [108361] = notes[686],
    [108542] = notes[687],
    [108702] = notes[617],
    [109025] = notes[688],
    [109320] = notes[689],
    [109594] = notes[690],
    [109702] = notes[691],
    [110351] = notes[692],
    [110376] = notes[693],
    [110562] = notes[694],
    [110966] = notes[695],
    [111273] = notes[696],
    [111463] = notes[697],
    [111633] = notes[698],
    [111643] = notes[698],
    [111647] = notes[698],
    [111721] = notes[699],
    [111820] = notes[700],
    [111933] = notes[701],
    [111980] = notes[702],
    [112039] = notes[703],
    [112858] = notes[704],
    [113040] = notes[705],
    [113041] = notes[706],
    [113123] = notes[707],
    [113185] = notes[708],
    [113202] = notes[709],
    [113205] = notes[710],
    [113417] = notes[711],
    [113626] = notes[712],
    [113694] = notes[713],
    [113974] = notes[714],
    [114323] = notes[715],
    [114692] = notes[716],
    [114794] = notes[717],
    [114991] = notes[718],
    [114992] = notes[719],
    [114993] = notes[720],
    [115479] = notes[721],
    [115671] = notes[722],
    [115672] = notes[723],
    [115673] = notes[724],
    [115674] = notes[725],
    [115795] = notes[726],
    [116527] = notes[727],
    [117101] = notes[728],
    [117354] = notes[729],
    [118244] = notes[730],
    [118706] = notes[731],
    [118721] = notes[732],
    [119721] = notes[733],
    [119969] = notes[734],
    [119990] = notes[735],
    [120016] = notes[736],
    [120071] = notes[737],
    [120477] = notes[738],
    [120570] = notes[739],
    [120666] = notes[740],
    [120667] = notes[740],
    [121112] = notes[741],
    [121277] = notes[742],
    [121502] = notes[743],
    [121540] = notes[744],
    [121565] = notes[745],
    [121567] = notes[746],
    [121571] = notes[747],
    [121623] = notes[748],
    [121624] = notes[748],
    [121625] = notes[748],
    [121896] = notes[749],
    [121898] = notes[750],
    [122242] = notes[751],
    [122407] = notes[752],
    [122408] = notes[753],
    [122410] = notes[752],
    [122548] = notes[754],
    [122961] = notes[755],
    [122963] = notes[756],
    [122986] = notes[757],
    [122998] = notes[758],
    [123358] = notes[759],
    [123604] = notes[760],
    [123636] = notes[761],
    [123653] = notes[762],
    [123712] = notes[763],
    [123757] = notes[764],
    [124170] = notes[765],
    [124188] = notes[766],
    [124269] = notes[767],
    [124271] = notes[767],
    [124279] = notes[768],
    [124375] = notes[769],
    [124382] = notes[770],
    [124399] = notes[771],
    [124439] = notes[772],
    [124548] = notes[773],
    [124845] = notes[774],
    [124885] = notes[775],
    [124890] = notes[776],
    [125214] = notes[777],
    [125547] = notes[778],
    [126217] = notes[779],
    [126219] = notes[780],
    [126419] = notes[781],
    [126637] = notes[782],
    [126644] = notes[783],
    [126732] = notes[784],
    [126749] = notes[785],
    [126894] = notes[786],
    [126898] = notes[787],
    [126945] = notes[788],
    [127169] = notes[789],
    [127203] = notes[790],
    [127259] = notes[791],
    [127279] = notes[792],
    [127290] = notes[793],
    [127333] = notes[794],
    [127381] = notes[795],
    [127477] = notes[796],
    [127479] = notes[797],
    [127482] = notes[798],
    [127569] = notes[799],
    [127572] = notes[800],
    [127602] = notes[801],
    [127611] = notes[799],
    [127615] = notes[802],
    [127630] = notes[803],
    [127651] = notes[804],
    [127768] = notes[805],
    [127800] = notes[806],
    [127847] = notes[807],
    [127873] = notes[808],
    [128093] = notes[809],
    [128099] = notes[810],
    [128115] = notes[810],
    [128361] = notes[811],
    [128434] = notes[757],
    [128435] = notes[812],
    [128441] = notes[813],
    [128476] = notes[813],
    [128478] = notes[813],
    [128551] = notes[814],
    [128587] = notes[815],
    [128612] = notes[810],
    [128622] = notes[810],
    [128838] = notes[816],
    [128848] = notes[817],
    [128849] = notes[818],
    [129070] = notes[819],
    [129124] = notes[820],
    [129283] = notes[821],
    [129298] = notes[822],
    [129482] = notes[823],
    [129500] = notes[824],
    [129517] = notes[825],
    [129626] = notes[826],
    [129764] = notes[827],
    [129805] = notes[828],
    [129833] = notes[829],
    [129835] = notes[830],
    [129857] = notes[819],
    [129950] = notes[831],
    [130022] = notes[832],
    [130023] = notes[832],
    [130085] = notes[833],
    [130147] = notes[834],
    [130191] = notes[835],
    [130338] = notes[836],
    [130350] = notes[837],
    [130401] = notes[838],
    [130439] = notes[839],
    [130443] = notes[840],
    [130512] = notes[841],
    [130581] = notes[836],
    [130584] = notes[836],
    [130643] = notes[842],
    [130889] = notes[843],
    [130935] = notes[844],
    [130937] = notes[845],
    [130943] = notes[846],
    [130953] = notes[847],
    [131136] = notes[848],
    [131695] = notes[849],
    [131817] = notes[850],
    [131890] = notes[851],
    [131892] = notes[851],
    [131893] = notes[851],
    [131895] = notes[852],
    [131897] = notes[851],
    [132194] = notes[853],
    [132195] = notes[853],
    [132211] = notes[854],
    [132275] = notes[819],
    [132341] = notes[855],
    [132526] = notes[851],
    [132578] = notes[856],
    [132580] = notes[857],
    [132584] = notes[858],
    [132653] = notes[859],
    [133163] = notes[860],
    [133298] = notes[861],
    [133321] = notes[862],
    [133356] = notes[863],
    [133384] = notes[864],
    [133527] = notes[865],
    [133562] = notes[866],
    [133835] = notes[867],
    [133988] = notes[868],
    [134005] = notes[869],
    [134046] = notes[870],
    [134047] = notes[870],
    [134048] = notes[871],
    [134057] = notes[872],
    [134147] = notes[873],
    [134296] = notes[874],
    [134307] = notes[875],
    [134390] = notes[876],
    [134433] = notes[877],
    [134450] = notes[878],
    [134507] = notes[879],
    [134519] = notes[880],
    [134562] = notes[881],
    [134686] = notes[882],
    [134780] = notes[883],
    [134782] = notes[884],
    [134798] = notes[836],
    [134799] = notes[885],
    [134852] = notes[886],
    [134896] = notes[887],
    [134906] = notes[888],
    [134907] = notes[888],
    [134934] = notes[889],
    [135048] = notes[890],
    [135049] = notes[891],
    [135052] = notes[892],
    [135234] = notes[891],
    [135293] = notes[893],
    [135304] = notes[894],
    [135322] = notes[895],
    [135433] = notes[896],
    [135450] = notes[897],
    [135490] = notes[898],
    [135508] = notes[899],
    [135510] = notes[900],
    [135632] = notes[901],
    [135743] = notes[902],
    [135769] = notes[903],
    [135846] = notes[882],
    [136183] = notes[904],
    [136280] = notes[905],
    [136311] = notes[906],
    [136417] = notes[907],
    [136418] = notes[907],
    [136426] = notes[908],
    [136469] = notes[909],
    [136548] = notes[910],
    [136653] = notes[911],
    [136667] = notes[912],
    [136914] = notes[913],
    [136976] = notes[914],
    [136984] = notes[915],
    [137025] = notes[916],
    [137098] = notes[917],
    [137181] = notes[918],
    [137182] = notes[919],
    [137183] = notes[920],
    [137233] = notes[921],
    [137336] = notes[922],
    [137338] = notes[923],
    [137340] = notes[924],
    [137342] = notes[924],
    [137349] = notes[925],
    [137353] = notes[926],
    [137487] = notes[927],
    [137681] = notes[928],
    [137713] = notes[929],
    [137714] = notes[930],
    [137716] = notes[931],
    [137720] = notes[932],
    [137829] = notes[933],
    [137836] = notes[934],
    [137840] = notes[935],
    [137885] = notes[936],
    [138086] = notes[937],
    [138286] = notes[938],
    [138342] = notes[939],
    [138491] = notes[940],
    [138540] = notes[941],
    [138660] = notes[942],
    [138794] = notes[943],
    [138812] = notes[944],
    [138851] = notes[945],
    [138963] = notes[946],
    [138971] = notes[947],
    [138972] = notes[948],
    [139194] = notes[949],
    [139298] = notes[950],
    [139328] = notes[951],
    [139335] = notes[952],
    [139336] = notes[952],
    [139356] = notes[952],
    [139359] = notes[952],
    [139483] = notes[953],
    [139486] = notes[954],
    [139562] = notes[955],
    [139563] = notes[956],
    [139709] = notes[957],
    [139980] = notes[958],
    [140034] = notes[888],
    [140038] = notes[959],
    [140070] = notes[960],
    [140071] = notes[836],
    [140072] = notes[836],
    [140275] = notes[961],
    [140296] = notes[836],
    [140298] = notes[836],
    [140300] = notes[836],
    [140301] = notes[960],
    [140560] = notes[962],
    [140591] = notes[963],
    [140594] = notes[963],
    [140604] = notes[964],
    [140689] = notes[836],
    [140690] = notes[836],
    [140691] = notes[836],
    [140692] = notes[885],
    [140699] = notes[965],
    [140735] = notes[966],
    [140738] = notes[966],
    [140756] = notes[967],
    [141051] = notes[968],
    [141118] = notes[969],
    [141239] = notes[970],
    [141643] = notes[971],
    [141935] = notes[972],
    [141977] = notes[973],
    [141981] = notes[974],
    [141988] = notes[975],
    [142016] = notes[976],
    [142198] = notes[977],
    [142312] = notes[978],
    [142333] = notes[979],
    [142337] = notes[980],
    [142338] = notes[980],
    [142339] = notes[980],
    [142340] = notes[979],
    [142341] = notes[980],
    [142342] = notes[980],
    [142347] = notes[981],
    [142361] = notes[982],
    [142403] = notes[983],
    [142435] = notes[984],
    [142437] = notes[985],
    [142438] = notes[986],
    [142440] = notes[987],
    [142464] = notes[988],
    [142610] = notes[989],
    [142713] = notes[966],
    [142717] = notes[990],
    [142935] = notes[991],
    [143416] = notes[992],
    [143510] = notes[993],
    [143700] = notes[994],
    [143718] = notes[995],
    [143740] = notes[996],
    [143741] = notes[997],
    [144246] = notes[998],
    [144477] = notes[999],
    [144638] = notes[1000],
    [144731] = notes[1001],
    [144825] = notes[1002],
    [144826] = notes[1003],
    [144827] = notes[1004],
    [144829] = notes[1005],
    [144830] = notes[1003],
    [144831] = notes[1006],
    [144833] = notes[1007],
    [144837] = notes[1008],
    [144839] = notes[1009],
    [144842] = notes[1010],
    [144993] = notes[1011],
    [145110] = notes[1012],
    [145337] = notes[1013],
    [145343] = notes[1014],
    [145444] = notes[1012],
    [145457] = notes[1012],
    [145736] = notes[1015],
    [145740] = notes[1016],
    [146321] = notes[1017],
    [146564] = notes[1018],
    [147453] = notes[1019],
    [148117] = notes[1020],
    [148787] = notes[1021],
    [149644] = notes[1022],
    [149654] = notes[1023],
    [149663] = notes[1024],
    [149680] = notes[1025],
    [149839] = notes[1026],
    [150154] = notes[1027],
    [150254] = notes[1028],
    [150293] = notes[1029],
    [150373] = notes[1030],
    [150376] = notes[1031],
    [150467] = notes[1032],
    [151096] = notes[1033],
    [151133] = notes[1034],
    [151144] = notes[1035],
    [151145] = notes[1036],
    [151147] = notes[1037],
    [151148] = notes[1038],
    [151149] = notes[1039],
    [151159] = notes[1040],
    [151353] = notes[1041],
    [151634] = notes[1042],
    [151672] = notes[1043],
    [151709] = notes[1044],
    [151773] = notes[1045],
    [151809] = notes[1046],
    [151811] = notes[1047],
    [151859] = notes[1048],
    [151883] = notes[1049],
    [151933] = notes[1050],
    [151945] = notes[1051],
    [151948] = notes[1052],
    [152136] = notes[1053],
    [152148] = notes[866],
    [152288] = notes[1054],
    [152290] = notes[1055],
    [152291] = notes[1056],
    [152296] = notes[1057],
    [152319] = notes[1058],
    [152359] = notes[1059],
    [152360] = notes[1060],
    [152361] = notes[1061],
    [152448] = notes[1062],
    [152462] = notes[1063],
    [152463] = notes[1064],
    [152465] = notes[1065],
    [152551] = notes[1014],
    [152552] = notes[1066],
    [152553] = notes[1067],
    [152556] = notes[1068],
    [152642] = notes[1069],
    [152657] = notes[1070],
    [152708] = notes[1041],
    [152768] = notes[1071],
    [152795] = notes[1072],
    [152992] = notes[1073],
    [153096] = notes[1074],
    [153208] = notes[1075],
    [153238] = notes[1076],
    [153266] = notes[1077],
    [153268] = notes[1078],
    [153278] = notes[1078],
    [153465] = notes[1079],
    [153473] = notes[1080],
    [153694] = notes[1081],
    [153764] = notes[1082],
    [153812] = notes[1083],
    [153959] = notes[1084],
    [153971] = notes[1085],
    [153980] = notes[1086],
    [153992] = notes[1087],
    [154030] = notes[1041],
    [154092] = notes[1014],
    [154181] = notes[1088],
    [154219] = notes[1089],
    [154353] = notes[1090],
    [154354] = notes[1091],
    [154367] = notes[1092],
    [154576] = notes[1093],
    [154604] = notes[1094],
    [154761] = notes[1095],
    [154935] = notes[1096],
    [154936] = notes[1096],
    [155238] = notes[1097],
    [155483] = notes[1098],
    [155583] = notes[1099],
    [155703] = notes[1100],
    [155770] = notes[1101],
    [155779] = notes[1102],
    [156046] = notes[1103],
    [156077] = notes[1104],
    [156083] = notes[1105],
    [156242] = notes[1106],
    [156284] = notes[1107],
    [156389] = notes[1108],
    [156756] = notes[1109],
    [156759] = notes[1110],
    [156760] = notes[1111],
    [156778] = notes[1112],
    [156780] = notes[1110],
    [156788] = notes[1110],
    [156931] = notes[1110],
    [157083] = notes[1113],
    [157121] = notes[1052],
    [157143] = notes[1114],
    [157162] = notes[1115],
    [157279] = notes[1116],
    [157290] = notes[1117],
    [157301] = notes[1118],
    [157341] = notes[1119],
    [157466] = notes[1120],
    [157565] = notes[1121],
    [157567] = notes[1121],
    [157589] = notes[1122],
    [157662] = notes[1123],
    [157665] = notes[1123],
    [158254] = notes[1124],
    [158256] = notes[1125],
    [158409] = notes[1126],
    [158465] = notes[1127],
    [158530] = notes[1128],
    [158702] = notes[1129],
    [158771] = notes[1130],
    [158976] = notes[1131],
    [158978] = notes[1132],
    [159177] = notes[1133],
    [159178] = notes[1131],
    [159265] = notes[1131],
    [159323] = notes[1134],
    [159441] = notes[1131],
    [159460] = notes[1131],
    [159610] = notes[1135],
    [159756] = notes[1136],
    [159886] = notes[1137],
    [159895] = notes[1138],
    [160089] = notes[1139],
    [160110] = notes[1139],
    [160341] = notes[1140],
    [160401] = notes[1141],
    [160402] = notes[1141],
    [160872] = notes[1142],
    [160970] = notes[1143],
    [161130] = notes[1144],
    [161131] = notes[1145],
    [161133] = notes[1146],
    [161256] = notes[1147],
    [161280] = notes[1148],
    [161527] = notes[1149],
    [161528] = notes[1150],
    [161529] = notes[1151],
    [161530] = notes[1152],
    [161541] = notes[1153],
    [161672] = notes[1154],
    [162140] = notes[1155],
    [162142] = notes[1156],
    [162147] = notes[1157],
    [162150] = notes[1158],
    [162173] = notes[1159],
    [162237] = notes[1160],
    [162300] = notes[1160],
    [162334] = notes[1161],
    [162335] = notes[1162],
    [162336] = notes[1163],
    [162360] = notes[1164],
    [162361] = notes[1165],
    [162364] = notes[1166],
    [162373] = notes[1161],
    [162374] = notes[1167],
    [162375] = notes[1168],
    [162378] = notes[1169],
    [162380] = notes[1170],
    [162381] = notes[1169],
    [162382] = notes[1171],
    [162399] = notes[1172],
    [162428] = notes[1173],
    [162588] = notes[1174],
    [162681] = notes[1175],
    [163025] = notes[1176],
    [163042] = notes[1177],
    [163045] = notes[1178],
    [163091] = notes[1179],
    [163154] = notes[1180],
    [163185] = notes[1181],
    [163259] = notes[1182],
    [163268] = notes[1183],
    [163503] = notes[1184],
    [163506] = notes[1184],
    [163616] = notes[1185],
    [164110] = notes[1186],
    [164197] = notes[1187],
    [164198] = notes[1188],
    [164208] = notes[1189],
    [164391] = notes[1190],
    [164424] = notes[1191],
    [164479] = notes[1192],
    [164563] = notes[1193],
    [164587] = notes[1194],
    [164847] = notes[1195],
    [164873] = notes[1196],
    [165312] = notes[1197],
    [165336] = notes[1198],
    [165349] = notes[1199],
    [165404] = notes[1200],
    [165460] = notes[1201],
    [165634] = notes[1202],
    [165905] = notes[1196],
    [165942] = notes[1203],
    [165957] = notes[1204],
    [165960] = notes[1205],
    [165978] = notes[1206],
    [166027] = notes[1207],
    [166177] = notes[1208],
    [166453] = notes[1208],
    [166559] = notes[1209],
    [166592] = notes[1210],
    [166676] = notes[1211],
    [166679] = notes[1212],
    [166735] = notes[1213],
    [167129] = notes[1214],
    [167139] = notes[1215],
    [167337] = notes[1216],
    [167342] = notes[1217],
    [167343] = notes[1218],
    [167344] = notes[1219],
    [167345] = notes[1220],
    [167346] = notes[1221],
    [167347] = notes[1222],
    [167348] = notes[1223],
    [167349] = notes[1224],
    [167350] = notes[1225],
    [167351] = notes[1226],
    [167352] = notes[1227],
    [167375] = notes[1228],
    [167433] = notes[1229],
    [167485] = notes[1041],
    [167508] = notes[1230],
    [167719] = notes[1231],
    [167721] = notes[1232],
    [167848] = notes[1233],
    [167851] = notes[1234],
    [167964] = notes[1196],
    [168008] = notes[1235],
    [168135] = notes[1236],
    [168153] = notes[1237],
    [168192] = notes[1238],
    [168258] = notes[1239],
    [168306] = notes[1240],
    [168310] = notes[1241],
    [168361] = notes[1242],
    [168402] = notes[1243],
    [168424] = notes[1244],
    [168453] = notes[1245],
    [168579] = notes[1246],
    [168591] = notes[1247],
    [168850] = notes[1248],
    [168986] = notes[1196],
    [169160] = notes[1249],
    [169263] = notes[1250],
    [169276] = notes[1251],
    [169732] = notes[1252],
    [169823] = notes[1253],
    [169840] = notes[1254],
    [169841] = notes[1254],
    [169972] = notes[1255],
    [169974] = notes[1255],
    [169975] = notes[1255],
    [169976] = notes[1255],
    [169977] = notes[1255],
    [170007] = notes[1256],
    [170184] = notes[1257],
    [170288] = notes[1208],
    [170331] = notes[1258],
    [170332] = notes[1258],
    [170659] = notes[1259],
    [170699] = notes[1260],
    [170723] = notes[1261],
    [170767] = notes[1262],
    [170781] = notes[1263],
    [170785] = notes[1263],
    [170847] = notes[1264],
    [170923] = notes[1265],
    [170932] = notes[1266],
    [170933] = notes[1267],
    [170969] = notes[1268],
    [171017] = notes[1269],
    [171181] = notes[1196],
    [171341] = notes[1196],
    [171342] = notes[1196],
    [171455] = notes[1247],
    [171583] = notes[1207],
    [171827] = notes[1270],
    [172045] = notes[1271],
    [172053] = notes[1272],
    [172390] = notes[1273],
    [172628] = notes[1274],
    [172703] = notes[1275],
    [172704] = notes[1275],
    [173045] = notes[1276],
    [173046] = notes[1276],
    [173114] = notes[1253],
    [173393] = notes[1277],
    [173409] = notes[1278],
    [173635] = notes[1279],
    [173834] = notes[1280],
    [173855] = notes[1281],
    [173940] = notes[1282],
    [174552] = notes[1283],
    [175265] = notes[1284],
    [175478] = notes[1285],
    [175811] = notes[1286],
    [175818] = notes[1287],
    [175819] = notes[1287],
    [175820] = notes[1287],
    [175860] = notes[1288],
    [176338] = notes[1289],
    [177302] = notes[1290],
    [177334] = notes[1291],
    [177335] = notes[1292],
    [177336] = notes[1293],
    [177422] = notes[1294],
    [177441] = notes[1294],
    [177442] = notes[1294],
    [177443] = notes[1294],
    [177444] = notes[1294],
    [177445] = notes[1294],
    [178050] = notes[1295],
    [178148] = notes[1296],
    [178149] = notes[1296],
    [178283] = notes[1297],
    [178507] = notes[1298],
    [178626] = notes[1299],
    [178630] = notes[1299],
    [178743] = notes[1300],
    [178937] = notes[1301],
    [178963] = notes[1302],
    [179043] = notes[1303],
    [179939] = notes[1304],
    [180524] = notes[1292],
    [180678] = notes[1305],
    [180705] = notes[1306],
    [180924] = notes[1307],
    [181211] = notes[1308],
    [181212] = notes[1309],
    [181213] = notes[1310],
    [181359] = notes[1311],
    [181383] = notes[1311],
    [181484] = notes[1311],
    [181861] = notes[1312],
    [182363] = notes[1313],
    [183265] = notes[1314],
    [183291] = notes[1315],
    [183340] = notes[1316],
    [183610] = notes[1317],
    [183764] = notes[1318],
    [183925] = notes[1319],
    [183984] = notes[1320],
    [184023] = notes[1321],
    [184403] = notes[1322],
    [184804] = notes[1323],
    [185266] = notes[1324],
    [185451] = notes[1325],
    [185487] = notes[1326],
    [185505] = notes[1327],
    [185944] = notes[1328],
    [186399] = notes[1329],
    [186622] = notes[1330],
    [186684] = notes[1331],
    [187111] = notes[1332],
    [187336] = notes[1333],
    [187337] = notes[1333],
    [187415] = notes[1334],
    [188128] = notes[1335],
    [189744] = notes[1336],
    [190708] = notes[1337],
    [190730] = notes[1338],
    [191496] = notes[1339],
    [191509] = notes[1306],
    [191541] = notes[1340],
    [191545] = notes[1341],
    [191551] = notes[1342],
    [191621] = notes[1343],
    [191628] = notes[1344],
    [191637] = notes[1345],
    [191639] = notes[1346],
    [191645] = notes[1347],
    [191647] = notes[1348],
    [191665] = notes[1349],
    [191672] = notes[1306],
    [191678] = notes[1350],
    [191790] = notes[1351],
    [191903] = notes[1306],
    [192351] = notes[1316],
    [192430] = notes[1352],
    [192486] = notes[1316],
    [192487] = notes[1316],
    [192739] = notes[1353],
    [192949] = notes[1354],
    [192950] = notes[1354],
    [192951] = notes[1354],
    [192952] = notes[1354],
    [193063] = notes[1355],
    [193139] = notes[1356],
    [193177] = notes[1357],
    [193201] = notes[1358],
    [193217] = notes[1359],
    [193236] = notes[1360],
    [193254] = notes[1361],
    [193266] = notes[1362],
    [193427] = notes[1363],
    [193428] = notes[1364],
    [193429] = notes[1363],
    [193521] = notes[1365],
    [193596] = notes[1366],
    [193723] = notes[1367],
    [193725] = notes[1368],
    [193854] = notes[1369],
    [193859] = notes[1370],
    [193861] = notes[1371],
    [193873] = notes[1372],
    [193891] = notes[1373],
    [193892] = notes[1374],
    [193925] = notes[1306],
    [193986] = notes[1375],
    [194020] = notes[1376],
    [194021] = notes[1377],
    [194085] = notes[1378],
    [194102] = notes[1379],
    [194103] = notes[1380],
    [194242] = notes[1381],
    [194489] = notes[1382],
    [194568] = notes[1383],
    [194750] = notes[1384],
    [195409] = notes[1385],
    [195448] = notes[1330],
    [195635] = notes[1333],
    [195708] = notes[1355],
    [195709] = notes[1386],
    [196398] = notes[1387],
    [196523] = notes[1388],
    [196674] = notes[1389],
    [197914] = notes[1390],
    [198313] = notes[1391],
    [198314] = notes[1392],
    [198428] = notes[1393],
    [199194] = notes[1394],
    [199195] = notes[1394],
    [199248] = notes[1395],
    [199533] = notes[1396],
    [199544] = notes[1397],
    [200450] = notes[1398],
    [201579] = notes[1399],
    [202317] = notes[1400],
    [202339] = notes[1401],
    [202341] = notes[1401],
    [202506] = notes[1402],
    [202510] = notes[1403],
    [203342] = notes[1404],
    [203343] = notes[1404],
    [203348] = notes[1405],
    [203625] = notes[1406],
    [203734] = notes[1407],
    [204311] = notes[1408],
    [204316] = notes[1408],
    [204435] = notes[1409],
    [204611] = notes[1410],
    [204825] = notes[1411],
    [204828] = notes[1412],
    [204837] = notes[1413],
    [204839] = notes[1414],
    [205001] = notes[1415],
    [205300] = notes[1416],
    [205763] = notes[1417],
    [206073] = notes[1418],
    [206094] = notes[1419],
    [206180] = notes[1420],
    [207072] = notes[1421],
    [207300] = notes[1422],
    [207625] = notes[1423],
    [207626] = notes[1424],
    [207789] = notes[1425],
    [209909] = notes[1426],
    [209929] = notes[1427],
    [209936] = notes[1428],
    [210045] = notes[1429],
    [210051] = notes[1430],
    [210070] = notes[1431],
    [210075] = notes[1432],
    [210106] = notes[1426],
    [210395] = notes[1433],
    [210397] = notes[1433],
    [210478] = notes[1434],
    [210508] = notes[1435],
    [210795] = notes[1436],
    [210848] = notes[1429],
    [210868] = notes[1437],
    [210882] = notes[1438],
    [210908] = notes[1439],
    [210953] = notes[1440],
    [210981] = notes[1441],
    [210982] = notes[1441],
    [210983] = notes[1441],
    [210984] = notes[1442],
    [210985] = notes[1442],
    [210986] = notes[1442],
    [210988] = notes[1443],
    [210989] = notes[1443],
    [210990] = notes[1443],
    [211176] = notes[1444],
    [211651] = notes[1445],
    [211755] = notes[1445],
    [211990] = notes[1446],
    [212040] = notes[1447],
    [212041] = notes[1447],
    [212043] = notes[1448],
    [212061] = notes[1447],
    [212062] = notes[1447],
    [212065] = notes[1449],
    [212066] = notes[1449],
    [212069] = notes[1449],
    [212070] = notes[1450],
    [212090] = notes[1447],
    [212133] = notes[1451],
    [212292] = notes[1452],
    [212425] = notes[1453],
    [212704] = notes[1454],
    [212710] = notes[1455],
    [213428] = notes[1456],
    [213539] = notes[1457],
    [213542] = notes[1457],
    [213545] = notes[1458],
    [213608] = notes[1459],
    [213647] = notes[1460],
    [213668] = notes[1461],
    [213922] = notes[1462],
    [214397] = notes[1463],
    [214757] = notes[1464],
    [215411] = notes[1465],
    [215608] = notes[1466],
    [215733] = notes[1467],
    [215772] = notes[1468],
    [215990] = notes[1469],
    [215991] = notes[1470],
    [216037] = notes[1471],
    [216039] = notes[1472],
    [216044] = notes[1473],
    [216078] = notes[1474],
    [216197] = notes[1475],
    [216249] = notes[1476],
    [216288] = notes[1476],
    [216340] = notes[1477],
    [216387] = notes[1478],
    [216555] = notes[1479],
    [217121] = notes[1480],
    [217379] = notes[1481],
    [217417] = notes[1482],
    [217939] = notes[1483],
    [217949] = notes[1483],
    [218066] = notes[1484],
    [219246] = notes[1485],
    [219265] = notes[1486],
    [219365] = notes[1487],
    [219397] = notes[1488],
    [219425] = notes[1485],
    [219653] = notes[1489],
    [219654] = notes[1490],
    [219662] = notes[1489],
    [219664] = notes[1489],
    [219790] = notes[1491],
    [219949] = notes[1492],
    [220059] = notes[1493],
    [220300] = notes[1494],
    [220399] = notes[1495],
    [220483] = notes[1496],
    [220707] = notes[1497],
    [221065] = notes[1480],
    [221126] = notes[1498],
    [221131] = notes[1499],
    [221474] = notes[1500],
    [221528] = notes[1501],
    [221648] = notes[1502],
    [221704] = notes[1503],
    [222019] = notes[1504],
    [222040] = notes[1505],
    [222155] = notes[1506],
    [222248] = notes[1507],
    [222690] = notes[1508],
    [222936] = notes[1509],
    [223042] = notes[1510],
    [223056] = notes[1511],
    [223058] = notes[1511],
    [223060] = notes[1512],
    [223067] = notes[1512],
    [223091] = notes[1513],
    [223117] = notes[1514],
    [223613] = notes[1515],
    [223782] = notes[1516],
    [223783] = notes[1516],
    [223905] = notes[1514],
    [224099] = notes[1517],
    [224101] = notes[1518],
    [224133] = notes[1519],
    [224409] = notes[1520],
    [224410] = notes[1517],
    [224464] = notes[1521],
    [224521] = notes[1522],
    [224551] = notes[1523],
    [224663] = notes[1524],
    [224725] = notes[1525],
    [224751] = notes[1526],
    [224958] = notes[1527],
    [225244] = notes[1528],
    [225271] = notes[1529],
    [225391] = notes[1530],
    [225393] = notes[1531],
    [225488] = notes[1532],
    [225815] = notes[1533],
    [225865] = notes[1534],
    [225912] = notes[1517],
    [225913] = notes[1535],
    [226005] = notes[1536],
    [226028] = notes[1537],
    [226101] = notes[1538],
    [226128] = notes[1517],
    [226176] = notes[1539],
    [226381] = notes[1540],
    [226417] = notes[1540],
    [226562] = notes[1541],
    [226625] = notes[1542],
    [227026] = notes[1543],
    [227198] = notes[1544],
    [227367] = notes[1545],
    [227373] = notes[1546],
    [227569] = notes[1547],
    [227572] = notes[1548],
    [227627] = notes[1549],
    [227799] = notes[1550],
    [227808] = notes[1551],
    [228427] = notes[1552],
    [228465] = notes[1553],
    [229060] = notes[1554],
    [229532] = notes[1555],
    [229617] = notes[1556],
    [229620] = notes[1556],
    [229638] = notes[1557],
    [229688] = notes[1558],
    [229812] = notes[1476],
    [229813] = notes[1476],
    [229814] = notes[1476],
    [229816] = notes[1476],
    [229817] = notes[1476],
    [229820] = notes[1476],
    [229821] = notes[1476],
    [229856] = notes[1559],
    [230141] = notes[1560],
    [230830] = notes[1561],
    [230971] = notes[1562],
    [231053] = notes[1563],
    [231115] = notes[1564],
    [231146] = notes[1565],
    [231153] = notes[1566],
    [231194] = notes[1567],
    [231195] = notes[1567],
    [231217] = notes[1568],
    [231257] = notes[1569],
    [231258] = notes[1569],
    [231259] = notes[1570],
    [231315] = notes[1571],
    [231324] = notes[1572],
    [231340] = notes[1573],
    [231380] = notes[1574],
    [231808] = notes[1575],
    [231809] = notes[1575],
    [231986] = notes[1576],
    [232098] = notes[1577],
    [232106] = notes[1578],
    [232111] = notes[1579],
    [232193] = notes[1580],
    [232195] = notes[1581],
    [233213] = notes[1582],
    [233612] = notes[1583],
    [233938] = notes[1584],
    [234197] = notes[1585],
    [235095] = notes[1586],
    [235230] = notes[1587],
    [236539] = notes[1588],
    [237282] = notes[1589],
    [237750] = notes[1590],
    [237753] = notes[1591],
    [238478] = notes[1592],
    [238547] = notes[1593],
    [238625] = notes[1594],
    [239207] = notes[1595],
    [239210] = notes[1596],
    [239229] = notes[1597],
    [239325] = notes[1598],
    [239832] = notes[1599],
    [240511] = notes[1600],
    [240544] = notes[1600],
    [241360] = notes[1601],
    [241363] = notes[1601],
    [242034] = notes[1602],
    [242773] = notes[1603],
    [242998] = notes[1604],
    [243658] = notes[1605],
    [243778] = notes[1606],
    [243780] = notes[1607],
    [244029] = notes[1608],
    [244048] = notes[1609],
    [244060] = notes[1610],
    [245997] = notes[1611],
    [246074] = notes[1602],
    [246162] = notes[1607],
    [246633] = notes[1612],
    [247090] = notes[1613],
    [247559] = notes[1614],
    [248016] = notes[1615],
    [248070] = notes[1616],
    [248577] = notes[1617],
    [249358] = notes[1618],
    [249359] = notes[1618],
    [249392] = notes[1619],
    [249797] = notes[1620],
    [249798] = notes[1621],
    [249799] = notes[1620],
    [249806] = notes[1622],
    [249849] = notes[1623],
    [250030] = notes[1624],
    [250321] = notes[1625],
    [250341] = notes[1626],
    [250366] = notes[1627],
    [250822] = notes[1628],
    [250824] = notes[1628],
    [251593] = notes[1629],
    [251756] = notes[1630],
    [251758] = notes[1630],
    [252466] = notes[1631],
    [252693] = notes[1632],
    [252773] = notes[1633],
    [252994] = notes[1634],
    [252997] = notes[1634],
    [252998] = notes[1634],
    [253305] = notes[1635],
    [253316] = notes[1636],
    [253499] = notes[1637],
    [254203] = notes[1607],
    [254709] = notes[1638],
    [254720] = notes[1638],
    [254795] = notes[1639],
    [254815] = notes[1618],
    [254972] = notes[1640],
    [255079] = notes[1641],
    [255194] = notes[1642],
    [255709] = notes[1643],
    [255847] = notes[1634],
    [255886] = notes[1644],
    [255957] = notes[1645],
    [256095] = notes[1646],
    [256230] = notes[1647],
    [256344] = notes[1607],
    [256345] = notes[1648],
    [256349] = notes[1607],
    [256353] = notes[1607],
    [256354] = notes[1607],
    [256357] = notes[1649],
    [256361] = notes[1607],
    [256844] = notes[1650],
    [256847] = notes[1651],
    [256853] = notes[1647],
    [256858] = notes[1652],
    [256898] = notes[1653],
    [257127] = notes[1654],
    [257265] = notes[1655],
    [257491] = notes[1656],
    [257830] = notes[1657],
    [258215] = notes[1658],
    [258216] = notes[1659],
    [258269] = notes[1660],
    [259106] = notes[1661],
    [259914] = notes[1645],
    [259955] = notes[1662],
    [259960] = notes[1662],
    [260031] = notes[1663],
    [260954] = notes[1638],
    [261337] = notes[1664],
    [262321] = notes[1657],
    [263617] = notes[1665],
}

function PSM.NPCNotes.Get(npcID)
    local seed = PSM.NPCNotes[npcID]
    local user = PSM_UserNotes and PSM_UserNotes[npcID]
    if seed and user and user ~= "" then
        return seed .. "\n\n" .. user
    end
    return seed or (user ~= "" and user) or nil
end
function PSM.NPCNotes.GetUserNote(npcID)
    return (PSM_UserNotes and PSM_UserNotes[npcID]) or ""
end
function PSM.NPCNotes.SetUserNote(npcID, text)
    PSM_UserNotes = PSM_UserNotes or {}
    if not text or text == "" then
        PSM_UserNotes[npcID] = nil
    else
        PSM_UserNotes[npcID] = text
    end
end
