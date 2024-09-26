--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.7) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19={};for v26=1, #v17 do v6(v19,v0(v4(v1(v2(v17,v26,v26 + 1 )),v1(v2(v18,1 + (v26% #v18) ,1 + (v26% #v18) + 1 )))%256 ));end return v5(v19);end local v8=game:GetService(v7("\227\198\203\41\239\184\198\10\212\199\232\49\233\169\198\25\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\19\193\43\220\249\49\222","\156\67\173\74\165"));local v10=v9.LocalPlayer;local v11=v10.Character;local v12=v11.Launcher.Stats;local v13=v11.Launcher.Assets.Rocket.Boom;local v14=game:GetService(v7("\1\164\76\4\149\40\86\33\163\122\19\174\48\79\55\178","\38\84\215\41\118\220\70"));local function v15(v20) local v21=0;local v22;while true do if (0==v21) then v22={[1]=1722445568.8607621 -(32 + 85) ,[2]=v12,[3 + 0 ]=v20,[1 + 3 ]=v13};v8:WaitForChild(v7("\98\19\47\29\234\85\5","\158\48\118\66\114")):WaitForChild(v7("\174\60\0\58\124\161\254\153\43\19\61\118\177","\155\203\68\112\86\19\197")):FireServer(unpack(v22));break;end end end local function v16() local v23=957 -(892 + 65) ;local v24;while true do if (v23==(0 -0)) then v24=v10:GetMouse();v24.Button1Down:Connect(function() local v27=0 -0 ;local v28;while true do if (v27==(0 -0)) then v28=v24.Hit.p;v15(v28);break;end end end);break;end end end v14.InputBegan:Connect(function(v25) if (v25.UserInputType==Enum.UserInputType.MouseButton1) then v16();end end);