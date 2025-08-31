# Garrys-Mod-Anti-Cheat

A Simple Anti Cheat

This Anti Cheat is how I like to deal with people and prevent them doing things or bypassing ingame functions with external programs or exploits.

This will be entirely server sided so in the autorun/server folder (You can't trust a client for anything.)

It is still in development but I will list below what methods are finished and what I am still working on.

For a decent Anti wallhack method just put into your servers launch command line "+sv_pure 1"

If you are having issues with players bypassing bans i did a script for that too : https://github.com/C0nw0nk/Garrys-Mod-Family-Sharing

# Installation :

Install the script to the `"\garrysmod\addons\garrysmod-anti-cheat\"` folder.

The path to should look like this : `"\garrysmod\addons\garrysmod-anti-cheat\lua\autorun\server\anti-bhop.lua"`

# Finished Features :

Anti-Bhop (Bunny Hopping.)

https://github.com/C0nw0nk/Garrys-Mod-Anti-Cheat/blob/master/garrysmod/lua/autorun/server/anti-bhop.lua


Anti-CVAR-Manipulation (Prevent players changing console variables allowing them to inject their cheats.)

https://github.com/C0nw0nk/Garrys-Mod-Anti-Cheat/blob/master/garrysmod/lua/autorun/server/anti-cvar-manipulation.lua


Anti-SpeedHacking (Prevent players going beyond their max velocity.)

https://github.com/C0nw0nk/Garrys-Mod-Anti-Cheat/blob/master/garrysmod/lua/autorun/server/anti-speedhack.lua


Anti-Recoil (Forces players to look up or down when shooting if their weapon has a recoil method attached.)

https://github.com/C0nw0nk/Garrys-Mod-Anti-Cheat/blob/master/garrysmod/lua/autorun/server/anti-recoil.lua

Anti-Ladder Exploit. (Prevent players abusing HL2 ladders by grabbing onto it and killing themselves at the same time causing them to respawn on the ladder.)

https://github.com/C0nw0nk/Garrys-Mod-Anti-Cheat/blob/master/garrysmod/lua/autorun/server/anti-ladder-glitch.lua


# Under development :

https://github.com/C0nw0nk/Garrys-Mod-Anti-Cheat/blob/master/garrysmod/lua/autorun/server/send-lua-and-net-send.lua

If you choose to allow players to run "sv_allowcslua 1" then we need to prevent them exploiting or having unfair advantages over other players.

Ontop of using SendLua also use net.Send to get information from the client.
