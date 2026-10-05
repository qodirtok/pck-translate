import json

rows = [
(1, "  Can be exchanged for unbound upgrade materials at Craftsman Apprentice Zhao Jing.\\r(Used at the craftsman to upgrade Green Fine weapons of Fifth Rank or above into Blue Rare weapons)"),
(2, "  Can be exchanged for unbound upgrade materials at Craftsman Apprentice Zhao Jing.\\r(Used at the craftsman to upgrade Blue Rare weapons of Fifth Rank or above into Purple Epic weapons)"),
(3, "An herb said in legend to cure lovesickness, extremely precious."),
(4, "Voucher for 1st place on the March 2010 spending points ranking,\\rcan be exchanged for the Wooden Ox and Gliding Horse.\\r^fff600Can only be exchanged before May 1, 2010; invalid after that!"),
(5, "Voucher for 2nd to 10th place on the March 2010 spending points ranking,\\rcan be exchanged for a 30-day Wooden Ox and Gliding Horse.\\r^fff600Can only be exchanged before May 1, 2010; invalid after that!"),
(6, "Voucher for 1st place on the May 2010 spending points ranking,\\rcan be exchanged at the Perfect Gift Messenger for a Strategist Card.\\r^fff600Can only be exchanged before July 1, 2010; invalid after that!"),
(7, "Voucher for 2nd to 10th place on the May 2010 spending points ranking,\\rcan be exchanged at the Perfect Gift Messenger for a 30-day Strategist Card.\\r^fff600Can only be exchanged before July 1, 2010; invalid after that!"),
(8, "January 23, 2011 19:00-24:00\\rClaim 6 Small Hammers from Tian'er with the Celebration Gift Bag.\\rAt that time, many treasure chests, jars, colored eggs, urns, etc. will appear in the very center of Chang'an Weiyang Palace.\\rSmash them as you like; whatever treasures are inside are yours! ^fff600\\rIncludes a 30-yuan Perfect One-Card lottery voucher,\\rGold Set,\\rBattle God Weapon,\\rChaos Divine Stone,\\rReputation in all regions,\\rStar Dust, etc. ^ffffff\\rDon't miss the grand prize! ^ffffff\\rIf you didn't join the celebration, don't throw the Celebration Gift Bag away;\\rafter the event ends you can return it to Tian'er, ^7fffffand exchange it for massive rewards!"),
(9, "A GM event Lucky Gift Pack; Right-click to send a Lucky Gift Pack to a designated player."),
(10, "A New Three Kingdoms Hero Gift Pack gifted by a GM.\\r^7fffffOpen to receive generous rewards!\\rCan be opened once per day."),
(11, "\\r^7fffffCan be used to upgrade the Yellow Heaven Helmet and the Great Peace Helmet."),
(12, "\\r^7fffffHold this token to claim the once-daily Sage Muster quest from the New Three Kingdoms · Recruitment Emissary,\\rgaining a large amount of Experience rewards."),
(13, "\\r^ff0000No longer valid; can be deleted from your inventory"),
(14, "\\r^fff600You can almost hear the sound of the sea. ^7fffff\\rDeliver this item to the Dong Mansion beauty outside the Dong Mansion."),
(15, "\\r^fff600Kept in your inventory, rewards are granted automatically.\\r^7fffffPlease ensure you have enough free slots in your inventory to claim the rewards."),
(16, "\\r^fff600Neither ice nor jade; it calms the mind and guards the home. ^7fffff\\rDeliver this item to the Fusang Snow Maiden outside the Dong Mansion."),
(17, "\\rCan activate the Famous General Set."),
(18, "\\rCan activate the Famous General Set.\\rThis Battle Soul cannot be traded between players."),
(19, "^0184ffA marvelous flower whose fragrance is dreamlike; in a trance you can recall the mists of the past...\\r^7fffffCan be exchanged for items at NPC Fan Chen in Chang'an Weiyang Palace."),
(20, "^0184ffUse Level: 35\\r^7fffffUse: Right-click to open the Gift Pack\\r^7fffffContains a 31-day Training Command Banner·Cloud Fall\\r^7fffff31-day Hundred Battles Gold Medal\\rCan keep training in the Training Camp for 31 days.\\r^ffffffTraining Camp rewards: ^7fffff\\rThe first 6 hours of training each day grant Experience (or Insight)\\rafter 6 hours you gain Task Energy.\\rPlayers of Level 61 or above can spend 200 Energy\\rto exchange for 1 Energy Reward Writ at Training Camp Colonel Xu Zhao in Weiyang Palace,\\rwhich can be used to complete Renown quests on the fortress map; exchangeable 5 times per day.\\r^ffffffTip: ^7fffff\\rTraining bare-handed does not affect training efficiency."),
(21, "^0184ffUse Level: Hero Lv.1\\r^7fffffUse: Right-click to open the Gift Pack.\\r^fff600Contains 1 Hero-level Skill Book!\\r^7fffffPlease free up at least 1 slot in your inventory to claim the Gift Pack items."),
(22, "^0184ffUse Level: Hero Lv.1\\r^fff600Randomly receive one of: Star Dust, Star Jade, Star Immortal Blossom, Exclusive Secret Text, Chaos Divine Stone"),
(23, "^0184ffContains 1 2-week Curly-Haired Red Hare\\r^fff600Can only be used once; do not repurchase\\r^ffffffRight-click to use and receive\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(24, "^0184ffContains ^fff600Jiang Xiaohu^0184ff emotes for one week\\r^ffffffRight-click to open and receive; can only be used once per week\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(25, "^0184ffContains 600 Merit points\\r^ffffffRight-click to open and receive; can only be used once per day\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(26, "^0184ffContains 300 Renown\\r^ffffffRight-click to open and receive; Use Level 60; can only be used once per day\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(27, "^0184ffContains 300 Civil Merit and 300 Merit\\r^ffffffRight-click to open and receive; can only be used once per day\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(28, "^0184ffContains 300 Military Merit and 300 Merit\\r^ffffffRight-click to open and receive; can only be used once per day\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(29, "^0184ffContains 1 Secret Text Grand (Exclusive)\\r^fff600Can only be used once; do not repurchase\\r^ffffffRight-click to open and receive\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(30, "^0184ffContains 1 advanced Secret Text (Lingbi Shadow-Slaying Grand)\\r^ffffffRight-click to open and receive\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(31, "^0184ffExclusive item for declaring war on legion bases\\r^fff600Legion leaders can use this item to declare war on other legion bases at the ^0184ffLegion Administrator^fff600 on Chang'an Cloud Terrace\\rDeclaration time is 19:00-22:00 every night\\rCan declare war only once per day, at most three times per week\\rIf a declaration succeeds, no further declarations can be made that week"),
(32, "^0184ffFor legion leaders only\\r^72fe00Can be handed over to the attacking general of an enemy base to obtain siege engine reinforcements for your legion"),
(33, "^0184ffFor legion leaders only\\r^72fe00Can be handed over to the attacking general of an enemy base to obtain attacker soldier reinforcements for your legion"),
(34, "^0184ffProof of a legion leader\\r^72fe00Can open the War Declaration Chest to obtain a War Declaration Order"),
(35, "^0184ffRegion-bound; disappears when you leave the current base\\r^72fe00Use to build an arrow tower on the spot, to defend the legion"),
(36, "^0184ffRegion-bound; disappears when you leave the current base\\r^72fe00Use to summon a siege engine on the spot to help the legion take fortified cities\\r^72fe00Siege engines are only effective against buildings and deal extremely high damage; summon with caution"),
(37, "^0184ffRegion-bound; disappears when you leave the current base\\r^72fe00Can summon legion soldiers to fight alongside you"),
(38, "^0184ffRegion-bound; disappears when you leave the battlefield\\r^fff600A mysterious scroll that can summon a mysterious figure to help in battle"),
(39, "^0184ffReward from Left Lieutenant General Huangfu Song\\rFor his outstanding merit in quelling the Yellow Turban Rebellion, Huangfu Song bestowed this heavy reward in the name of the Han Emperor.\\rThe gift box contains 1 rare treasure."),
(40, "^0184ffA magnificent horse of the heavens' shore; a wondrous dragon among men.\\rThe gift box contains 1 rare mount."),
(41, "^0184ffOpens to grant a certain amount of Experience\\r^ffffffRight-click to open and receive; can only be used once per day\\r^ff0000Year of the Tiger Points can be obtained automatically between 2010.2.8 and 2010.3.28\\rbystaying online after the daily roll call\\ror by claiming the \"Year of the Tiger Joy\" quest from Tiger Xiaohu (146,331) every night between 19:30-20:30\\rFor details, click Spring Festival Event Emissary Tiger Xiaohu (146,331)."),
(42, "^0184ffKey of Time; opens a new heaven.\\rA spoil obtained in the scenario \"Rivers and Mountains of the Exile\".\\rMid-tier material for crafting Skill Stones.\\rFrom the Romance scenario: Rivers and Mountains of the Exile"),
(43, "^0184ffGrit of Time; the love-sky of days past.\\rA spoil obtained in the scenario \"Rivers and Mountains of the Exile\".\\rMid-tier material for crafting Skill Stones.\\rFrom the Romance scenario: Rivers and Mountains of the Exile"),
(44, "^0184ffWings of Time; blotting out sun and sky.\\rA spoil obtained in the scenario \"Rivers and Mountains of the Exile\".\\rMid-tier material for crafting Skill Stones.\\rFrom the Romance scenario: Rivers and Mountains of the Exile"),
(45, "^0184ffParticipation item for the Spring Festival Lantern Riddle event\\r^fff600Use this to find Riddle Lanterns in Chang'an City to obtain riddles\\rA Riddle Lantern can only yield one riddle per day; do not pick repeatedly."),
(46, "^0184ffDisappears when you leave the battlefield\\r^fff600A divine shovel used to dig up Blessing Chests"),
(47, "^0184ffGrants title: ^8d76ffNew Hero Who Towers Over the Three Armies^7fffff\\rRight-click to open"),
(48, "^0184ffGrants title: ^ff6fb3Chibi · New Vision^7fffff\\rRight-click to open"),
(49, "^0184ffSelect a player, then Right-click to use\\r^fff600Distributes New Year greeting gifts to a designated player\\rThe first Red Envelope reward a player receives each day is the highest\\rValid until 2010.3.7; please use within the validity period"),
(50, "^111111Not yet available"),
(51, "^111111Not yet available."),
(52, "^72fe00From February 17, 2011 to March 2, 2011, 20:00-22:00: ^fff600\\rPlayers with Fifteen Petals in their inventory can claim massive rewards every 10 minutes while online!\\rThere is also a chance to obtain Star Dust and Chaos Divine Stone!"),
(53, "^72fe00From February 2, 2011 to February 9, 2011, 20:00-24:00: ^fff600\\rPlayers with Spring Welcome Petals in their inventory can claim generous rewards every 5 minutes while online! ^ffffff\\rInvalid after expiry; don't miss out!"),
(54, "^72fe00Title Prerequisite: How Deep Is My Devotion\\rSkill learned: Hearts Linked Lv.2^ffffff\\rMax HP +50\\rAttack Power +8^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(55, "^72fe00Title Prerequisite: Growing Old Together\\rSkill learned: Hearts Linked Lv.4^ffffff\\rMax HP +4%\\rAttack Power +10\\rAttack Strength +2%\\rHP +60^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(56, "^72fe00Title Prerequisite: If Only Life Were As When We First Met^ffffff\\rMax HP +60\\rAttack Power +10^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(57, "^72fe00Title Prerequisite: Who Can Match the Fierce General Ahead^ffffff\\rHP +400\\rAttack Power +5^7fffff\\r\\rActivation cost:\\rGreat Han Military Token x200\\rGreat Han Central Army Order x50"),
(58, "^72fe00Title Prerequisite: The Eighteen Lords Gather at the Eastern Capital^ffffff\\rHP +200\\rAttack Power +2^7fffff\\r\\rActivation cost:\\rGreat Han Military Token x100"),
(59, "^72fe00Title Prerequisite: Single-Handed Battle Against Marquis Wen^ffffff\\rHP +800\\rAttack Power +10^7fffff\\r\\rActivation cost:\\rGreat Han Military Token x400\\rGreat Han Central Army Order x100"),
(60, "^72fe00Title Prerequisite: A Match Made in Heaven\\r^ffffffMax HP +40\\rAttack Power +5^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(61, "^72fe00Title Prerequisite: Minds in Perfect Sync^ffffff\\rMax HP +20^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(62, "^72fe00Title Prerequisite: Devoted, Never Doubting\\rSkill learned: Hearts Linked Lv.3^ffffff\\rMax HP +3%\\rAttack Power +10\\rAttack Strength +1%\\rHP +60^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(63, "^72fe00Title Prerequisite: None^ffffff\\rMax HP +10^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(64, "^72fe00Title Prerequisite: None^ffffff\\rHP +50^7fffff\\r\\rActivation cost:\\rGreat Han Military Token x5"),
(65, "^72fe00Title Prerequisite: Bound in Life and Death\\rSkill learned: Hearts Linked Lv.5^ffffff\\rMax HP +5%\\rAttack Power +10\\rAttack Strength +3%\\rHP +60^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(66, "^72fe00Title Prerequisite: Silent Affection\\rSkill learned: Hearts Linked Lv.1^ffffff\\rMax HP +30\\rAttack Power +2^7fffff\\rRight-click to open\\rThe title is kept after divorce"),
(67, "^72fe00Title Prerequisite: A Commoner Who Gave His Life for the Nation^ffffff\\rHP +100^7fffff\\r\\rActivation cost:\\rGreat Han Military Token x50"),
(68, "^72fe00Can open the chests in front of the Works Attendant and Military Attendant in your own base,\\rand can also open the chests in front of the Works Attendant and Military Attendant in an enemy base\\rto summon legion reinforcements to assist in battle"),
(69, "^72fe00Dignified bearing, brave and martial majesty, the grace of a great general, superbly handsome beyond compare.\\r^7fffffOutfit; can have Skill Jade attached."),
(70, "^72fe00Graceful figure, dazzling flower spear, a woman general of noble lineage, beauty of an age unmatched.\\r^7fffffOutfit; can have Skill Jade attached."),
(71, "^7ffffdThe book records the habits of the various monsters in the Western Regions Mirage City.\\rBut the writing is too ancient and needs someone to interpret it."),
(72, "^7ffffdUse this item to unlock Divine Blessing"),
(73, "^7ffffdCan be used to buy items from all tavern shops in Loulan Sand Sea"),
(74, "^7ffffdCan be used to buy items from all tavern shops in the Snowlands of Sorrow"),
(75, "^7ffffdCan be used to buy items from all tavern shops in the Fragrant Hidden Valley"),
(76, "^7ffffdCan be used to buy items from all tavern shops in the Enchanted Flower Rainforest"),
(77, "^7ffffdA dazzling soul that has absorbed the power of nature; can be exchanged for high-level equipment in the Western Regions Mirage City"),
(78, "^7ffffdA soul fragment that has absorbed the power of nature; can be exchanged in the Western Regions Mirage City for some Experience or money"),
(79, "^7ffffdA work of military strategy passed down from the Heavenly Court, beloved by the people of the Western Regions.\\rCan be exchanged in the Western Regions Mirage City for various marvelous items"),
(80, "^7ffffdHand this item in to Wang Han on Chang'an Cloud Terrace to receive 100 Martial Merit and Merit\\r^ffffffLevel Requirement: 80"),
(81, "^7ffffdHand this item in to Wang Han on Chang'an Cloud Terrace to receive 25 Martial Merit and Merit\\r^ffffffLevel Requirement: 60"),
(82, "^7ffffdHand this item in to Wang Han on Chang'an Cloud Terrace to receive 25 Martial Merit and Merit\\r^ffffffLevel Requirement: 70"),
(83, "^7ffffdHand this item in to Wang Han on Chang'an Cloud Terrace to receive 40 Martial Merit and Merit\\r^ffffffLevel Requirement: 65"),
(84, "^7ffffdHand this item in to Wang Han on Chang'an Cloud Terrace to receive 60 Martial Merit and Merit\\r^ffffffLevel Requirement: 70"),
(85, "^7ffffdHand this item in to Che Yong at Chang'an Imperial Academy to receive 100 Civil Merit and Merit\\r^ffffffLevel Requirement: 80"),
(86, "^7ffffdHand this item in to Che Yong at Chang'an Imperial Academy to receive 25 Civil Merit and Merit\\r^ffffffLevel Requirement: 60"),
(87, "^7ffffdHand this item in to Che Yong at Chang'an Imperial Academy to receive 25 Civil Merit and Merit\\r^ffffffLevel Requirement: 70"),
(88, "^7ffffdHand this item in to Che Yong at Chang'an Imperial Academy to receive 40 Civil Merit and Merit\\r^ffffffLevel Requirement: 65"),
(89, "^7ffffdHand this item in to Che Yong at Chang'an Imperial Academy to receive 60 Civil Merit and Merit\\r^ffffffLevel Requirement: 70"),
(90, "^7ffffdFind Ju Shou in Hebei to receive a large Hebei Reputation reward.\\rFind Meng Qing in Southern Sichuan to receive a large Southern Sichuan Reputation reward.\\rFind Ma Teng in Xiliang to receive a large Xiliang Reputation reward.\\rFind Huang Quan in Bashu to receive a large Bashu Reputation reward.\\rFind Meng Huo in Nanman to receive a large Nanman Reputation reward.\\rFind Lu Su in Jiangnan to receive a large Jiangnan Reputation reward.\\rFind Kuai Yue in Jingxiang to receive a large Jingxiang Reputation reward.\\rFind Shi Xu in Guanzhong to receive a large Guanzhong Reputation reward."),
(91, "^7ffffdFind Ju Shou in Hebei to receive a Hebei Reputation reward.\\rFind Meng Qing in Southern Sichuan to receive a Southern Sichuan Reputation reward.\\rFind Ma Teng in Xiliang to receive a Xiliang Reputation reward.\\rFind Huang Quan in Bashu to receive a Bashu Reputation reward.\\rFind Meng Huo in Nanman to receive a Nanman Reputation reward.\\rFind Lu Su in Jiangnan to receive a Jiangnan Reputation reward.\\rFind Kuai Yue in Jingxiang to receive a Jingxiang Reputation reward.\\rFind Shi Xu in Guanzhong to receive a Guanzhong Reputation reward."),
(92, "^7ffffdLow-level currency of the Western Regions Wonders Guild, based in the Western Regions Mirage City"),
(93, "^7ffffdTop-tier currency of the Western Regions Wonders Guild, based in the Western Regions Mirage City"),
(94, "^7ffffdHigh-level currency of the Western Regions Wonders Guild, based in the Western Regions Mirage City"),
(95, "^7ffffdA magical sock that can pick gifts off the Christmas tree\\r^fff600One sock can pick up one small gift; aim carefully before grabbing!"),
(96, "^7ffffdA sparkling star; a big surprise is waiting for you!"),
(97, "^7ffffdClaiming the quest will consume 1 General Star Record. ^ffffff\\rQuest: ^72fe00The Way Cannot Be Without a Master^ffffff  Level Requirement: ^fff60061^ffffff  Condition: None  Claimed from the Northern Dipper Star Lord in Chang'an."),
(98, "^7ffffdWei players who hand this item to Jia Xu in Xuchang City receive 200 Civil Merit and Merit\\rShu players who hand this item to Fa Zheng in Hanzhong City receive 200 Civil Merit and Merit\\rWu players who hand this item to Zhang Zhao in Jianye City receive 200 Civil Merit and Merit"),
(99, "^7ffffdWei players who hand this item to Jia Xu in Xuchang City receive 200 Military Merit and Merit\\rShu players who hand this item to Fa Zheng in Hanzhong City receive 200 Military Merit and Merit\\rWu players who hand this item to Zhang Zhao in Jianye City receive 200 Military Merit and Merit"),
(100, "^7ffffdWei players who hand this item to Jia Xu in Xuchang City receive 60 Civil Merit and Merit\\rShu players who hand this item to Fa Zheng in Hanzhong City receive 60 Civil Merit and Merit\\rWu players who hand this item to Zhang Zhao in Jianye City receive 60 Civil Merit and Merit"),
(101, "^7ffffdWei players who hand this item to Jia Xu in Xuchang City receive 60 Military Merit and Merit\\rShu players who hand this item to Fa Zheng in Hanzhong City receive 60 Military Merit and Merit\\rWu players who hand this item to Zhang Zhao in Jianye City receive 60 Military Merit and Merit"),
(102, "^7fffffOpening at Level 1-69 grants [Hero's Return Privilege Gold Card];\\ropening at Level 70 or above grants [Hero's Return Privilege Silver Card].\\r\\r[Hero's Return Privilege Silver Card] + [Veteran's Medal] can be redeemed at the Veteran Reception Ambassador for:\\r1 Dilu Horse with a 7-day time limit;\\rtitle: Silver Hero's Return Privilege.\\rAt Level 80, the title can be used to claim 1 Secret Text·Darkness (Exclusive);\\rat Hero Level 15, the title can be used to claim 1 Secret Text·Weapon (Exclusive);\\rat Hero Level 30, the title can be used to claim 20 Star Immortal Blossoms.\\r\\r[Hero's Return Privilege Gold Card] + [Veteran's Medal] can be redeemed at the Veteran Reception Ambassador for:\\r1 Dilu Horse with a 14-day time limit;\\rtitle: Gold Hero's Return Privilege.\\rAt Level 80, the title can be used to claim 1 Secret Text·Darkness (Exclusive);\\rat Hero Level 15, the title can be used to claim 1 Secret Text·Weapon (Exclusive);\\rat Hero Level 30, the title can be used to claim 30 Star Immortal Blossoms."),
(103, "^7fffffOpening at Level 15-80 grants Sandalwood Incense with a 1-hour time limit.\\rOpening at Hero level grants Agarwood Incense with a 1-hour time limit."),
(104, "^7fffffRequires a party of one male and one female, both Level 16 or above;\\rthe male, as party leader, uses this item\\rto trigger the ^fff600Qixi Temple Worship quest."),
(105, "^7fffffRequires a party of one male and one female, both Level 16 or above;\\rthe male, as party leader, uses this item\\rto trigger the ^fff600Qixi Delicacies quest."),
(106, "^7fffffRequires a party of one male and one female, both Level 16 or above;\\rthe male, as party leader, uses this item\\rto trigger the ^fff600Qixi Bee Extermination quest."),
(107, "^7fffffBefore February 16, 2009, collect 15 Fireflies and hand them to Zui Yanhong (Chang'an　145,200)\\rto complete the \"Fireflies Fly\" solo quest;\\ra male (as party leader) and female player in a party, each collecting 10 Fireflies,\\rcan complete the \"Fireflies Fly\" party quest. ^fff600\\rBefore February 19, Fireflies can also be exchanged for fireworks with Zui Yanhong!"),
(108, "^7fffff2015 National Arena Tournament Party Leader Reward!\\rOpen to receive a mysterious gift"),
(109, "^7fffffA GM skill for distributing gifts; select a target then Right-click to send the gift to a player who came to participate in the event"),
(110, "^7fffffA gift-claim voucher handed out during the GM Gift Giveaway\\r^fff600If you have this item in your inventory, you can claim a big GM gift every 10 minutes!\\rThis item has a 1-minute time limit"),
(111, "^7fffffA mysterious medicine gifted by a GM\\r^fff600Right-click to use\\rIncreases Crit Rate by 5^7fffff\\rThis medicine has a 7-day time limit"),
(112, "^7fffffA mysterious medicine gifted by a GM\\r^fff600Right-click to use\\rIncreases max Stamina by 50\\rand Stamina recovery speed by 1^7fffff\\rThis medicine has a 7-day time limit"),
(113, "^7fffffA mysterious medicine gifted by a GM\\r^fff600Right-click to use\\rIncreases Attack Power by 13\\rIncreases Max HP by 130^7fffff\\rThis medicine has a 7-day time limit"),
(114, "^7fffffA mysterious medicine gifted by a GM\\r^fff600Right-click to use\\rIncreases Max HP by 250^7fffff\\rThis medicine has a 7-day time limit"),
(115, "^7fffffA mysterious medicine gifted by a GM\\r^fff600Right-click to use\\rIncreases Defense by 7\\rIncreases Max HP by 130^7fffff\\rThis medicine has a 7-day time limit"),
(116, "^7fffffA Lucky Gift Pack gifted by a GM; having this item in the pack can trigger the quest to claim a mysterious reward.\\r^fff600Rewards can be claimed once every 10 minutes."),
(117, "^7fffffA mysterious Gift Pack gifted by a GM; open it for a surprise!"),
(118, "^7fffff\\rFire Essence formed after a great fire burns out\\rCollect 108 Fire Essences of the Red Heaven Temple\\rto claim the title ^fff600Dreams of Reunion with You from Huang Chengyan in Guanzhong"),
(119, "^7fffff\\rFrom the Romance scenario \"Western Regions Mirage City\"."),
(120, "^7fffff\\rTear Stone condensed from the rain of the Azure Heaven Temple\\rCollect 54 Tear Stones of the Azure Heaven Temple\\rto claim the title ^fff600Still Afraid the Meeting Is But a Dream from Huang Chengyan in Guanzhong\\r^7fffffThis title requires ^fff600Dreams of Reunion with You"),
(121, "^7fffff\\rFine jade formed from the mist of the Jun Heaven Temple\\rCollect 27 Love Jades of the Jun Heaven Temple\\rto claim the title ^fff600Love So Deep, a Passionate Soul from Huang Chengyan in Guanzhong\\r^7fffffThis title requires ^fff600Still Afraid the Meeting Is But a Dream"),
(122, "^7fffffVoucher to hold a dream wedding in \"Wind, Flower, Snow, Moon\"\\r^fff601Having this item allows you to obtain the generous rewards of the Dream Wedding"),
(123, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 1000 gold worth of Merchant Tokens."),
(124, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 1188 gold worth of Merchant Tokens."),
(125, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 2000 gold worth of Merchant Tokens."),
(126, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 200 gold worth of Merchant Tokens."),
(127, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 300 gold worth of Merchant Tokens."),
(128, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 400 gold worth of Merchant Tokens."),
(129, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 500 gold worth of Merchant Tokens."),
(130, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 588 gold worth of Merchant Tokens."),
(131, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 600 gold worth of Merchant Tokens."),
(132, "^7fffffThree Kingdoms Growth Fund Gift Pack\\r^fff600Opening grants: 800 gold worth of Merchant Tokens."),
(133, "^7fffffAn exclusive item for new servers of \"Chibi · Three Kingdoms\".\\rCan be used to join the ^fff600Chibi Growth Fund Plan^7fffff at the Perfect Gift Master.\\rPurchasing the Growth Fund returns massive amounts of Merchant Tokens in stages. ^fff600\\rAt Level 1, receive 1188 gold worth of Merchant Tokens.\\rAt Level 40, receive 400 gold worth of Merchant Tokens.\\rAt Level 80, receive 600 gold worth of Merchant Tokens.\\rAt Hero Level 15, receive 800 gold worth of Merchant Tokens.\\rAt Hero Level 30, receive 1000 gold worth of Merchant Tokens.\\rAt Hero Level 45, receive 2000 gold worth of Merchant Tokens.\\r^7fffffEach player can complete this event only once.\\rAlso, the Silver Armament Order and the Gold Armament Order are mutually exclusive.\\rPlease purchase with care."),
(134, "^7fffffAn exclusive item for new servers of \"Chibi · Three Kingdoms\".\\rCan be used to join the ^fff600Chibi Growth Fund Plan^7fffff at the Perfect Gift Master.\\rPurchasing the Growth Fund returns massive amounts of Merchant Tokens in stages. ^fff600\\rAt Level 1, receive 588 gold worth of Merchant Tokens.\\rAt Level 40, receive 200 gold worth of Merchant Tokens.\\rAt Level 80, receive 300 gold worth of Merchant Tokens.\\rAt Hero Level 15, receive 400 gold worth of Merchant Tokens.\\rAt Hero Level 30, receive 500 gold worth of Merchant Tokens.\\rAt Hero Level 45, receive 1000 gold worth of Merchant Tokens.\\r^7fffffEach player can complete this event only once.\\rAlso, the Silver Armament Order and the Gold Armament Order are mutually exclusive.\\rPlease purchase with care."),
(135, "^7fffff[Hero's Return Privilege Gold Card] + [Veteran's Medal] can be redeemed at the Veteran Reception Ambassador for:\\r1 Dilu Horse with a 14-day time limit;\\rtitle: Gold Hero's Return Privilege.\\rAt Level 80, the title can be used to claim 1 Secret Text·Darkness (Exclusive);\\rat Hero Level 15, the title can be used to claim 1 Secret Text·Weapon (Exclusive);\\rat Hero Level 30, the title can be used to claim 30 Star Immortal Blossoms."),
(136, "^7fffff[Hero's Return Privilege Silver Card] + [Veteran's Medal] can be redeemed at the Veteran Reception Ambassador for:\\r1 Dilu Horse with a 7-day time limit;\\rtitle: Silver Hero's Return Privilege.\\rAt Level 80, the title can be used to claim 1 Secret Text·Darkness (Exclusive);\\rat Hero Level 15, the title can be used to claim 1 Secret Text·Weapon (Exclusive);\\rat Hero Level 30, the title can be used to claim 20 Star Immortal Blossoms."),
(137, "^7fffffA lovably clumsy panda that likes to act spoiled and is always by your side.\\r^ff9090Added action: ^c3dbffPet's Playful Antics"),
(138, "^7fffffA plump calico cat that loves to hop around on your shoulders,\\rthe bell on its neck jingling as it goes.\\r^ff9090Added action: ^c3dbffCat Chasing Butterfly"),
(139, "^7fffffA plump calico cat that loves to hop around on your shoulders,\\rthe bell on its neck jingling as it goes.\\r^ff9090Added action: ^c3dbffCat Chasing Butterfly\\r^7fffffThe item will not disappear after it expires.\\r^7fffffA time-extension service can be used once this item expires."),
(140, "^7fffffA commander's seal that only a Grade 1 civil official can equip."),
(141, "^7fffffA general's seal that only a Grade 1 military official can equip."),
(142, "^7fffffA mysterious golden key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Huarong Trail battlefield."),
(143, "^7fffffA mysterious golden key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Battle of Hefei (Heroic) battlefield."),
(144, "^7fffffA mysterious golden key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Fantasy Eight Formations - Rest Gate battlefield."),
(145, "^7fffffA mysterious golden key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Battle of Puyang (Heroic) battlefield."),
(146, "^7fffffA mysterious golden key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Battle of Hulao Pass (Heroic) battlefield."),
(147, "^7fffffA mysterious golden key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Longzhong Strange Love battlefield."),
(148, "^7fffffA mysterious silver key.\\r^ff7d2fCan be used to open the Extra Rewards of the Huarong Trail battlefield."),
(149, "^7fffffA mysterious silver key.\\r^ff7d2fCan be used to open the Extra Rewards of the Battle of Hefei (Heroic) battlefield."),
(150, "^7fffffA mysterious silver key.\\r^ff7d2fCan be used to open the Heaven-Sent Rewards of the Fantasy Eight Formations - Rest Gate battlefield."),
(151, "^7fffffA mysterious silver key.\\r^ff7d2fCan be used to open the Extra Rewards of the Battle of Puyang (Heroic) battlefield."),
(152, "^7fffffA mysterious silver key.\\r^ff7d2fCan be used to open the Extra Rewards of the Battle of Hulao Pass (Heroic) battlefield."),
(153, "^7fffffA mysterious silver key.\\r^ff7d2fCan be used to open the Extra Rewards of the Longzhong Strange Love battlefield."),
(154, "^7fffffA winding red thread that binds two hearts together.\\rRight-click to use and teleport to your spouse. ^fff600\\rCannot be used to teleport into scenarios"),
(155, "^7fffffFirst Rank Divine Artifact Stone\\rCan be used to buy Divine Artifact-level Hero equipment from weapon merchants, armor merchants, and Merchant Guild Apprentices in Luoyang, the Grasslands, the East Sea, and other regions."),
(156, "^7fffffFirst Rank Divine Artifact Stone\\rCan be used to upgrade Peerless-tier Battle God weapons\\rObtainable from the Divine Artifact Merchant (Level Requirement: Hero Lv.1)"),
(157, "^7fffffA commander's seal that only a Grade 7 civil official can equip."),
(158, "^7fffffA general's seal that only a Grade 7 military official can equip."),
(159, "^7fffffSeven-Star Lake Contest\\r^fff600Armor dropped by Wutugu.\\r^fff600Bring this token back to our camp to receive a generous reward\\r^fff600Players carrying this item should beware of being killed along the way\\rThis token disappears if the player logs out, dies, or leaves Seven-Star Lake.\\r^ff0000No longer valid; can be deleted from your inventory"),
(160, "^7fffffSeven-Star Lake Contest\\r^fff600Token dropped by Meng Huo.\\r^fff600The picker gains 1000 friendship with Meng Huo's army and their own kingdom.\\r^ff0000No longer valid; can be deleted from your inventory"),
(161, "^7fffffSeven-Star Lake's specialty timber, hard in grain; it is\\ran excellent building material.\\r^fff600Can be used to build arrow towers, for tactical quests, and more.\\r^ff0000No longer valid; can be deleted from your inventory"),
(162, "^7fffffTen-Thousand-Year Dark Iron\\rDark Iron that appears only in myth\\rCollect 50 Ten-Thousand-Year Dark Iron, 100 Thousand-Year Dark Iron, and 200 Hundred-Year Dark Iron\\rto exchange with Ouye Zi for the title ^fff600Uncanny Craftsmanship\\r^7fffffThis title requires ^fff600Master of an Age"),
(163, "^7fffffA commander's seal that only a Grade 3 Crown Grand Tutor can equip."),
(164, "^7fffffA commander's seal that only a Grade 3 Master Builder can equip."),
(165, "^7fffffA commander's seal that only a Grade 3 Guardian of the Capital can equip."),
(166, "^7fffffA commander's seal that only a Grade 3 Waterworks Commandant can equip."),
(167, "^7fffffThird Rank Divine Artifact Stone\\rCan be used to buy Divine Artifact-level Hero equipment from weapon merchants, armor merchants, and Merchant Guild Apprentices in Luoyang, the Grasslands, the East Sea, and other regions."),
(168, "^7fffffThird Rank Divine Artifact Stone\\rCan be used to upgrade Soul-Seeker-tier Battle God weapons\\rObtainable from the Divine Artifact Merchant (Level Requirement: Hero Lv.31)"),
(169, "^7fffffWave to you once, as if hearing pines in ten thousand ravines.\\r^ff9090Added action: String Plays Water Dragon Chant"),
(170, "^7fffffHow the heroes of the world swarm about, rise and fall alike remembered after death."),
(171, "^7fffffHow the heroes of the world swarm about, rise and fall alike remembered after death.\\r^0184ffAttack Power +16\\rDefense +16\\rConstitution +240"),
(172, "^7fffffA letter of recommendation from the Eastern Immortal Academy; hand it to Mi Ding, Merchant Guild Chief in Luoyang City, to receive 200 Merchant Guild Reputation."),
(173, "^7fffffOn the shore of the East Sea was a strange beast called the \"Flood Dragon\".\\rIt was slain and its eyes taken, and so this blade was forged.\\r^fff600A custom-commissioned item.\\rPlayer ^ff7d2fNeighbor Little Brother^fff600 exclusive accessory."),
(174, "^7fffffA specialty of the East Sea\\rCan be used to buy things from East Sea Merchant Guild Apprentices."),
(175, "^7fffffA commander's seal that only a Grade 9 civil official can equip."),
(176, "^7fffffA general's seal that only a Grade 9 military official can equip."),
(177, "^7fffffSettle the emperor's world affairs and win a name that outlives your life."),
(178, "^7fffffSettle the emperor's world affairs and win a name that outlives your life.\\r^ff7d2fAttack Power +40\\rDefense +40\\rConstitution +600\\rHP +500"),
(179, "^7fffffA commander's seal that only a Grade 2 civil official can equip."),
(180, "^7fffffA general's seal that only a Grade 2 military official can equip."),
(181, "^7fffffSecond Rank Divine Artifact Stone\\rCan be used to buy Divine Artifact-level Hero equipment from weapon merchants, armor merchants, and Merchant Guild Apprentices in Luoyang, the Grasslands, the East Sea, and other regions."),
(182, "^7fffffSecond Rank Divine Artifact Stone\\rCan be used to upgrade Unmatched-tier Battle God weapons\\rObtainable from the Divine Artifact Merchant (Level Requirement: Hero Lv.16)"),
(183, "^7fffffRight-click the gift in Peach Blossom Village to distribute it to players in the area.\\rEach player can receive one group-distributed gift per day."),
(184, "^7fffffA fish specialty of Yunnan; its flesh is tender and high in fat,\\rdelicious, rich in nutrients, and also has certain medicinal value.\\r^fff600Can be used to feed Poison Gas Flowers and for various gathering-type tactical quests.\\r^ff0000No longer valid; can be deleted from your inventory"),
(185, "^7fffffA fish specialty of Yunnan, also known as the Dali belly-sharp fish; thick-fleshed\\rwith rich fat, nutritious and delicious in meat; its roe\\ris non-toxic, tasty, and edible - a famous Yunnan product.\\r^fff600Can be used to feed Poison Gas Flowers and for various gathering-type tactical quests.\\r^ff0000No longer valid; can be deleted from your inventory"),
(186, "^7fffffA fish specialty of Yunnan, also known as the Kanglang white fish; though\\rsmall in size, its meat is delicious - an important commercial fish.\\r^fff600Can be used to feed Poison Gas Flowers and for various gathering-type tactical quests.\\r^ff0000No longer valid; can be deleted from your inventory"),
(187, "^7fffffA fish specialty of Yunnan, a variety of the golden-line fish; its flesh can\\rbe used medicinally, mainly for treating kidney deficiency.\\r^fff600Can be used to feed Poison Gas Flowers and for various gathering-type tactical quests.\\r^ff0000No longer valid; can be deleted from your inventory"),
(188, "^7fffffA letter of recommendation from a wandering immortal; hand it to Mi Ding, Merchant Guild Chief in Luoyang City, to receive 1000 Merchant Guild Reputation."),
(189, "^7fffffA general's seal that only a Grade 5 Wave-Calming General can equip."),
(190, "^7fffffA commander's seal that only a Grade 5 Grand Music Director can equip."),
(191, "^7fffffA commander's seal that only a Grade 5 Grand Granary Director can equip."),
(192, "^7fffffA commander's seal that only a Grade 5 Grand Medical Director can equip."),
(193, "^7fffffA commander's seal that only a Grade 5 Grand Historian can equip."),
(194, "^7fffffA commander's seal that only a Grade 5 civil official can equip."),
(195, "^7fffffA general's seal that only a Grade 5 Wilderness-Spanning General can equip."),
(196, "^7fffffA general's seal that only a Grade 5 military official can equip."),
(197, "^7fffffA general's seal that only a Grade 5 Bandit-Punishing General can equip."),
(198, "^7fffffA general's seal that only a Grade 5 Falcon-Soaring General can equip."),
(199, "^7fffffHand to the Perfect Gift Messenger,\\rthen choose either the permanent 2008 Christmas outfit\\ror 60 Festive Ingots."),
(200, "^7fffffHand to the Perfect Gift Messenger to exchange for the 2008 Christmas outfit with a 15-day time limit."),
(201, "^7fffffHand to the Perfect Gift Messenger to exchange for the 2008 Christmas outfit with a 1-day time limit."),
(202, "^7fffffHand to Liu Yuanqi in Hebei to exchange for a large amount of Central Plains Clan Reputation.\\rHand to the High Priest in Southern Sichuan to exchange for a large amount of Wunan Clan Reputation.\\r^fff600Each time you can gain 180 Reputation for your own clan or 120 Reputation for another clan."),
(203, "^7fffffA commander's seal that only a Sub-Grade 3 Director of the Secretariat can equip."),
(204, "^7fffffA commander's seal that only a Sub-Grade 3 Palace Attendant can equip."),
(205, "^7fffffA general's seal that only a Sub-Grade 3 Front General can equip."),
(206, "^7fffffA general's seal that only a Sub-Grade 3 Right General can equip."),
(207, "^7fffffA general's seal that only a Sub-Grade 3 Rear General can equip."),
(208, "^7fffffA commander's seal that only a Sub-Grade 3 Crown Young Tutor can equip."),
(209, "^7fffffA commander's seal that only a Sub-Grade 3 Director of State Affairs can equip."),
(210, "^7fffffA general's seal that only a Sub-Grade 3 Left General can equip."),
(211, "^7fffffA commander's seal that only a Sub-Grade 3 civil official can equip."),
(212, "^7fffffA general's seal that only a Sub-Grade 3 military official can equip."),
(213, "^7fffffA rare item obtained from the East Sea Merchant Guild\\rCan be used to buy accessories."),
(214, "^7fffffA general's seal that only a Sub-Grade 4 Army Commandant can equip."),
(215, "^7fffffA commander's seal that only a Sub-Grade 4 Crown Groom can equip."),
(216, "^7fffffA general's seal that only a Sub-Grade 4 Might-Building Commandant can equip."),
(217, "^7fffffA general's seal that only a Sub-Grade 4 Army-Supporting Commandant can equip."),
(218, "^7fffffA commander's seal that only a Sub-Grade 4 Attached Cavalry Attendant can equip."),
(219, "^7fffffA commander's seal that only a Sub-Grade 4 civil official can equip."),
(220, "^7fffffA general's seal that only a Sub-Grade 4 military official can equip."),
(221, "^7fffffA general's seal that only a Sub-Grade 4 Bandit-Sweeping Commandant can equip."),
(222, "^7fffffA commander's seal that only a Sub-Grade 4 Remonstrance Master can equip."),
(223, "^7fffffA commander's seal that only a Sub-Grade 4 Usher Assistant can equip."),
(224, "^7fffffA rare item obtained from the Luoyang Merchant Guild\\rCan be used to buy accessories."),
(225, "^7fffffA rare item obtained from the Grasslands Merchant Guild\\rCan be used to buy accessories."),
(226, "^7fffffImmortal Spirit Stone\\r^fff600Can be exchanged at a Craftsman Apprentice on Heroic-level maps for a One-Eye Divine Talisman.\\rThe One-Eye Divine Talisman is the basic material for converting a Secret Text Spirit Pearl into a Secret Text Jade Pearl.\\rEach Haotian Stone can be exchanged for 1 One-Eye Divine Talisman."),
(227, "^7fffffQuest: Escort · Thanks from the Envoy\\r^fff600Empty; inside you can read the words \"Try Another\\rBox\".\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rJiangnan. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(228, "^7fffffQuest: Escort · Thanks from the Local Pacification Envoy\\r^fff600\"This handkerchief is clean and lovely, with no\\rsuspicious trace at all\" -- Xue Minqin\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rBashu. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(229, "^7fffffQuest: Escort · Thanks from the Foreign Tribes\\r^fff600An impressionist painting, not easy to\\runderstand; its author is Han Jile.\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rGuanzhong. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(230, "^7fffffQuest: Escort · Thanks from the Children\\r^fff600A kind of toy children love; shake it and\\rit makes a thump-thump sound.\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rHebei. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(231, "^7fffffQuest: Escort · Thanks from the Hundred Beasts\\r^fff600Fur of many rare beasts; rumor says it can\\rcommand all beasts. Of course,\\rit is only a rumor...\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rNanman. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(232, "^7fffffQuest: Escort · Thanks from the Tribute Envoy\\r^fff600Rather small, but it keeps out the cold very well.\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rXiliang. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(233, "^7fffffQuest: Escort · Thanks from the Master\\r^fff600It looks as though it has been soaked in black dog blood,\\rwith the power to suppress evil.\\r^7fffffHold this item and complete the Spring Festival Escort Convoy quest in\\rJingxiang. After completing the escort quest,\\rclaim the special reward quest from\\rthe escort leader."),
(234, "^7fffffQuest item.\\r^fff600Right-click to use.\\rA carefully crafted Crystal Heart; please place it beside the bridge at Weiyang Palace."),
(235, "^7fffffSpecial-price Gift Pack^ffffff<LF>Deluxe Gift Pack made for beginners - an essential<LF>for home, travel, monster-slaying and leveling. Includes 1 Celestial Maiden Silk, 1 Sky-Mending Stone, 5 Ground-Shortening Command Banners, 10 Thousand-Mile Voices, 2 Rough Charcoals, 2 Brass Spindles<LF>and 20 Sea Salts."),
(236, "^7fffffSpecial-price Gift Pack^ffffff\\rIncludes 10 Grand Origin Talismans"),
(237, "^7fffffSpecial-price Gift Pack^ffffff\\rIncludes 100 Rose Bouquets"),
(238, "^7fffffAn Excellent Codex Big Gift Pack; please wait patiently for the gift to open.\\r^fff600What on earth will you get?"),
(239, "^7fffffTraded by a low-level player to the high-level player who helped you complete a quest.\\r^fff600Lets the high-level player claim the General's Reward.\\r^7fffffThe General's Reward can only be claimed once per day."),
(240, "^7fffffFor use by low-level players.\\r^fff600Can claim the Soldier's Reward."),
(241, "^7fffffStamina recovery medicine^ffffff\\rAn immortal wine from the \"Discourses Weighed - Chapter on the Emptiness of the Way\"; one cup keeps hunger away for months.\\rRestores 100 Stamina immediately when used; usable 100 times."),
(242, "^7fffffUniversal currency on the test server; can be used to buy rare items from Han Xuan in Chang'an.\\rObtained via the test server's daily roll call after reaching Level 16.\\rWhen joining the Battle of Red Cliffs and completing the attack-on-the-enemy-water-camp quest,\\rif you spend 1 Red Jade Gold Coin,\\rplayers of Level 60-80 can additionally gain a massive amount of Experience,\\rand Heroic-level players can additionally gain 1 Chaos Divine Stone."),
(243, "^7fffffUse to gain 50 Civil Merit and Merit"),
(244, "^7fffffUse to gain Codex·Cao Zhi"),
(245, "^7fffffUse to transform into a wooden barrel, avoiding enemy soldiers' line of sight; you cannot move while transformed.\\r^fff600Transformation duration: unlimited; cancel the transformation to return to human form.\\r^ff0000The item disappears when you leave the battlefield area."),
(246, "^7fffffUse to place 5 Horse Racing Essentials into your inventory and create 1 Horse Racing Essential Pack.\\rHorse Racing Essential Packs are tradable"),
(247, "^7fffffUse to increase Attack Power by 20 for 15 minutes\\r^fff600Right-click to use"),
(248, "^7fffffUse to increase Attack Strength by 5% for 15 minutes\\r^fff600Right-click to use"),
(249, "^7fffffUse to increase healing effects by 10% for 15 minutes\\r^fff600Right-click to use"),
(250, "^7fffffUse to increase Defense by 10 for 15 minutes\\r^fff600Right-click to use"),
(251, "^7fffffEffect: fan-shaped area attack with yourself at the origin, dealing 3 hits per use.\\rCan only be used in the Baidi City area; Cool-down: 1 min."),
(252, "^7fffffEffect: fan-shaped area attack centered on the selected target, dealing 3000 damage.\\rAdds a 15-second Burning effect.\\rCan only be used in the Baidi City area; Cool-down: 1 min."),
(253, "^7fffffUse this item to attack enemies at the heights of the Qiang Tooth Highway,\\r^7fffffand it can also break the Qiang Elder Guards' formation.\\r^ff0000The item disappears when you leave the battlefield area."),
(254, "^7fffffUse Level: 10\\r^fff600A book recording the wonders of the Mystic Gates Five Elements.\\rThe head instructor at Chang'an's martial arts hall offers a troop-type retread service that can\\rhelp you clear your current primary and secondary troop types, specialization points, and Aptitude points;\\rafterward you can study new primary and secondary troop types and reallocate your specialization\\rpoints and Aptitude points. A troop-type retread keeps the levels of your previously studied primary and\\rsecondary troop types. Each retread requires 1 Heavenly Book of Concealed Jia."),
(255, "^7fffffUse Level: 10\\r^ffffffItems granted:\\r^fff6001 First Rank Purple-quality weapon and 1 Level 15 Recruit Treasure Bag.\\r^7fffffPlease free up at least 2 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(256, "^7fffffUse Level: 15\\r^ffffffItems granted:\\r^fff6001 Large Sandalwood Box\\r1 Cloud-Spanning Ring\\r5 Teleport Flags - Jizhou (Central Plains clan) or 5 Teleport Flags - Phoenix Camp (Wunan clan)\\rplus 1 Level 20 Recruit Treasure Bag.\\r^7fffffPlease free up at least 4 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(257, "^7fffffUse Level: 1\\r^ffffffItems granted:\\r^fff6001 set of beginner outfits with a 7-day time limit,\\r1 Level 5 Recruit Treasure Bag.\\r^7fffffPlease free up at least 3 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag."),
(258, "^7fffffUse Level: 20\\r^ffffffItems granted:\\r^fff6001 Moon-Treading Ring,\\r1 small yellow horse,\\r1 Second Rank Purple-quality weapon,\\r1 Level 25 Recruit Treasure Bag.\\r^7fffffPlease free up at least 4 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(259, "^7fffffUse Level: 25\\r^ffffffItems granted:\\r^fff600\\r1 Second Rank Purple Shoulder Armor\\r1 Large Sandalwood Box\\r20 Lesser Restoration Pills\\rplus 1 Level 30 Recruit Treasure Bag\\r^7fffffPlease free up at least 4 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(260, "^7fffffUse Level: 30\\r^ffffffItems granted:\\r^fff6005 Chengdu Teleport Flags,\\r1 Second Rank Purple Belt,\\r5 Ox-Hide Horns,\\rplus 1 Level 35 Recruit Treasure Bag.\\r^7fffffPlease free up at least 4 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(261, "^7fffffUse Level: 35\\r^ffffffItems granted:\\r^fff600\\r1 Third Rank Purple-quality weapon,\\r20 Greater Restoration Pills,\\r3 Dark-Yellow Heavenly Books,\\rplus 1 Level 40 Recruit Treasure Bag.\\r^7fffffPlease free up at least 4 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(262, "^7fffffUse Level: 40\\r^fff600A decree by which the Son of Heaven proclaims his will to the world.\\rIf you take it to the Faction Emissary at Chang'an-Weiyang Palace (Xu Shu, Hua Xin, Xun You),\\ryou can change your current faction. Each faction change has a 72-hour interval.\\rNote: The faction-change function is unavailable while you are in a sworn brotherhood."),
(263, "^7fffffUse Level: 40\\r^ffffffItems granted:\\r^fff6001 Third Rank Purple Leg Armor\\r5 Ox-Hide Horns\\r5 Nanzhong Teleport Flags\\r20 Purple-Gold Pills\\rplus 1 Level 45 Recruit Treasure Bag.\\r^7fffffPlease free up at least 5 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(264, "^7fffffUse Level: 45\\r^ffffffItems granted:\\r^fff6001 Third Rank Purple Belt\\r4 Dark-Yellow Heavenly Books\\r5 Ox-Hide Horns\\r5 Jiangnan Teleport Flags\\r1 Large Sandalwood Box\\r20 Purple-Gold Pills\\rplus 1 Level 50 Recruit Treasure Bag.\\r^7fffffPlease free up at least 7 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(265, "^7fffffUse Level: 50\\r^ffffffItems granted:\\r^fff6001 Footwear Exchange Talisman,\\r1 Fourth Rank Purple-quality weapon,\\r20 Purple-Gold Pills\\r1 Level 55 Recruit Treasure Bag\\rplus 1 Advanced Treasure Bag - Gold.\\r^7fffffPlease free up at least 5 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(266, "^7fffffUse Level: 55\\r^ffffffItems granted:\\r^fff6003 Consecration Stones\\r1 Secret Incantation Gift Pack - Sun and Moon\\r5 Dark-Yellow Heavenly Books\\r20 Heaven-Restoring Pills\\r5 Xiangyang Teleport Flags\\rplus 1 Level 60 Recruit Treasure Bag.\\r^7fffffPlease free up at least 6 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(267, "^7fffffUse Level: 5\\r^ffffffItems granted:\\r^fff60020 Grass Restoration Pills\\r1 Level 10 Recruit Treasure Bag.\\r^7fffffPlease free up at least 2 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(268, "^7fffffUse Level: 60\\r^ffffffItems granted:\\r^fff6005 Cinnabar Brushes,\\r2 Large Sandalwood Gift Boxes, \\r5 Immortal's Orders,\\r5 Loyal Minister Azure-Blood Stones,\\r5 Ox-Hide Horns,\\r20 Heaven-Restoring Pills,\\r5 Chang'an Teleport Flags\\r1 Treasure Gift Pack\\r1 Weapon Gift Pack\\r1 Light Armor Equipment Gift Pack\\r1 Heavy Armor Equipment Gift Pack\\r1 Level 65 Recruit Treasure Bag\\rplus 1 Advanced Treasure Bag - Wood.\\r^7fffffPlease free up at least 13 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(269, "^7fffffUse Level: 61\\r^ffffffItems granted:\\r^fff60030 Chang'an Recruit Tokens\\r1 Level 65 Recruit Treasure Bag.\\r^7fffffPlease free up at least 2 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag."),
(270, "^7fffffUse Level: 65\\r^ffffffItems granted:\\r^fff6005 Shangcheng Teleport Flags\\r20 Heaven-Restoring Pills \\r5 Immortal's Orders\\r1 Enhancement Gift Pack\\r1 Golden Bell Lantern\\r1 Jade Chime Bell\\r1 Level 70 Recruit Treasure Bag.\\r^7fffffPlease free up at least 8 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(271, "^7fffffUse Level: 70\\r^ffffffItems granted:\\r^fff6005 Liufang Village Teleport Flags \\r5 Immortal's Orders,\\r1 1000-Point Spirit Gift Pack\\r3 Large Sandalwood Boxes\\r20 Heaven-Restoring Pills\\r1 Weapon Gift Pack\\r1 Light Armor Equipment Gift Pack\\r1 Heavy Armor Equipment Gift Pack\\r1 Red Brocade Umbrella\\r1 Level 75 Recruit Treasure Bag.\\r^7fffffPlease free up at least 10 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag, and receive the Beginner Status Reward."),
(272, "^7fffffUse Level: 75\\r^ffffffItems granted:\\r^fff60020 Heaven-Restoring Pills \\r5 Immortal's Orders,\\r1 Imperial War-Preparation Edict\\r5 Dark-Yellow Heavenly Books\\r5 Loulan City Teleport Flags\\r1 Enhancement Gift Pack\\r1 Yellow Dragon Banner\\r1 Level 80 Recruit Treasure Bag.\\r^7fffffPlease free up at least 8 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag, and receive the Beginner Status Reward."),
(273, "^7fffffUse Level: 80\\r^ffffffItems granted:\\r^fff60020 Heaven-Restoring Pills\\r1 Imperial War-Preparation Edict\\r1 Luoyang Fishing Order\\r5 Falling-Eagle Terrace Teleport Flags\\r1 Weapon Gift Pack\\r1 Heavy Armor Equipment Gift Pack\\r1 Light Armor Equipment Gift Pack\\r1 Enhancement Gift Pack\\r1 Green Gauze Screen\\r1 Advanced Treasure Bag - Water\\r10 Gold Han Beads\\r^7fffffPlease free up at least 10 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag and receive the Beginner Status Reward."),
(274, "^7fffffUse Level: Hero Lv.15\\r^ffffffItems granted:\\r^fff60020 Dream-Leftover Fragments,\\r10 Star Dust,\\r1 Hero Lv.30 Recruit Treasure Bag,\\r1 Advanced Treasure Bag - Fire\\rTenth Rank War-Prep Light Armor Gift Pack\\rTenth Rank War-Prep Heavy Armor Gift Pack\\rTenth Rank War-Prep Weapon Pack\\r^7fffffPlease free up at least 7 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag."),
(275, "^7fffffUse Level: Hero Lv.1\\r^ffffffItems granted:\\r^fff600\\r1 Hero Lv.15 Recruit Treasure Bag\\rNinth Rank War-Prep Light Armor Gift Pack\\rNinth Rank War-Prep Heavy Armor Gift Pack\\rNinth Rank War-Prep Weapon Pack\\r^7fffffPlease free up at least 4 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag."),
(276, "^7fffffUse Level: Hero Lv.30\\r^ffffffItems granted:\\r^fff6001 Command Gift Pack (300 points),\\r1 Advanced Secret Text Jar,\\r3 Star Immortal Blossoms,\\r1 Jade Han Zhu,\\r1 Advanced Treasure Bag - Earth\\rEleventh Rank War-Prep Light Armor Gift Pack\\rEleventh Rank War-Prep Heavy Armor Gift Pack\\rEleventh Rank War-Prep Weapon Pack\\r^7fffffPlease free up at least 7 slots in your inventory to claim the Treasure Bag items.\\rRight-click to open the Treasure Bag."),
(277, "^7fffffUse to gain: ^72fe00Phoenix Dance Scroll^7fffff (one of the essentials used at the craftsman to upgrade a female's regular outfit into a dancing outfit).\\rUse Restriction: Female"),
(278, "^7fffffUse to gain: ^72fe00Dragon Flight Scroll^7fffff (one of the essentials used at the craftsman to upgrade a male's regular outfit into a dancing outfit).\\rUse Restriction: Male"),
(279, "^7fffffUse to gain: ^a800ffFive-Elements Jade^7fffff (one of the essentials used at the craftsman to upgrade a Sixth Rank growth weapon).\\rFrom the tavern in the Snowlands of Sorrow.\\rOpen Level: 60\\rOfficial Rank Restriction: Grade 5 Official"),
(280, "^7fffffUse to gain: ^a800ffFuxi Talisman^7fffff (one of the essentials used at the craftsman to upgrade a Seventh Rank growth weapon).\\rFrom the tavern in Loulan Sand Sea.\\rOpen Level: 70\\rOfficial Rank Restriction: Grade 5 Official"),
(281, "^7fffffUse to gain: ^a800ffLingxiao Stone^7fffff (one of the essentials used at the craftsman to upgrade armor).\\rOpen Level: 80\\rOfficial Rank Restriction: Sub-Grade 3 Official"),
(282, "^7fffffUse to gain: ^a800ffHeavenly Work Ruler^7fffff (one of the essentials used at the craftsman to upgrade a Seventh Rank weapon).\\rFrom the tavern in Loulan Sand Sea.\\rOpen Level: 70\\rOfficial Rank Restriction: Grade 5 Official"),
(283, "^7fffffUse to gain: ^a800ffZhulong's Gall^7fffff (one of the essentials used at the craftsman to upgrade armor).\\rOpen Level: 80\\rOfficial Rank Restriction: Sub-Grade 3 Official"),
(284, "^7fffffUse to gain: ^a800ffGolden Bull Horn^7fffff (one of the essentials used at the craftsman to upgrade a Sixth Rank weapon).\\rFrom the tavern in the Snowlands of Sorrow.\\rOpen Level: 60\\rOfficial Rank Restriction: Grade 5 Official"),
(285, "^7fffffUse: "),
(286, "^7fffffUse: ***"),
(287, "^7fffffUse: Restore 1000 HP over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(288, "^7fffffUse: Restore 10050 HP over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(289, "^7fffffUse: Restore 100 Stamina over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(290, "^7fffffUse: Restore 100 HP over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(291, "^7fffffUse: Restore 100 HP over 15 seconds; if fully consumed,\\rout-of-combat HP recovery speed increases by 1 for 10 minutes.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(292, "^7fffffUse: Restore 10200 HP over 15 seconds.\\rIf fully consumed, Max HP increases by 355 for 10 minutes.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(293, "^7fffffUse: Restore 10500 HP over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(294, "^7fffffUse: Restore 1050 HP over 15 seconds; if fully consumed,\\rfor 10 minutes Max HP increases by 60 and HP recovery increases by 4.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(295, "^7fffffUse: Restore 1050 HP over 15 seconds; if fully consumed,\\rMax HP increases by 90 for 10 minutes.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(296, "^7fffffUse: Restore 105 Stamina over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(297, "^7fffffUse: Restore 10650 HP over 15 seconds.\\rIf fully consumed, Attack Power increases by 41 and HP recovery speed increases by 24/sec for 10 minutes.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(298, "^7fffffUse: Restore 10650 HP over 15 seconds.\\rIf fully consumed, HP recovery speed increases by 24/sec for 10 minutes.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(299, "^7fffffUse: Restore 10800 HP over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(300, "^7fffffUse: Restore 110 Stamina over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
(301, "^7fffffUse: Restore 11100 HP over 15 seconds.\\r\\rThe recovery effect is interrupted by attacking, taking damage, and the like."),
]

# id -> english
eng = {}
order = []
for i, s in rows:
    if i in eng:
        raise SystemExit("duplicate id %d" % i)
    eng[i] = s
    order.append(i)

# load sources
src = {}
src_order = []
with open(".work/tr3/in/batch_000.jsonl", encoding="utf-8") as f:
    for line in f:
        line = line.strip()
        if not line:
            continue
        o = json.loads(line)
        src[o["id"]] = o["source"]
        src_order.append(o["id"])

missing = [i for i in src_order if i not in eng]
extra = [i for i in order if i not in src]
if missing or extra:
    raise SystemExit("missing=%s extra=%s" % (missing[:10], extra[:10]))
if order != src_order:
    raise SystemExit("order mismatch")

# verify tokens per record
import re
color_re = re.compile(r"\^[0-9a-fA-F]{6}")
def tokens(s):
    c = color_re.findall(s)
    ph = re.findall(r"%%|%d|%s|%.2f|\*level|&%s&", s)
    lf = s.count("<LF>")
    bs_r = s.count("\\r")   # literal backslash r
    return c, ph, lf, bs_r

problems = []
for i in src_order:
    s, e = src[i], eng[i]
    if not e:
        problems.append((i, "EMPTY"))
        continue
    if "\n" in e or "\r" in e:
        problems.append((i, "REAL NEWLINE/CR"))
    cs, ps, ls, rs = tokens(s)
    ce, pe, le, re_ = tokens(e)
    if sorted(cs) != sorted(ce):
        problems.append((i, "COLOR %s -> %s" % (cs, ce)))
    if sorted(ps) != sorted(pe):
        problems.append((i, "PLACEHOLDER %s -> %s" % (ps, pe)))
    if ls != le:
        problems.append((i, "LF %d -> %d" % (ls, le)))
    if rs != re_:
        problems.append((i, "\\r %d -> %d" % (rs, re_)))

print("records:", len(order))
print("problems:", len(problems))
for p in problems:
    print("  ", p)

if problems:
    raise SystemExit("NOT WRITING: %d problems" % len(problems))

import os
out_dir = ".work/tr3/out"
os.makedirs(out_dir, exist_ok=True)
out_path = os.path.join(out_dir, "batch_000.jsonl")
tmp_path = out_path + ".tmp"
with open(tmp_path, "w", encoding="utf-8", newline="\n") as f:
    for i in order:
        f.write(json.dumps({"id": i, "english": eng[i]}, ensure_ascii=False) + "\n")
os.replace(tmp_path, out_path)
print("written:", out_path, "records:", len(order))
