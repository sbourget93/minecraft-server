DrZhark's Mo' Creatures Mod Version 6.3.1
copyright 2010 - 2014 DrZhark, Bloodshot

http://www.minecraftforum.net/viewtopic.php?f=25&t=86929
compatible with minecraft 1.7.10

This mod adds the following custom creatures to Minecraft:
-Lions (plus female lions)
-Bear
-Polar Bear
-Wolf
-Duck
-Boar
-Bunny
-Wraith
-Flame Wraith
-Ogres
-Fire Ogres
-Cave Ogres
-Light Horse
-Brown Horse
-Black Horse
-Unicorn
-Pegasus
-Pack Horse
-Nightmare
-Black Pegasus
-Birds
-Werewolves
-Foxes
-Sharks
-Dolphins
-Fish
-Tigers
-Cheetahs
-Panthers
-Snow Leopards
-Deers
-Kitties
-Mice
-Rats
-Hell Rats
-Scorpions
-Turtles
-Crocodiles
-MantaRays
-StingRays
-JellyFish
-Goats
-Snakes
-Ostriches
-Mob Horses
-Turkeys
-Crickets
-Bees
-Flies
-Dragonflies
-Fireflies
-Snails
-Butterflies
-Golems
-Elephants
-Komodo Dragons
-Wyverns
-Ants
-Raccoons
-Mini Golems
-Silver Skeletons
-Small Fish
-Medium Fish


It also adds the following recipes 


-Horse Saddles:
where L = leather, I = iron ingots
LLL
LIL
I I


-Hay Stack
where H = hay
HHH
HHH


-Sugar Lump
Where S = sugar
SS
SS


-Whip
where C = BigCatClaw, L = leather and I = iron
CLC
L L
C I


-Medallion
where L = leather, G = gold and D = diamond
L L
GDG
 G


-Medallion (alternative)
where L = leather, G = gold
L L
 G
 

-Rope
Where S = silk
S S
 S
S S


-Kitty Bed:
P = wood plank
I = iron ingot
W = Wool (you can use dyed wool as well, it will give you beds of different colors)

P P P
P W P
I


-Litter Box:
P = wood plank
S = sand

P P P
P S P
P P P


-Wool Ball:
S= string

  S  
s   s
  s


-Pet Food:
any combination of Raw Pork + Raw fish

-FishBowls:
G= glass

G G
G G
GGG

-Essence of Undead:
R = rotten flesh
H = Heart of undead
B = Bottle

_R_
_H_
_B_


-Essence of Darkness:
E = Ender Pearl
H = Heart of Darkness
B = Bottle

_E_
_H_
_B_


-Essence of Fire:
E = Fire
H = Heart of Fire
B = Bottle

_E_
_H_
_B_

-Essence of Light: any combination of the essences of darkness, undead and fire

-Fur armor: usual armor recipes, made out of fur

-Key:
S: stick
I: iron ingot

  S
 S
I


-Turtle soup:
Turtle meat + empty bowl

-Iron Horse Armor:
X = Ingot iron
Y = Black wool

  X
XYX
XXX

-Gold Horse Armor:
X = Ingot gold
Y = Red wool

  X
XYX
XXX

-Diamond Horse Armor:
X = diamond
Y = Blue wool

  X
XYX
XXX

-Crystal Horse Armor:
D = diamond
G = Glass block

  D
GDG
DGD


-Shark sword
T = Shark teeth
S = Stick

TST
TST
 S

-Amulet of Bone:
B = Bone
G = gold nugget
E = Ender Pearl

BGB
GEG
BGB

-Amulet of Pegasus
F = Fire
G = gold nugget
D = Diamond

FGF
GDG
FGF

-Amulet of Fairy
F = Fire
U = Unicorn
D = Diamond

FGF
GUG
FGF

-Amulet of Ghost
B = Bone
G = gold nugget
T = Ghast tear

BGB
GTG
BGB


To install: 
please install Forge, GUIApi and CustomMobSpawner FIRST!!!! and then:

1. Make a backup of your minecraft.jar file
2. locate your .minecraft folder
3. copy the MoCreatures.zip file inside your \.minecraft\mods folder
4. ---
5. Play - profit
6. Beware of the Ogre! (you've been warned)
7. punch the sharks in the nose!
8. If a crocodile looks asleep, don't poke it.
9. Have you seen the dancing Zebra?

ChangeLog:
5.1.0a - DEV version
-added roaches
-added new ogre models, pending animation and AI
-added builder hammer, the hammer places blocks far away, the blocks are taken from the player's belt inventory
-added staff of teleport

5.0.8
-wyverns 'stay' when using a whip near them, or by right clicking on them while holding a whip
-fixed bug despawning tamed Scorpions
-the spawner doesn't check anymore for the doMobSpawning gamerule

changes to the ownership code:
-added Scroll of Reset Owner that can be used by OPs on servers. The Scroll will 'clear' the owner of the creature.  The tamed counter on that owner will be reduced by 1
the creature will have no owner until is renamed.
-added setting to enable/disable said scroll through the config file
-OPs have their separate taming limit.  Added such option to the config file
-amulets now store the owner of the horse
-horses stored in amulets that are spawned by a player different than the owner, will become property of the player spawning them, 
and the previous owner will have his tamed counter reduced accordingly. 
This is done to allow trade of amulets without losing a taming spot on servers enforcing ownership.

5.0.7
-fixed bug causing despawning of tamed creatures on servers when unloading chunks
-ghost horses are now named when they spawn
-fixed nightmare missing texture when animate textures is set to off
-undead horses will show stages of decay even with animate textures set to off
-tamed ostriches no longer retaliate if attacked by player
-hunter animals won't attack anything bigger than themselves
-tamed kitty and bigcats will drop medallions on death
-fixed bug that prevented changing flag colors on ostriches
-fixed bug when 'shearing' elephants.

5.0.6
fixed bug that added entities with a frequency of 0 to spawn lists, causing random crashes
fixed bug that prevented change of max - min settings through the GUI API
scorpions and horsemobs now spawn in nether by default
changes made to decrease lag caused by horses
reduced frequency of scorpion drops
game crashing bug when using staff in a bukkit server fixed on f639-279 snapshot
mounts drop their gear and inventories if a shear is used on them
fixed duplicated mount on server disconnect bug. However code that was used to avoid despawn bug on chunk unload was deactivated, it appears the bug was fixed in Minecraft 1.5, but needs to be tested

5.0.5
fixed bug causing crash when turning customspawner off
yellow and purple fairy horses now drop a full amulet when trapped
fixed cyan fairy horse texture typo
fixed typo on fx undead particles
fixed max ambient GUI setting, reduced default maxAmbient to 30
fixed bug causing massive FPS drops in the wyvern lair 
wyvern portal staffs that have no saved coordinates (cheated or crafted at the wyvern lair) will teleport the player close to the spawn point instead of 0,0,0
if no empty space around the spawn point is found, the staff won't work.
despawn and spawn code will only run on dimensions that have a player 
jellyfish and rays won't poison players riding a boat
piranhas will no longer cause damage to a player that riding another entity
sharks will no longer cause damage to a player on a boat
turtle soup restores hunger

5.0.4
-using SRG Forge obfuscation
-chicken eggs are no longer called 'spoiled egg'
-improved despawning of Wyverns on wyvern lair to increase FPS / performance
-kitty beds no longer consume pet food if the food is already there
-newborn foals obtained by breeding will trigger naming on the owner of the mother horse.
-activated red fairy horse 
-white pegasi now carry bags
-elephants, komodos, wyverns and horses drop armor, inventory contents and bags on dead
-cave spiders and witches default spawning setting changed
-staffs of wyvern lair are no longer damaged if they are used outside the portal
-set harvest levels for Wyvern Lair blocks
-Wyvern tall grass is no longer shearable
-to reduce overhead and game freezing, the despawnVanilla check will only work for the overworld. Increased default despawn check interval to 199
-decreased default spawn frequencies of vanilla mobs
-vanilla animals won't despawn if they're within 8 blocks of a fence (down from 10)

5.0.3
-fixed game crashing bug when feeding horses
-wyverns no longer take the whole statch of saddles when saddled
-wyverns are no longer attacked by the rider's sword
-removed unnecesary console debug messages, some debug messages are activated with the debugLogging option
-reduced customspawner processing cost
-added despawn tick setting to menu so the frequency of despawn checks can be adjusted
-if modify vanilla spawns is not selected, the vanilla spawn rates and biome assignment will be left untouched
(you will  need to restart minecraft for the default settings to be used)
-elephants no longer spawn on deserts, and instead spawn on arctic biomes
-kitty beds and litter box can be picked up and thrown, render height fixed as well (please test SMP)
-fixed texture error with kitty beds
-sugar lumps now behave as a food item
-mounts receive damage from mobs
-mounts now dive with the shift key and are dismounted with the configurable dismount key (default 'F')
-increased health of wyverns

5.0.1
fixed dependency issue that prevented servers from running MoCreatures
fixed game crashing bug when naming a pet
fixed ambient creature spawn settings
added missing sounds

5.0.0
-code rewrite and organization, to comply with forge tendencies
-splitted sprites to make it compatible with Minecraft 1.5
-fixed bug causing despawns of tamed custom mobs
-Amulets now store name, health, armor, saddle status of Horses
-Ogres and Golems will now respect the mobGriefing game rule
-all fairy horses can now go into amulets
-added alternative fairy amulet recipe that replaces unicorn for a vial of light
-overhauled the spawning code, now you can design and assign group of biomes and spwaning frequencies to the entities, 
including vanilla mobs and mobs added by other mods.
-changed the block used to prevent despawning of vanilla mobs. instead of light sources, vanilla mobs within 10 blocks of fences won't despawn.

-added Wyverns:
Wyverns are poisonous drakes, they can be found on the WyvernLair.
Wyvern eggs can be obtained by slaying wyverns (but only on the wyvern lair). A wyvern has a 10% chance of dropping an egg.
The egg can be hatched in the overworld by placing it near a torch and once the wyvern grows, it can be saddled and armored.

The wyvern lair can only be accessed by using a Wyvern Portal Staff. The staff has only four uses before it's destroyed.
The staff can be activated on any dimension, and it will teleport the player to the center of the wyvern lair dimension. 
To return back, the staff has to be activated on the quartz portal of the wyvern lair.

two new files are created inside /.minecraft/config they can be edited with any .txt editor.
MoCBiomeGroups.cfg => the biome groups are defined here
MoCProperties.cfg => all the other settings are here. 
Biome groups defined on MoCBiomeGroups.cfg can be used in MoCProperties.cfg to define on which biomes do the creatures spawn. 
(including vanilla and other custom mobs besides mo creatures).

These files are used for both client and servers. All of the settings can be changed through the in-game menu 
except for biome groups and biome group assignation.
As MoCreatures now adds blocks, the block IDs can also be edited through the MoCProperties.cfg or the GUI.  
However there are three blocks that can't have an ID higher than 255: blockDirt, blockGrass and blockStone, 
as they're used for the custom dimensions generation.

4.5.1
-Made elephants grow slower
-Adjusted fall damage for elephants
-Elephants now retaliate when attacked
-reduced frequency of Elephant spawns in deserts
-renamed croc hide /armors as reptile hide / armors
-A player riding a Komodo dragon can now use tools
-turtles are again afraid of bigger entities
-komodo dragons no longer fight other komodo dragons
-removed 'custom spawner deactivated' message from console
-fixed light green horse texture error. 
-Added seven new Fairy horses
-snakes are healed with raw rat
-changed bunny textures and added a new spotted bunny

4.5.0
wild scorpions no longer attack other mobs
fixed server crashing bug with the ownership code
pet scorpions that are set free now drop the saddle, and can't be ridden
horses obtained from an amulet are set to the player using the amulet.
horse transformation animation is synchronized in multiplayer
foals and ghost horses now spawn tamed and are owned by their parent's owner
tamed birds won't be named every time they eat seeds.
bunnies shouldn't suffer damage when on top of a player's head
enders should spawn on the End biome
fixed bug that removed swords on pigmen and bows on skeletons


-Added Elephants and Mammoths
Elephants spawn on Deserts, Jungles, Plains and Forests.
Mammoths spawn on cold biomes.
Elephants drop Hide
A calf elephant can be tamed by giving it 10 Sugar lumps or 5 cakes
Tamed elephants are healed with baked potatoes, bread or haystacks
Indian Elephants can be given a special luxurious garment. 
In addition to the garment, a nice throne can then be given to the Elephant.
Two chest sets can be put on each elephant, allowing it to carry inventory
A key is used to open the inventory.
Mammoths can also carry two extra regular chests.
Three different kinds of tusk reinforcements can be crafted: wood, iron and diamond. 
They can be given to tamed adult elephants and mammoths, and taken off with a pickaxe. 
While wearing them reinforcement and ridden by the player, they will break blocks. 
(However that feature is disabled by default in multiplayer, to prevent griefing)
Mammoths are more effective at breaking blocks than elephants.
A harness can be put on tamed adult elephants. 
If a player 'sneaks' near their elephant, it will sit for a short time, where it can be mounted
To dismount an elephant, the rider has to make it sit first and then it can be dismounted.
A platform can be put on the Songhua Mammoth, allowing them to carry a second player. 
To have a passenger, first the rider makes the mammoth sit, then the second player 'sneaks' while close to the mammoth.
The second player can dismount the mammoth by pressing the sneak key.

-Added Komodo Dragons
Komodo dragons spawn on swamps and plains.  They attack small animals or players.
Komodo dragons poison their prey. 
They drop reptile hide and the bigger Komodo Dragons have a 25% chance of dropping eggs.
An egg can be hatched if placed near a torch and the resulting baby Komodo Dragon will be tamed.
You can heal your tamed Komodo dragon by giving it raw rat or raw turkey.
A saddle can be put on a Tamed adult Komodo dragon so it can be ridden.

-Ostrich overhaul:
hatched ostriches won't follow the player
Ostriches now can carry helmets that will reduce the damage received
A chest can be given to an ostrich and they can carry a small inventory
cloth colored cubes can be given to saddled ostriches to make them carry colored flags
Nether ostriches now are obtained by giving any tamed ostrich an essence of fire
Nether ostriches will fly in a way inspired by the game 'Joust'. (It's tricky but fun!) 
added three new types of ostriches:
-Unihorned ostrich that is obtained by giving any tamed ostrich an essence of light. 
They buckle animals in a similar way than with the unicorns
Unihorned ostriches can drop a unicorn
-Black wyvern ostriches are obtained by giving a tamed ostrich an essence of darkness
they can fly if the jump button is used on a timely fashion. They propel themselves forward once flying. 
They're tricky but fun to control in the air.
-Undead ostriches are obtained by giving any tamed ostrich an essence of undead.

-Jellyfish overhaul:
Changed models and textures for the jellyfish
jellyfish glow in the dark

4.4.0
-horses will make noises less frequently
-nether ostriches now lay nether ostrich eggs
-pets can be healed: bunnies with carrots, birds with seeds and scorpions with raw or cooked rats.
-nether ostriches are now immune to fire
-foxes can be tamed with raw turkey and healed with raw rat
-turkeys can be tamed with melon seeds and healed with pumpkin seeds
-turkeys now drop feathers or raw turkey
-hide can be transformed into leather
-fur can be transformed into white wool
-tamed scorpions can be used as mounts if given a saddle
-rope can be used on tamed birds, bunnies, foxes and turkeys
-giving an essence of undead to an scorpion, transforms it into an undead scorpion
-you can obtain an scorpion egg by giving an essence of darkness to a tamed scorpion 
-ostrich head bobbling reduced
-roped animals will follow the player more closely
-boars will now drop either hide or raw pork
-tamed creatures can be set free by giving them a Scroll of Freedom
-A Scroll of freedom can be crafted with Paper, feather and redstone.
-Golems spawn less frequently

Only for SMP:
-added creature ownership:
-when a creature is tamed, it remembers who the owner is.
-tamed creatures now only interact with its owner. Tamed creatures won't be harmed by other players besides the owner
-Creatures without owner will acquire the first player that renames them as the owner
-added a configurable limit to the number of tamed creatures per player.  The server will keep track of how many creatures a player owns.
-A owned creature can be traded to another player, by right clicking on the creature while holding a Scroll of Sale.  The creature will be owned by the next player that renames it.
-A Scroll of sale can be crafted with Paper and a feather


4.3.1
-fixed bug with fishy eggs not hatching
-you can now name your tamed birds, bunnies and snakes by using an amulet or book.
-You can now name your tamed scorpions by using an amulet
-you can use a rope on tamed scorpions so they will follow you
-adjusted spawning code for multiplayer
-added the option to deactivate customspawner for compatibility with 
Adjustments to the golems:
Added explosion FX. Golems will acquire rocks slightly faster and have more health. The Golems will also use snow as a body building block.
Golems will only spawn on the surface.  They will remain inactive unless a player gets close to them (8 blocks).  Only 2 Golems will spawn per chunk.


4.3.0
-Improved spawn code. Added the option to select the 'spawn frequency' through the in-game menu or the config file for the servers.
a frequency of 1 means that every second the game will be checking and spawning entities to keep the limit set.  The drawback of selecting a low number is that it will require more resources from the computer. Some PCs won't be able to handle it well and framerates will suffer.  In previous versions of MoCreatures, the spawner frequency was set to '200' but that clearly wasn't enough.  A number around 20 - 50 seems like a sweet spot.  
-fixed horse appearing sound
-Ducks now drop feathers
-crickets now have the right animation 
-fixed bug that allowed all horses to carry bags
-fixed butterfly flying animation bug

Added Golems:
-Golems spawn at night, and initially consists of only three blocks: the Head, the Core and a valuable ore cube. When the Golem is near a player, it activates and forms its body.
-Golems have a powerful melee attack, they also have a ranged attack, where the Golem throws one of the blocks of its arms. 
-When a Golem is attacked, there is a chance to destroy one of its blocks. The chance of destroying a block depends on the difficulty level. If the chest is open and the core of the golem is exposed, it will suffer damage.
-As the Golem suffers damage, it becomes more dangerous. A hint of the danger level of the golem is the color of its power aura. Blue is seen in a Golem that is not attacking. Yellow on a Golem that has started attack, Orange on the Golem that has suffered considerable damage. Red is seen on a Golem about to explode.
-The Golem will constantly try to acquire replacement blocks. Every time a block is acquired, the Golem is healed (the amount of the healing depends also on the difficulty level)
-It may be wise to look for shelter when the Golem power aura is red, as there is not too much time before the golem explodes.
When a Golem dies, it drops all of the blocks that were part of its body (including the valuable ore cube).

4.2.3
-fixed ocelot overpopulation bug
-nether scorpions and flame wraiths won't burn the player in the nether

4.2.2
-fixed game crashing bug happening rarely when breaking horses and dolphins
-fixed game crashing bug related to horses and jukeboxes
-fixed game crashing bug when breaking horses in water or lava
-jellyfish and rays will no longer poison players out of water
-flies no longer make creepers and skeletons attack them.
-increased health given by raw and cooked turkey to match that of the beef
-fixed snake head rotation
-fixed bug causing slimes to be spawned more than usual
-fixed spawn bug issue where vanilla creatures set to 0 will still spawn
-added spawn settings for Bats and MagmaCubes
-increased duration of swords to that of iron


4.2.1
fixed bug with the mcmod.info file causing a non fatal error on servers
fixed bug with cloning horses and other tamed animals. (to be tested)
picked baby scorpions won't despawn or attack the player
fixed names of scorpion swords
fixed game crashing bug with health synchronization
decreased number of insects spawning in a chunk from 12 to 6
fixed bug with the insect wings not animating correctly

v4.2.0
-Compatible with MC 1.4.5
-Changed Scorpion models, textures and animations. The scorpions will try to hide away from sunligth.  
The black scorpion only spawns on underground caves. 
Frost scorpions spawn on cold biomes. 
-Scorpions drop either sting or chitin. The sting is a short lived weapon with special properties, causing poison, slow, confusion or fire on the targets
the stings can be used to forge swords that will last longer and hit stronger.  
With the scorpion chitins, armor can be forged. A full set of armor confers a special ability. The cave Scorpion armor set allows night vision.
The nether armor set gives fire resistance. The frost armor set enables water breathing. The regular scorpion armor gives mild regeneration.
-added a new fairy horse, obtained by giving the white fairy horse a light green dye
-added snow foxes that spawn on cold biomes
-increased amount of healing obtained from cooked turkey
-ridden creatures now jump using the regular jump key
-ridden creatures now dive using the MoCreatures Dive key. You can now dive underwater and dive while ridding a flying Horse

-fixed horse texture bug, framerates will improve when looking at horses, and the blank horse texture bug is fixed
-bears won't remain sitting for so long
-fixed inventory for horses
-fixed movement on horses
-fixed movement on dolphins
-fixed spawning turtle bug (they used to spawn everywhere)
-fixed bug where mounted entities could get out of sync on servers
-fixed whip
-fixed pet mounting (birds, bunnies, snakes, turtles, kitties)
-fixed mice grabbing bug
-fixed double jump when riding creatures

v4.1.3
-Removed spawn difficulty settings in the config file for the dedicated server. 
To deactive one mob, just set the frequency to 0.
-fixed mob spawning in dedicated server
-boars now use the pig sounds
-changed hide armor icons
-fixed spawns in the Nether, improved Mob Spawns at night.
-fixed animated textures and particle Fx for the Horse Mobs
-added turkey sounds
-added insect sounds
-bees now attack if provoked
-ducks now flap their wings
-fixed animation bug with wolves mouth
-changed werewolf model and textures, added different kinds of werewolves
-fixed movement bug on wild bathorses
-flies follow players holding rotten flesh on their hands
-butterflies and bees will sometimes follow players holding flowers
-bunnies follow players holding carrots
-panda bears will follow players holding reeds. Pandas won't longer stand.
-changed rat item drop

4.1.2
fixed health bars, added synchronization between server and client health values
fixed game crashing bugs with Horse special FX
fixed bug that prevented tamed ostriches from being saddled (only works with new ostriches)
fixed invisible armors 
fixed compatibility with extrabiomesXL 3.3 (not tested)
fixed bigCats sizes, health, attack and attackrange features
increased number of MoCreatures spawned, now the worlds will be more populated (requires CustomSpawner 1.7.1)
hunters won't spawn near other light sources beside torches like jack'o'lantern, glowstone, redstone lamps
vanilla animals won't despawn if near those light sources as well
Ostriches no longer spawn near light sources
Tamed undead horses 'decay' way slower
You can now reset your undead horses to their full flesh zombie condition by giving them a vial of light.

4.1.1
fixed game crashing bug with undead horse animations
zebra records work again!
zebras are again shuffling under the right conditions
fixed bug where ostriches would instantly die after being given an apple
fixed kitty attack animation
fixed snake attack animation
fixed scorpion tail swing and arm snap animations

4.1.0
Updated to Minecraft 1.4.2
Insects no longer destroy crops
Added support for standalone Server
added config file for server
fixed erratic naming and taming behavior of creatures on server
Added option to deactivate animated textures 
Changed colors of Creative SpawnEggs
Fixed bug out of sync - Crocs when trapping prey (untested)

4.0.4
pandas can now be tamed with reeds or sugarlumps
renamed key bind 'jumpBind' to 'MoCreatures Jump'
fixed game crashing bug when pressing the MoCreatures jump key while on a menu.  
fixed legs and tails animation of mounts and insects moving too fast
fixed ogre smashing animation
fixed ogre smashing fxs in clients
fixed difficulty setting spawning bug
fixed bug with bat horses wing animation
fixed naming bug.  Now the creatures can be named again.
fixed bug where Pandas will dissapear if given sugar cane



4.0.3
-fixed litterboxes and kittybeds placement
-used kitty litters and dropped bunnies do atract mobs (to be tested)
-fixed: pegasus had the wrong texture
-fixed: appear and vanishing animations on horses
-fixed: horses, ostriches and dolphins can now jump!
THE NEW JUMP KEY WHILE RIDING IS 'F'

4.0.2
fixed bug where insta-spawned acuatic creatures were minuscule
fixed crashing bug when mounting untamed horses or dolphins
?fixed bug that crashed the game if ExtrabiomesXL was installed (not tested)
Vanilla creatures can be despawned and spawned through MoCreatures


4.0.1
Updated to Minecraft 1.3.2
Added insects and turkeys

3.7.1
Fixed bug that caused incompatibility with ExtraBiomes
Fixed server crashing bug
Fixed color shifting horse bug


3.7.0
Added support for Extrabiomes XL 
Added Shark sword
Added Ostrich meat, turtle meat 
Added Turtle easter egg !
Increased speed of the snakes
Added fur armor
Changed hell rat texture
Added a new rare breed of ostrich
Added animal inventory key

Fixed texture bugs for SMP
Decreased the ostrich egg laying and spawning of new ostrich chicks
Added amulets and essences

Added aggresive mob horses

complete overhaul of the Horses. from 8 to 35 different breeds. 
Warning, updating the mod to this version will make your pegasus and other rare breeds to morph into less rare horses.

Aggressive Mob horses will spawn at night: undead, skeleton and bathorses. bathorses are usually found in underground caves and rarely on the surface
Nightmare mob horses are found in the Nether.  The mob horses have the chance of dropping a rare heart that can be used to obtain the essences needed for the rare breeds.

New Horse Breeding rules:
(refer to the chart for the possible combinations)
-two identical horses will have the same offspring even if they're rare
-zebras plus any regular horse will have a zorse
-donkeys plus any regular horse will have a mule
-zebra plus donkey will have a zonky
-rare horses plus regular horse: will always return regular horse
-different mixes of rare horses will always produce regular horses, with the exception of unicorns and pegasus, that will have a white fairy horse
-in the rest of cases: the offspring will be one of the parents (50% chance) or a new mixture (50% chance) according to the breeding chart. If you however select the easy breeding option, you will 100% of the times obtain the mixture breed instead of any of the parents' breed.
-undead, ghost and skeleton horses are sterile.

How to obtain the rare breeds:
The key is obtaining a Zorse and using the rare essences:
-zebra: while riding a cow, spotted horse or zebra you can approach zebras to tame them, otherwise they will flee from you.
-undead horse: give an essence of undead to any horse. Three kind of undead horses can be obtained: regular, unicorn and flying undead.
-skeleon horse: the undead horses will eventually turn to skeleton horses over time.
-nightmare: give an essence of fire to a zorse 
-bat horse: give an essence of darkness to a zorse
-unicorn: give an essence of light to a nightmare
-pegasus: give an essence of light to a bat horse while on the cloud level
-dark pegasus: give an essence of darkness to a white pegasus
-white fairy: mate a white pegasus with an unicorn (they require essence of light as aphrodisiac)
-blue fairy: give a light blue dye to a white fairy
-pink fairy: give a pink dye to a white fairy
-ghost horses: randomly appear after tier 3-4 or rare horses perish


3.6.2
ostriches won't lay eggs if there are already more than 10 eggs in the world
tamed ostriches will lay eggs that hatch tamed chicks
eggs will despawn if they age
fixed mount crashing bug in SMP
fixed bug that prevented BigCat cubs from being tamed
fixed bug with insta spawner
added more vanilla creatures to the jungle biomes to avoid ocelot overpopulation
changed fishbowl recipe to avoid conflicts with other mods

3.6.1
changed fishbowl texture to make it look better (Thanks to Kent C Jensen)
Bug fixes:
-giant baby scorpions
-tamed fish despawning
-hunters spawning near torches
-horses not following ropes
-tamed ostriches attacking the player holding wheat
-chunk error when loading a game with old tamed Mo'Creatures in it


3.6.0
-Requires Forge to run. The installation has changed, now you need to install Modloader, GUI Api, CustomMobSpawner and Forge, and copy the MoCreatures.zip inside.\minecraft\mods folder
-Doesn't require audiomod anymore, it will install the sound files automatically.  Thanks to Cojomax99 for this.
-Added SMP support. AtomicStryker is the guy to thank for it. There has been many changes in the code, with the potential to introduce new bugs. They will be fixed as soon as possible.
-snakes are slightly faster
-I've liberated all the sprites in use, thanks to Forge. Kudos to Freakstritch for his help with the process.
-fixed ocelot spawning bug
-fixed bug with bigcats attacking unrelentlessly
-increased bird's health and disabled inWall damage for tamed MoCreatures, to decrease loss of tamed pets.
-added slimes, ghasts, ocelots to the modifiable list of vanilla spawns.
-Added FishBowls.  Fishbowls can be used to capture, transport and release fish. You can craft a fishbowl with four pieces of glass. an empty fishbowl can be filled with water
a fishbowl with water can be used to capture fish. The fishbowl can be placed in the world and carried around in your head. If you want to bring a fishbowl back to your inventory, just
right click on it while holding any pike. 
-Added Ostriches
Ostriches spawn in plains and desert biomes. You can find male, females and chicks.  The males will fight back if attacked. 
The females and chicks will run away and hide their heads in the ground if attacked.
Beware of the normally passive female ostriches, they'll fight you if you steal one of its eggs.
Wild ostriches can't be tamed, but if you happen to 'acquire' an ostrich egg and hatch it, the chick will be tamed and will follow you around.
You can give your tamed ostrich chick a name. The name can be changed by interacting with the ostrich while holding a medallion or book.
Once the chick becomes adult, it will swap its feathers to reflect its gender.  You can command your tamed ostriches by using a whip.
If you give an adult tamed ostrich a saddle, you can ride it.  while riding, if you crack your whip on the ground, the ostrich will sprint for a short period of time.
Male ostriches are fast and the rare albino ostriches even faster.



3.5.0
-fixed bird feet thanks to Xotano
-vanilla creatures no longer despawn if they're close to a torch (within 12 blocks) 
-baby scorpions don't despawn 
-piranhas no longer attack on peaceful
-rehauled eggs. A single item will be used for all eggs (fish, sharks and snakes). The tooltip describes the kind of egg
-fish will drop eggs that will spawn lil'fish of the same color. fish spawned that way are tamed.
-aquatic mobs no longer make step sounds
-Added insta-spawner that can be accessed through the game menu
-Added Snakes
There are eight different kinds of snakes including a couple of shy snakes that will run away from the player and venomous snakes like corals, cobras, rattle snakes. 
There are also aggressive pythons.  Different kind of snakes spawn based on the biomes. Rattlesnakes only spawn on deserts.
Snakes mind their own business, if you get too close they will alert and hiss, giving you time to run away. If you don't they will attack you.
A player carrying a bird or mice will attrack the nearby snakes. They hunt down small creatures
You can obtain snake eggs. A snake egg that is dropped near a torch will hatch and the baby snake will be tamed and can be picked up. tamed snakes won't attack the player.



v3.4.0
-updated to Minecraft 1.2.4

v3.3.0
-updated to Minecraft 1.2.3

v3.2.2
-second attempt to fix game crashing bug

V3.2.0
-goats are no longer tamed by food they find, you have to give them food by right clicking on them so they become tame
-scorpions and hunter creatures (lions, bears, boars, foxes) no longer spawn within 8 blocks of torches
-goat size changed so they fit through doors
-new option added to the Spawn settings, to activate spawning of creatures on all the biomes. Useful for old save games pre Beta 1.8, since there is a Minecraft bug that mixes up the biome names on those savegames.
-changed a couple of sprites (thanks to resuke)

V3.1.0
-Fixed bug with sharks not moving or attacking
-Wraiths and flamewraiths are now slightly translucent
-tamed turtles grow slower
-added missing scorpion sounds
-fixed bug with bowl duplication when feeding horses
-fixed bug where feeding turtles wouldn't consume items

-Added MantaRays
Mantarays are peaceful creatures, they won't bother you at all.

-Added Stingrays
Stingrays will try to hide at the bottom of the water, they can be found in waters of most biomes except the Ocean and snow biomes. If you get too close, you have the chance of being poisoned by the stingray. Just avoid stepping on them!

-Added JellyFish. 
JellyFish will spawn on most waters. They are translucent and propel with pulsating movements. They are also luminescent at night. You can get poisoned if you get too close. JellyFish drop slimeballs. Just watch the water, you don't want to get poisoned!

-Added Goats
Goats are really easy to tame, just drop any edible(food) item nearby. Once tamed, you can name them. you can also change the name by right clicking on the goat while holding a medallion
Tamed and wild goats will follow you if you are carrying any edible items in your hand.
You can use a rope on tamed goat to make them follow you
You can milk female goats. Female goats don't have a goatie and have shorter horns
Don't try to milk a male goat
Male goats will fight back if provoked. They will also fight between themselves. They won't fight to death and will calm down after a short while.
Goats are quite omnivorous. They will eat ANY item or floating blocks that are nearby. Even diamonds. If you die next to a goat it will have a feast with your dropped items. You have been warned :)

Version 3.0.2
-AI for aquatic creatures was rewritten. They will now move constantly, won't get stuck in the bottom of the water, are less likely to get stuck on shores and will dive randomly. Dolphins can dive while being ridden

Version 3.0.1
-Fixed bug where creatures wouldn't spawn on old worlds
-Fixed dolphin spawning bug
-Fixed bug with fish egg cloning
-?Fixed bug with kitty health bars
-Fixed bug where aquatic creatures would jump out of water

Version 3.0.0
-fixed bug with baby scorpions changing size when climbing surfaces
-fixed bug that prevented sharks and fishy to drop items
-kitties are less aggresive

Version 2.14.2
-The mod is now dependent on CustomMobSpawner, to fix the broken spawn issues. 
It no longer modifies the spawn rates of the vanilla mobs, however they will still despawn.
-fixed bug with turtle hissing sound
-fixed croc jaw snap sound bug
-fixed game crashing bug
-fixed bug with horse name dissapearing after riding it
-adjusted spawn rates and biomes for entities
-added the option to tame baby scorpions. You can easily tame them just by picking them. Once tamed they won't despawn, and will attack other Mobs.


version 2.14.1
-added option to heal BigCats by giving them rawfish or rawpork
-changes done in the creatures spawning settings are activated immediately 
(Thanks to Corosus for the pointer)
-fixed bug that prevented renaming kitties
-fixed bug where horses will jump extremely high
-fixed bug where horses and BigCats will have their health reset every time the game loads
-fixed bug with horses health bar always being red
-fixed bug that caused random game crashes
-fixed bug with cave ogres not moving and fire ogres not setting thing on fire.

Version 2.14
-Added Scorpions, Crocodiles, and Turtles
-Turtles will hide from any other creature bigger than them. 
Turtles are resistant to most attacks unless they have flop
If you right click on a turtle, you will flip it. It takes some time for the poor little guy to flop
You can tame turtles by dropping watermelon slices or reek near them. 
Tamed turtles will grow slowly, you can carry them on your head! 
Tamed turtles will try to follow the player
-Scorpions are nasty creatures that attack at night or if provoked. When scorpions attack, there is a chance of being poisoned
-Crocodiles will roam around near beaches, sometimes they will remain static. 
Don't be fooled by a 'sleeping' crocodile, they have a burst of speed at the beggining of the attack
Whatever non small creature that gets near them will be attacked
The crocodiles will try to carry their prey to the water, were they'll perform a death roll. 
If a crocodile has caught you, you can try to get free by attacking the crocodile. Not all the hits will land.
-Optimized code, getting rid off old unused code. There may be some new bugs arising from this

Version 2.13.2
-Fixed Bug with BigCats, dolphins, Werewolves and kitties not finding targets
-Added option to use MC 1.7 spawning code. It is active by default. If you want to use the new MC 1.8 spawning code,
go to Global Mod Settings -> Spawn Limits -> and set Pre-spawn biomes to 'Yes'
However activating this option will cause erratic spawning of creatures, the same way as version 2.13.1 works.

Unfortunately to do this fix, I had to change two of the original minecraft files: aq.class and qk.class 

version 2.13.1
-fixed bug with kitties crashing the game when giving birth
-fixed bug with bears and wild wolves snouts
-fine tuned spawn settings for mobs
-fixed bug with horses / fall damage

version 2.13
updated to MC 1.8.1

Version 2.12.2
-added missing woolball.png file

Version 2.12.1
-fixed bucket duplicating bug while pouring milk on kitty beds
-you can now make kitty beds and litter boxes static by changing a setting in the in-game menu
-mice now spawn on surfaces different than grass
-fixed bug with kitty names not being displayed
-fixed bug with hunters attacking kitty beds
-changed name tag height in the big cats to improve its visibility


Version 2.12
-removed insta-bunny killer while holding a sword
-horse saddles are now stackable
-lil' fish are no longer cannibal
-added option to change the awareness range of the ogres
-you can change the name of tamed dolphins, sharks, kitties, BigCats and horses by using a medallion or a book
-created new submenu in the GUI settings where you can turn on/off the display of name tags, health bars and emoticons
-another improvement on horse riding: now you can use tools, place blocks and pickup items while riding a horse. You can also shoot arrows and use weapons. You can now only dismount a horse by using the sneak key (shift).  Very handy to construct while riding a pegasus!
-Horses will suffer damage from mobs when they have the player as a rider.
-Added Mice: They will run away from everything. You can pick up a mouse by its tail. Mice drop seeds.
-Added Rats: They will attack the player at night or in dark areas, if you attack one rat, all the nearby rats will attack you. They drop coal. Rats can climb walls when chasing the player
-Added Hell Rats: Hell rats are bigger and stronger, they only spawn in the Nether, due to their color, it is not easy to spot them in the Nether. They drop redstone.
-(finally) Added Kitties


Version 2.11.1
-compatible with Minecraft 1.7_03

Version 2.11
-Compatible with Minecraft 1.7_02
-horses will now toggle movement on/off when user right clicks on them while wearing a whip
-Horses can now be roped and towed. You can tow as many horses as you want. You can even tow a horse while flying on a pegasus
-bunnies will become tamed again after lifting them. They will start breeding again. Beware of bunny overpopulation!
-Decreased size of adult deer
-The bags of the packhorse and black pegasi won't be displayed until you give a chest to the horse
-fixed bug with white tiger not showing medallion
-fixed bug with birds not riding minecarts
-fixed bug with horses growing bigger than normal if fed repeatedly
-horses are no longer attacked by Wolves
-horses are also tamed instantly if given a golden apple
-Horses now also accept cake as a breeding food
-Horses won't be attacked by wolves if the player suffers from fall damage.
-Tamed Horses, BigCats, Dolphins and Sharks can now be given a name. To set or change a name, right click on the animal while holding a medallion.  To toggle individual name displays on/off, right click on the animal while holding any pickaxe.


ChangeLog:
Version 2.10.3
-Fixed spawn rates
-Fixed horses moving when ridden
-Added alternative crafting recipe for medallion
-Increased durability of whip from 16 to 24
-You can now kill the bunny pests by right clicking on any bunny while holding any sword


Version 2.10.2
-Fixed bug with squids not despawning
-It will overwrite the Squids.class file until Mojang implements the bugfix
-Nightmares will no longer burn the player when their special ability is activated
-added a new crafting recipe: Whips
-added a new crafting recipe: medallions
-Fixed bug with promiscuous bunnies. The Great bunny Castration has begun.  You can insta-kill all the bunnies in your world by using a whip on a post sign. It will display the body count.
-Fixed bug with global spawn rates
-To tame a BigCat, you will have to throw pork or fish near a small cub and then put a medallion on it
-Tamed BigCats will no longer fight between themselves
-Tamed BigCats will not destroy drops
-Added sitting stance for BigCats
-Added a way to identify tamed cats with the medallion.
-Added sounds to deers and different sounds for BigCat cubs.
-Added whip to control BigCats and Horses:
-Horses and BigCats will stay put when a whip is used near them (whitin 12 blocks).  Also If you right click on a tamed Horse or BigCat, you can toggle them between moving and staying.

Version 2.10
-fixed bug with snouts being off 1 pixel when rotating head in bigcats, bears and wild wolves.
-fixed wrong sound when lifting a tamed bird
-fixed bug with dolphins and sharks fighting even when the settings were changed in the menu.
-added several new big cats: tigers, cheetahs, snow leopards, panthers. 
-hunters won't attack wolves by default. You can change that setting using the in-game menu.
-Heavy modifications to the BigCat's AI.
-Female lions and Tigers will always attack the player if within range. Male lions, panthers and cheetahs will some times attack the player.
-Wild Cubs will seldomly spawn. If you throw raw pork or raw fish near a small cub, you will tame it and it won't despawn or attack you. Once it grows to adult size, it will fight mobs. Cubs will attack any other animal smaller than themselves. Bigger (almost adult) cubs won't be tamed.
-BigCats will attack only when hungry. They will also eat raw pork or raw fish when hungry.  Once they eat or kill a prey, they'll stop being hungry for a while.
-BigCats of different breeds will fight amongst them.  Bring on the catfight! 
-BigCats will drop BigCat Claws when killed. There is no use for that item yet.

Version 2.9.4
-rewrote horse/dolphin riding code
-fixed bug with fish despawning
-fixed bug with fisheggs/sharkeggs not spawning
-sharkteeth now have a function (for you to find)
-you can pick up tamed birds that can help you glide
-bunnies now have different furs 

Version 2.9.3
-Second attempt to fix the spinning bug
-cave ogres no longer spawn outdoors

version 2.9.2
-fixed horse/dolphin spinning bug
-horses no longer eat stones :)
-reduced default frequency of boars and wild wolves
-fixed fish despawning bug?

Version 2.9.1
-fixed bug with wolf.png file overwritting the original

version 2.9
-Updated to Minecraft 1.5_01
-Adds 10 different small fish, including aggressive piranhas
-Changed spawn control, now the mod uses a 'Frequency' where 0 = spawn deactivated, 1 = very rare spawn and 10 = very common spawn.  You can modify the frequency of each individual mob through the in-game menu
-HorseSaddles can be crafted from a dungeon saddle plus iron (bug fixed)
-fixed bug with sharks dropping stone instead of shark teeth
-Changed ogres' textures. I have included the old ones in case someone still wants to use them.
-this mod no longer requires spawnlist

Version 2.8.1
-fixed bugs: Wraiths with big heads, sharks dropping stone, birds spawning bug, Shark eggs becoming leather, menu text cropped and albino dolphin spawning.

Version 2.8
-Adds dolphins
-fixed bug with hunters attacking horses even after selecting otherwise in the menu settings
-fixed bug with hostile mobs spawning one dificulty level below selected
-fixed deathhorse and deathWerewolf bugs
-improved spawning code, it now uses way less resources (thanks to _303 and Mr_okushama)
-fixed typo in the cave ogre menu
-new recipe: now you can craft a horse saddle from a dungeon saddle + one iron ingot

Regarding the Dolphins:
There are six different kind of dolphins (from common to rare): blue, green, purple, dark, pink and albino. The last two kinds are seen only rarely in the wild. 
Taming dolphins:
You can tame dolphins by feeding them raw fish. the rarer the dolphin, the more raw fish it requires to be tamed. A blue dolphin requires 2 raw fish and an albino dolphin requires 12 raw fish. You can also tame dolphins by riding/breaking them. Rarer dolphins are noticeable faster than common ones. 
Breeding dolphins:
Tamed adult dolphins can breed by feeding them cooked fish and keeping them apart from other creatures in a similar fashion than the horse breeding. Young dolphin can not breed or be tamed/ridden. 
Two dolphins of the same color will always have offspring of such color. Dolphins have a 'genetic value' from 1-6. (blue = 1 and albino = 6)  if you mix and match dolphins you have 1/3 chance of obtaining a purple or dark dolphin if the genetic value addition of the parents is 3 or 4, and you have a 1/10 chance of obtaining a pink or albino dolphin if the genetic value addition equals 5 or 6. i.e. A pink dolphin(5) can be obtained in 1/10 of cases by combining a blue(1) plus a dark(4) dolphin or a green (2) plus a purple (3) dolphin.  



Version 2.7
-Improved hunter's item destruction code, now the hunters only destroy newly spawned items not dropped by humans
-simplifyied despawning code, inspired by Kodaichizero
-I have decided to modify the squids so you can now limit their spawn numbers
-Now this mod uses the GUI Api, you can change the settings by using the in-game menu: /Options../Mods Settings...
-Activating/deactivating mobs and changing the spawn limits require you to restart minecraft for those changes to take place

-With the new customizable settings, you can:
*activate/deactivate individual mobs 
*select the difficulty where wraiths/werewolves and ogres spawn
*limit the number of a specific mob spawning in the world (i.e. only spawn 4 lions)
*change the spawn rate of Pegasus from 1% (default) up to 10%
*select easy breeding options for the horses, if this option is turned on the horses won't become sterile and the rarer breeds will happen every single time with the right combinations
*change the destructive power of the ogres
*choose if the horses are attacked by hunters or not
*choose if the prey animals drop items or not

Version 2.6.2
-Fixed bug with tamed sharks not moving properly
-Added code optimization to decrease lag thanks to Corosus and _303
-Increased health of sharks
-Hunters now destroy the items dropped by its prey (to reduce free items and lag). They won't destroy the players' items
-reduced attacking behavior of hunters
-Sharks won't attack sharkEggs
-reduced spawn cap from 50 to 40 (original is 15)

Version 2.6.1
-sharks now also attack squids
-changed despawning code for tamed sharks
-added missing 'Sharks' to the MoCreatures.properties file in the TFC version
-tamed sharks won't attack you (inspired by Despicable Me)
-increased spawn of aquatic creatures to 35 from 30
-moved location of custom icons from /mocreatures to /mob to make installation easier

Version 2.6
-Added Sharks
-increased spawning limit of creatures to 50 (from 16) and seacreatures to 30 (from 5)
-fixed bug with haystacks giving 9 hay instead of 6
-the horse saddle item ID has been changed to increase compatibility with minecolony

Version 2.5.4
-changed Haystack to make it compatible with Roundaround hay block
-Added a second download, compatible with TFCs Mod Manager

Version 2.5.3
-Baby horses look smaller. They slowly grow over time. You can't tame or saddle a baby horse. They won't despawn if they're bred.
-There is a 1/5 chance of finding baby horses in the wild (they can despawn)
-Changed Horse Saddle icon to a brighter color and slightly different icon, also added a 'Horse Saddle' tooltip
-Added a new craftable item: Haystack. made by combining 9 pieces of Hay. It could be given to horses to make them stay in a single spot. To resume the horse normal wandering behavior, ride it for a short while.
The Haystack idea was taken from GKANG and farmcraft
-Added Sugar Lumps, an stackable food crafted from 4 pieces of sugar. It heals you and also helps you tame your horse. It's effectivity is between Hay and Bread to help you tame your horse.
-Tamed birds will eat seeds again
-And bugfixes:
-Fixed bug with Lions and Bears not attacking livestock
-Fixed bug with Flame Wraiths drops
-Fixed bug with Ogre block destruction
-Fixed bug with Wraiths surviving daylight

Version 2.5.2
-Bunnies are ready! (please test and report if you find any bugs)
-Wraiths are also ready
-fixed bug with ogres not destroying blocks
-fixed bug with werewolves doing damage at a distance
-fixed bug with nightmares' special ability
-fixed game crashing bug when killing pack horses 
-reduced spawn rate of foxes, lions, bears
-increased spawn rate of horses (from groups of 4 to 6)

Version 2.5.1
-Fixed wing flipping bug in birds and pegasi
-Fixed bug that prevented horse riding
-Fixed bug with werewolfes attacking themselves
-removed 'annoying' werewolfes/human sounds
-updated to latest version of foxes (1.5)

Version 2.5
-Werewolves now spawn only on Normal or higher difficulty. spawn rate also decreased. (You now can put the game on easy and get the gold sword before fighting them)
-Fire ogres are dropping fire again (so you can get that chain armor if you dare)
-Decreased loudness of foxes
-Foxes now drop leather so if you want to instantly tame a horse, you're out of luck :)
-Fixed bug with foxes spawning rate
-Wraiths and Bunnies are not included in the Mod yet (I'm still working on updating them to the latest version)


Version 2.4
-Added property file, from now onwards, the mod is released as a single package and you can edit the 'MoCreatures.properties' file to add/remove creatures at will
(thanks to czrozi)
the mocreatures.properties file should be copied to the /.minecraft/ folder (where you also find the lastlogin and options.txt files)
By default, the file contains the following:

Horse
Ogre
FireOgre
CaveOgre
Boar
Bear
Duck
LionK
Wolf
PolarBear
Wraith
FlameWraith
Bunny
Bird
Fox
Werewolf

If you want to deactivate mobs, simply open and edit the mocreatures.properties file by changing the name of the mob i.e.:

No FireOgre
FireOgre-
#FireOgre
*FireOgre
fireogre

Any of those changes will deactivate the Fire Ogres.  If you leave an empty line, the mod won't load any of the mobs after that empty line.
The name of the file 'MoCreatures.properties' is case sensitive as well as the name of the mobs. i.e. 'horse' is not the same as 'Horse'.  changing the name to 'horse' will deactivate that mob.

If you don't copy the MoCreatures.properties file to the right place, all the mobs will be loaded by default.


Version 2.3.1
-Added Werewolves missing files (.png and .ogg) to the package

Version 2.3
-Added Foxes!
-Werewolves added to the full version of the mod
-Once tamed, birds won't eat seeds (they still will be attracted to seeds)
-Some performance tweaking on the birds (decreases CPU load)
-other minor tweaks to the birds' AI
-Fixed bug with wraiths surviving daylight
-Fixed bug with wraiths not causing damage
-added tooltip to the Horse Saddle
-fixed typo in one of the horse sound files (thanks to CrimsonCrow for the heads up)
-Fire Ogres now drops bloodstone
-Cave Ogres no longer spawn on dark areas of the surface

ChangeLog version 2.2
-Added Werewolves

ChangeLog version 2.1.1
-fixed sppining bug when mounting horses
-horses will no longer eat eggs
-You can now offer bowlsoup to the horses in addition to Pumpkins for reproduction
-you can now use the torch to open the horses inventory
-fixed the 'undead horse glitch'
-? fixed the horse chunk eating glitch
-Changed the bird's wings (thanks to KodaichiZero)
-Artificially Increased spawn rate of birds
-Made birds tamable: they won't despawn after eating seeds, and they won't be scared by the player after tamed

ChangeLog version 2.1
-Added Birds

changes in version 2.01
-updated for Minecraft Beta 1.1_02
-added bunnies
-Fixed bug: FlameWraiths and FireOgres are now fire resistant (this was a bug introduced while porting the mod to beta)
-removed sound bug when pegasus and black pegasus landed
-removed damage done to horse by rider
-you can also open the horse inventory if you're holding a torch.
-only one horse will become sterile after breeding (before, both would become sterile)
-sterile horses won't accept pumpkins or eggs.


Changes in version 1.6.6
-Added Bunny (courtesy of KodaichiZero)
-Added a breeding system for Horses and 3 new horses: PackHorse, Nightmare and BlackPegasus
-Changed the handling/riding code for mounts
-Horses get healed when fed
-Giving an apple to a horse will tame it automatically
-Added eating sounds to the horses so you know it is eating the food
-Added inventory to two horses: Pack Horse and BlackPegasus

Quick guide on how to breed horses:
Rules for breeding:
-The horses to breed should be kept close (no more than 4 blocks away)
-There should be no other horses around (8 blocks)
-Sterile horses won't bred
-You have to feed them both to start the process (suitable foods are eggs or pumpkins)
-you can not be too close (4 blocks) or they won't breed
-it takes time (about 1/2 minecraft day)
-the results of the breed depends on the genetic 'value' of the horses:
light horses = 1
brown horses = 2
dark horses = 3
unicorns = 4
pegasus = 5
packhorse = 6
nightmare = 7
black pegasus = 8

Depending on the sum of both parents' genetic value you have a chance of getting a rare breed:
-sum equal 7 = chance of getting a packhorse
-sum equals 9 = chance of getting a nightmare
-sum equals 10 = chance of getting a pegasus
-sum equals 12 = chance of getting a black pegasus
-two packhorses won't give birth to a black pegasus
-if the sum is none of the above, you will get a random horse with genetic value 1-5

Quick Guide on How to use the Horses' Inventory:
-You first need to give a chest to the horse. (hold a chest in your hand and right click on the horse). Only Pack horses and Black pegasus will accept chests
-To open the inventory, hold a torch or a shovel in your hand and right click on the horse

Changes in version 1.6.5
-Increased attack range of lioness
-Lioness is more aggressive than the Lion
-Fire Ogres and Flame Wraiths will only spawn in Hard difficulty. Both will also spawn in Hell
-Decreased pyromany of Fire Ogres. They still burn whole forests, tho.
-Added Boars: attack only prey smaller than them (including bunnies!). Boars will also attack you if you get really close.

-Added Horses including Unicorns and Pegasus
-For every horse you find, there is a 3% chance of finding a Unicorn and only a 1% chance of finding a Pegasus... so good luck!
-Added craftable Horse Saddles.  You will require a horse saddle to ride your horse. The normal saddles that you find randomly in dungeons only work for pigs. 

-Quick guide on how to tame horses: The faster/rarer the horse, the harder to tame. This is what they require to be as docile as possible before you mount them. Even after making them happy, you will have to break/ride them until they accept you.  To make them docile you will need to give:
- Light horses (1 bread or 4 wheat)
- Brown Horses (2 bread or 8 wheat)
- Black horses (3 bread or 12 wheat)
- Unicorns (4 bread or 16 wheat)
- Pegasus (5 bread or 20 wheat)

-Increased Health of Horses
-Made spawns for unicorns and pegasus rarer
-Decreased damage of Unicorns after jumping


Changes in version 1.6.3
-split mod in groups to mix and match
-added female lions
-Male lions will not attack female lions
-female lions are less aggresive towards player
-added ducks (using dorino1 quack sounds plus painterly pack's duck texture)


Changes in version 1.6.2
-Using 303's spawnlist, the mod no longer modifies the gg.class
-Green ogres don't burn on sunlight, they become docile unless attacked.
-Fire ogres now spawn on Normal difficulty
-Tweaked blast radius for ogres, depending on difficulty level, in hard the blast radius is bigger
-Changed drops for Fire Ogres and Cyclops to the intended drops
-Minor tweaks to the hunters behavior
-Ogres no longer destroy ores or mobspawners

changes in version 1.6.1
-Ogres area of destruction reduced

Changes in version 1.6
-Lions, Bears and Wolves wont hunt in peaceful difficulty
-decreased hunting range from 16 to 8
-decreased 'hunger' of hunters to 1/10
-added Ogres (normal, fire and cave): spawn on Normal or harder difficulty, destroy blocks, can smell players 24blocks apart, will destroy blocks in their path to their target
-Ogres won't destroy obsidian


Changes in version 1.5:
-Major changes to A.I:
-Lions will now attack other animals, including other lions and bears
-Bears won't attack lions, but they will attack any other animals
-Wolves will attack pigs, chickens and sheep, in addition to players during night
-reduced Bear spawn rate to 1/3

Changes in version 1.4:
-made it compatible with Minecraft 1.2.5
-reduced the attack range of the lion in Hard difficulty from 16 to 6, and in Normal difficulty from 6 to 4
-decreased Lion spawn rate to 1/3
-reduced wraith spawn rate to 1/2

CREDITS:
-Kent C Jensen (BlockDaddy) for his amazing Ogres and fish textures. And for his incredible help with ostriches and fish bowls. He is the main force behind the horse overhaul and did all of the textures and art, as well as many of the ideas for the new horses. He has also been helping with the remodelling and retexturing. Most models and textures on this mod have been done by Kent.
-blood for his unvaluable help with updating to 1.8.1 and Mo'Creatures SMP, and maintaning the SMP code on MoCreatures 4.2.0
-ScottKillen for his help with the Extrabiomes XL
-AtomicStryker for the SMP port for Minecraft 1.2.5
-Cojomax for his help with adding the sounds without audiomod
-Freakstricth for his help with the Forge sprites.
-Resuke for his sprites
-Vaprtek, for his awesome Horse Model.
-Dorino1 quack sounds plus painterly pack's duck texture.
-Macaque for his boar textures.
-KodaichiZero for his Bunnies!
-Rondaround: fox idea, AI, sounds and texture
-_303 and Risugami for their help with ModLoader and AudioMod
-Corosus for pointing some optimization changes in the code
-charle88 for shark's model inspiration
-cdrumer11 for his help with the pink and white dolphin skins


