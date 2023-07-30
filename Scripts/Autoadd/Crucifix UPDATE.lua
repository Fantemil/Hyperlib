--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.2.6) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v11,v12)local v13={};for v14=1, #v11 do v6(v13,v0(v4(v1(v2(v11,v14,v14 + 1 )),v1(v2(v12,1 + ((v14-1)% #v12) ,1 + ((v14-1)% #v12) + 1 )))%256 ));end return v5(v13);end _G.Uses=1;_G.Range=516 -(23 + 463) ;loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))();local v8=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))();local v9=loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))();local v10=LoadCustomInstance("");v9.CreateItem(v10,{[v7("\71\92\102\223\94","\19\53\18\179\59\155\183")]=v7("\251\103\22\194\126\85\116\192","\184\21\99\161\23\51\29"),[v7("\8\167\146\221","\76\194\225\190\20\173")]=v7("\105\131\30\170\85\46\26\159\3\168\21\107\88\134\31\174\82\56\26\135\31\190\77\107\91\158\4\172\90\32\73","\58\234\112\205\57\75"),[v7("\38\245\167\213\10","\111\152\198\178")]="rbxassetid://7818923311",[v7("\130\255\68\61\126","\210\141\45\94\27\39")]=1265 -(361 + 704) ,[v7("\223\25\161\5\63","\140\109\192\102\84\172\74\112")]=734 -(232 + 501) });