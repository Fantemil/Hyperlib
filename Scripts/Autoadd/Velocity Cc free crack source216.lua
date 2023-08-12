local v0 = 14077344476 - 823609003;
if (game.PlaceId ~= v0) then
	local v168 = 0;
	while true do
		if (v168 == 0) then
			warn(("This script is intended for use in game with place ID %d, but the current game has place ID %d."):format(v0, game.PlaceId));
			return;
		end
	end
end
repeat
	task.wait();
until game:IsLoaded() 
local v1 = game:GetService("Workspace").Camera;
local v1 = game:GetService("Workspace").CurrentCamera;
local v2 = game:GetService("Workspace").Ignore.LocalCharacter.Middle;
local v3 = 2;
local v4 = os.clock();
if not LPH_OBFUSCATED then
	local v169 = 0;
	while true do
		if (0 == v169) then
			function LPH_JIT(...)
				return ...;
			end
			function LPH_JIT_MAX(...)
				return ...;
			end
			v169 = 210 - (111 + 98);
		end
		if (1 == v169) then
			function LPH_JIT_ULTRA(...)
				return ...;
			end
			function LPH_NO_VIRTUALIZE(...)
				return ...;
			end
			v169 = 1525 - (1098 + 425);
		end
		if (v169 == (6 - 2)) then
			function LPH_CRASH()
				return print(debug.traceback());
			end
			break;
		end
		if (v169 == (6 - 3)) then
			function LPH_STRENC(...)
				return ...;
			end
			function LPH_HOOK_FIX(...)
				return ...;
			end
			v169 = 1417 - (447 + 966);
		end
		if (v169 == (5 - 3)) then
			function LPH_NO_UPVALUES(v248)
				return (function(...)
					return v248(...);
				end);
			end
			function LPH_ENCSTR(...)
				return ...;
			end
			v169 = 3;
		end
	end
end
local v5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/BigHacker123/Library.lua/main/Library.lua"))();
local v6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua"))();
local v7 = loadstring(game:HttpGet("https://raw.githubusercontent.com/BigHacker123/Library.lua/main/Theme.lua"))();
local v8 = "free";
local v9 = "#00FF00";
local v10 = "v1.1b";
if (v8 == "free") then
	local v170 = 0;
	while true do
		if (0 == v170) then
			v9 = "#00FF00";
			v10 = "v1.1b";
			break;
		end
	end
end
local v11 = v5:CreateWindow({Size=UDim2.fromOffset(550, 610),Title=('velocity.<font color=\"#d17bff\">cc</font> | ' .. '<font color=\"' .. v9 .. '\">' .. v8 .. "</font>" .. "                                         [" .. v10 .. "]"),Center=true,AutoShow=true});
local v12 = {MainTab=v11:AddTab("main"),UISettings=v11:AddTab("settings")};
local v13 = v12.MainTab:AddRightTabbox("head hitbox");
local v14 = v13:AddTab("head hitbox");
local v15;
v15 = hookmetamethod(game, "__index", LPH_NO_VIRTUALIZE(function(...)
	local v84 = 1817 - (1703 + 114);
	local v85;
	local v86;
	while true do
		if (v84 == (702 - (376 + 325))) then
			return v15(...);
		end
		if (v84 == (0 - 0)) then
			v85, v86 = ...;
			if (not checkcaller() and (v86 == "Size") and (v85.Name == "Head")) then
				return 1.672248125076294, 0.835624098777771 - 0, 0.835624098777771 + 0;
			end
			v84 = 2 - 1;
		end
	end
end));
local v16 = 17 - (9 + 5);
local v17 = 3;
local v18 = 379 - (85 + 291);
local v19 = 1265.5 - (243 + 1022);
v14:AddToggle("EnabledHB", {Text="enabled",Default=false,Tooltip=nil});
Toggles.EnabledHB:OnChanged(function(v87)
	if (v87 == true) then
		local v203 = 0 - 0;
		while true do
			if (v203 == (0 + 0)) then
				for v251, v252 in pairs(workspace:GetChildren()) do
					if v252:FindFirstChild("HumanoidRootPart") then
						local v258 = 1180 - (1123 + 57);
						while true do
							if (v258 == (0 + 0)) then
								v252.Head.Size = Vector3.new(v16, v17, v18);
								v252.Head.Transparency = v19;
								break;
							end
						end
					end
				end
				game.ReplicatedStorage.Player.Head.Size = Vector3.new(v16, v17, v18);
				break;
			end
		end
	elseif (v87 == false) then
		local v227 = 254 - (163 + 91);
		while true do
			if (v227 == (1930 - (1869 + 61))) then
				for v259, v260 in pairs(workspace:GetChildren()) do
					if v260:FindFirstChild("HumanoidRootPart") then
						v260.Head.Size = Vector3.new(1.672248125076294 + 0, 0.835624098777771 - 0, 0.835624098777771 - 0);
						v260.Head.Transparency = 0 + 0;
					end
				end
				game.ReplicatedStorage.Player.Head.Size = Vector3.new(1.672248125076294 - 0, 0.835624098777771 + 0, 1474.8356240987778 - (1329 + 145));
				break;
			end
		end
	end
end);
v14:AddSlider("HitboxT_Slider", {Text="transparency",Default=(971.5 - (140 + 831)),Min=(1850 - (1409 + 441)),Max=(719 - (15 + 703)),Rounding=2,Suffix="%",Compact=true}):OnChanged(function(v88)
	v19 = v88;
end);
v14:AddSlider("HitboxXSize_Slider", {Text="x-yize:",Default=(2 + 1),Min=0,Max=6,Rounding=(440 - (262 + 176)),Suffix="%",Compact=false}):OnChanged(function(v89)
	v16 = v89;
end);
v14:AddSlider("HitboxYSize_Slider", {Text="y-size:",Default=(1724 - (345 + 1376)),Min=0,Max=(694 - (198 + 490)),Rounding=2,Suffix="%",Compact=false}):OnChanged(function(v90)
	v17 = v90;
end);
v14:AddSlider("HitboxZSize_Slider", {Text="z-size:",Default=(13 - 10),Min=0,Max=(14 - 8),Rounding=2,Suffix="%",Compact=false}):OnChanged(function(v91)
	v18 = v91;
end);
local v20 = {};
local v21 = {Texts={}};
local v22 = {Settings={Boxes=false,BoxesOutline=false,BoxesFilled=false,BoxesFilledColor=Color3.fromRGB(1461 - (696 + 510), 255, 534 - 279),BoxesFilledTransparency=0.25,BoxesColor=Color3.fromRGB(1517 - (1091 + 171), 42 + 213, 255),OtherBoxesColor=Color3.fromRGB(255, 802 - 547, 255),OtherBoxesColorTeam=Color3.fromRGB(0, 255, 0 - 0),BoxesOutlineColor=Color3.fromRGB(374 - (123 + 251), 0 - 0, 698 - (208 + 490)),Distances=false,DistanceColor=Color3.fromRGB(22 + 233, 255, 255),OtherDistanceColor=Color3.fromRGB(255, 255, 114 + 141),OtherDistanceColorTeam=Color3.fromRGB(0, 255, 836 - (660 + 176)),HighlightTarget=false,HighlightTargetColor=Color3.fromRGB(255, 0 + 0, 0),TextFont=(204 - (14 + 188)),TextOutline=true,TextSize=(687 - (534 + 141)),RenderDistance=(403 + 597),TeamCheck=false,TargetSleepers=true,MinTextSize=11},Drawings={},Connections={},Players={},Ores={},StorageThings={}};
local v23 = {UI=0,System=(1 + 0),Plex=2,Monospace=(3 + 0)};
local v24 = {};
v20.Draw = function(v92, v93, v94)
	if (not v93 and not v94) then
		return;
	end
	local v95 = Drawing.new(v93);
	for v171, v172 in pairs(v94) do
		v95[v171] = v172;
	end
	table.insert(v22.Drawings, v95);
	return v95;
end;
v22.CreateEsp = function(v96, v97)
	local v98 = 0 - 0;
	local v99;
	while true do
		if (v98 == (2 - 0)) then
			v99.PlayerTable = v97;
			v22.Players[v97.model] = v99;
			break;
		end
		if (v98 == (0 - 0)) then
			if not v97 then
				return;
			end
			v99 = {};
			v98 = 1 + 0;
		end
		if (v98 == 1) then
			v99.Sleeping = v20:Draw("Text", {Text="Nil",Font=v22.Settings.TextFont,Size=v22.Settings.TextSize,Center=true,Outline=v22.Settings.TextOutline,Color=v22.Settings.SleepingColor,Color=v22.Settings.OtherSleepingColor,Color=v22.Settings.OtherSleepingColorTeam,ZIndex=(2 + 0),Visible=false});
			v99.Distance = v20:Draw("Text", {Text="[nil]",Font=v22.Settings.TextFont,Size=v22.Settings.TextSize,Center=true,Outline=v22.Settings.TextOutline,Color=v22.Settings.DistanceColor,Color=v22.Settings.OtherDistanceColor,Color=v22.Settings.OtherDistanceColorTeam,ZIndex=(398 - (115 + 281)),Visible=false});
			v98 = 4 - 2;
		end
	end
end;
v22.RemoveEsp = function(v100, v101)
	local v102 = 0;
	while true do
		if (0 == v102) then
			if (not v101 and (v101.model ~= nil)) then
				return;
			end
			esp = v22.Players[v101.model];
			v102 = 1;
		end
		if (v102 == (1 + 0)) then
			if not esp then
				return;
			end
			for v228, v229 in pairs(esp) do
				if (not type(v229) == "table") then
					v229:Remove();
				end
			end
			v102 = 4 - 2;
		end
		if ((7 - 5) == v102) then
			v22.Players[v101.model] = nil;
			break;
		end
	end
end;
v22.UpdateEsp = function(v103)
	for v174, v175 in pairs(v22.Players) do
		local v176 = 867 - (550 + 317);
		local v177;
		local v178;
		local v179;
		local v180;
		local v181;
		local v182;
		local v183;
		local v184;
		local v185;
		local v186;
		local v187;
		local v188;
		while true do
			if (v176 == 2) then
				v183, v184 = math.floor(v178.X), math.floor(v178.Y);
				v185 = (v2:GetPivot().Position - v177:GetPivot().Position).Magnitude;
				v176 = 3;
			end
			if (v176 == (3 - 0)) then
				v186, v187 = math.floor(v183 - (v181 * 0.5)), math.floor(v184 - (v182 * 0.5));
				v188 = CFrame.new(0 - 0, 0, -4);
				v176 = 11 - 7;
			end
			if (v176 == (285 - (134 + 151))) then
				v177 = v174;
				v178, v179 = v1:WorldToViewportPoint(v177:GetPivot().Position);
				v176 = 1666 - (970 + 695);
			end
			if (v176 == (7 - 3)) then
				if (v177 and v177:FindFirstChild("HumanoidRootPart") and v177:FindFirstChild("Head") and (v177.Parent == game.Workspace)) then
					local v253 = 1990 - (582 + 1408);
					local v254;
					while true do
						if ((3 - 2) == v253) then
							if ((v179 == true) and (v22.Settings.Distances == true) and (v185 <= v22.Settings.RenderDistance)) then
								local v266 = 0 - 0;
								while true do
									if ((0 - 0) == v266) then
										if ((v22.Settings.TeamCheck == true) and (v254 == false)) then
											v175.Distance.Visible = true;
										elseif ((v22.Settings.TeamCheck == true) and (v254 == true)) then
											v175.Distance.Visible = false;
										else
											v175.Distance.Visible = true;
										end
										if ((v22.Settings.TargetSleepers == true) and (v175.PlayerTable.sleeping == true)) then
											v175.Distance.Visible = false;
										end
										v266 = 1825 - (1195 + 629);
									end
									if (v266 == (3 - 0)) then
										v175.Distance.Text = tostring("[" .. math.floor(v185)) .. "]";
										v175.Distance.Font = v22.Settings.TextFont;
										break;
									end
									if (v266 == (243 - (187 + 54))) then
										v175.Distance.Position = Vector2.new(v183, math.floor(v184 + (v182 * 0.5)));
										v175.Distance.Color = v22.Settings.DistanceColor;
										v266 = 783 - (162 + 618);
									end
									if (v266 == (1 + 0)) then
										v175.Distance.Outline = v22.Settings.TextOutline;
										v175.Distance.Size = math.max(math.min(math.abs(v22.Settings.TextSize * v180), v22.Settings.TextSize), v22.Settings.MinTextSize);
										v266 = 2 + 0;
									end
								end
							else
								v175.Distance.Visible = false;
							end
							break;
						end
						if (v253 == (0 - 0)) then
							v254 = v177.Head.Teamtag.Enabled;
							if ((v179 == true) and (v22.Settings.Sleeping == true) and (v185 <= v22.Settings.RenderDistance)) then
								if (v177.Head.Nametag.tag.Text ~= "") then
									v175.Sleeping.Text = v177:FindFirstChild("Head").Nametag.tag.Text;
								else
									local v279 = 0 - 0;
									while true do
										if (v279 == (0 + 0)) then
											v175.Sleeping.Text = "Enemy";
											if (v254 == true) then
												v175.Sleeping.Text = "Friendly";
											end
											v279 = 1;
										end
										if (v279 == (1637 - (1373 + 263))) then
											if (v175.PlayerTable.sleeping == true) then
												v175.Sleeping.Text = "Sleeping";
											end
											break;
										end
									end
								end
								if ((v22.Settings.TeamCheck == true) and (v254 == false)) then
									v175.Sleeping.Visible = true;
								elseif ((v22.Settings.TeamCheck == true) and (v254 == true)) then
									v175.Sleeping.Visible = false;
								else
									v175.Sleeping.Visible = true;
								end
								if ((v22.Settings.TargetSleepers == true) and (v175.PlayerTable.sleeping == true)) then
									v175.Sleeping.Visible = false;
								end
								v175.Sleeping.Outline = v22.Settings.TextOutline;
								v175.Sleeping.Color = v22.Settings.SleepingColor;
								v175.Sleeping.Size = math.max(math.min(math.abs(v22.Settings.TextSize * v180), v22.Settings.TextSize), v22.Settings.MinTextSize);
								v175.Sleeping.Color = v22.Settings.SleepingColor;
								v175.Sleeping.Font = v22.Settings.TextFont;
								v175.Sleeping.Position = Vector2.new(v183, math.floor((v184 - (v182 * 0.5)) - v175.Sleeping.TextBounds.Y));
							else
								v175.Sleeping.Visible = false;
							end
							v253 = 1;
						end
					end
				else
					v175.Distance.Visible = false;
					v175.Sleeping.Visible = false;
				end
				break;
			end
			if (v176 == (1001 - (451 + 549))) then
				v180 = ((1 + 0) / (v178.Z * math.tan(math.rad(v1.FieldOfView * (0.5 - 0))) * (2 - 0))) * (1484 - (746 + 638));
				v181, v182 = math.floor((16 + 24) * v180), math.floor((91 - 31) * v180);
				v176 = 343 - (218 + 123);
			end
		end
	end
end;
local v29 = game:GetService("RunService").RenderStepped;
local v30 = v29:Connect(function()
	v22:UpdateEsp();
end);
for v104, v105 in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
	if not table.find(v24, v105) then
		local v204 = 1581 - (1535 + 46);
		while true do
			if (v204 == (0 + 0)) then
				table.insert(v24, v105);
				v22:CreateEsp(v105);
				break;
			end
		end
	end
end
game:GetService("Workspace").ChildAdded:Connect(function(v106)
	if v106:FindFirstChild("HumanoidRootPart") then
		for v215, v216 in pairs(getupvalues(getrenv()._G.modules.Player.GetPlayerModel)[1]) do
			if not table.find(v24, v216) then
				local v250 = 0 + 0;
				while true do
					if ((560 - (306 + 254)) == v250) then
						table.insert(v24, v216);
						v22:CreateEsp(v216);
						break;
					end
				end
			end
		end
	end
end);
local v31 = v12.MainTab:AddLeftTabbox();
local v32 = v31:AddTab("player visuals");
local v33 = v31:AddTab("player settings");
v32:AddToggle("EnabledToggle", {Text="enabled",Default=false}):OnChanged(function()
end);
v32:AddSlider("RenderDistance", {Text="max distance:",Default=(62 + 938),Min=(0 - 0),Max=(3967 - (899 + 568)),Rounding=0,Compact=false,Suffix=" studs"}):OnChanged(function(v107)
	v22.Settings.RenderDistance = v107;
end);
local v34 = Drawing.new("Text");
v34.Visible = false;
v34.Text = "velocity.cc";
v34.Size = 12;
v34.Outline = true;
v34.Center = true;
v34.Font = 2;
v34.Color = Color3.new(137 + 71, 123, 255);
v34.Position = Vector2.new(v1.ViewportSize.X / (4 - 2), v1.ViewportSize.Y / (604.89 - (268 + 335)));
v32:AddToggle("12t2ta22", {Text="onscreen",Default=false,Tooltip="Onscreen Information"}):AddColorPicker("OnscreenColor", {Default=Color3.fromRGB(498 - (60 + 230), 695 - (426 + 146), 255),Title="Color"}):OnChanged(function(v109)
	v34.Visible = v109;
end);
Options.OnscreenColor:OnChanged(function(v111)
	v34.Color = v111;
end);
local v43, v44, v45 = true, 0, 0.008 + 0;
local function v46()
	local v113 = 1456 - (282 + 1174);
	while true do
		if (v113 == (812 - (569 + 242))) then
			if (v43 and (v44 >= 1)) then
				v43 = false;
			elseif (not v43 and (v44 <= (0 - 0))) then
				v43 = true;
			end
			break;
		end
		if (v113 == (0 + 0)) then
			v34.Transparency = v44;
			v44 = v44 + ((v43 and v45) or -v45);
			v113 = 1025 - (706 + 318);
		end
	end
end
game:GetService("RunService").Heartbeat:Connect(v46);
v32:AddToggle("Sleeping", {Text="names",Default=false}):AddColorPicker("SleepingColor", {Default=Color3.fromRGB(208, 1374 - (721 + 530), 255),Title="Color"});
Options.SleepingColor:OnChanged(function(v114)
	v22.Settings.SleepingColor = v114;
end);
Toggles.Sleeping:OnChanged(function(v116)
	v22.Settings.Sleeping = v116;
end);
v32:AddToggle("Distances", {Text="distance",Default=false}):AddColorPicker("DistancesColor", {Default=Color3.fromRGB(208, 123, 1526 - (945 + 326)),Title="Color"});
Toggles.Distances:OnChanged(function(v118)
	v22.Settings.Distances = v118;
end);
Options.DistancesColor:OnChanged(function(v120)
	v22.Settings.DistanceColor = v120;
end);
v33:AddToggle("TargetSleepers", {Text="sleeper check",Default=true}):OnChanged(function(v122)
	v22.Settings.TargetSleepers = v122;
end);
v33:AddToggle("TeamCheck", {Text="team check",Default=false}):OnChanged(function(v124)
	v22.Settings.TeamCheck = v124;
end);
v33:AddToggle("TextOutline", {Text="text outlines",Default=true}):OnChanged(function(v126)
	v22.Settings.TextOutline = v126;
end);
v33:AddSlider("TextSizeSlider", {Text="text size:",Default=(29 - 17),Min=1,Max=(23 + 2),Rounding=(700 - (271 + 429)),Suffix="px",Compact=false}):OnChanged(function(v128)
	local v129 = 0 + 0;
	while true do
		if (v129 == 0) then
			v22.Settings.TextSize = v128;
			v34.Size = v128;
			break;
		end
	end
end);
v33:AddDropdown("EspFont", {Values={"UI","System","Plex","Monospace"},Default=(1089 - (461 + 625)),Multi=false,Text="font:"}):OnChanged(function(v130)
	v22.Settings.TextFont = v23[v130];
end);
local v47 = v12.MainTab:AddLeftTabbox("crosshair");
local v48 = v47:AddTab("crosshair");
local v49 = Drawing.new("Circle"), Drawing.new("Circle");
v49.Position = Vector2.new(v1.ViewportSize.X / (1290 - (993 + 295)), v1.ViewportSize.Y / 2);
v49.Thickness = 1 + 0;
v49.ZIndex = 3;
do
	local v133 = 1171 - (418 + 753);
	while true do
		if (v133 == (1 + 0)) then
			v48:AddToggle("Crosshair_Filled1", {Text="filled",Default=false}):OnChanged(function()
				v49.Filled = Toggles.Crosshair_Filled1.Value;
			end);
			v48:AddSlider("Crosshair_Radius", {Text="size",Suffix="°",Default=(1 + 1),Min=0,Max=(30 + 70),Rounding=(0 + 0),Compact=true}):OnChanged(function(v233)
				v49.Radius = v233;
			end);
			break;
		end
		if ((529 - (406 + 123)) == v133) then
			v48:AddToggle("zCrosshairX_Toggle", {Text="enabled",Default=false}):AddColorPicker("eCrosshairX_Color", {Default=Color3.fromRGB(1977 - (1749 + 20), 30 + 93, 255)}):OnChanged(function()
				v49.Visible = Toggles.zCrosshairX_Toggle.Value;
			end);
			Options.eCrosshairX_Color:OnChanged(function()
				v49.Color = Options.eCrosshairX_Color.Value;
			end);
			v133 = 1;
		end
	end
end
local v53 = v12.MainTab:AddLeftTabbox("trash talk");
local v54 = v53:AddTab("trash talk");
local v55 = false;
local v56 = {["velocity.cc"]={"start winning with velocity.cc today","get good, get velocity.cc","if only you had velocity.cc smh","velocity.cc, the only way to win","ur kills would be better if u bought velocity.cc","velocity.cc owns you","start beaming get velocity.cc","beamed u kid u should of had velocity.cc","this is why u should buy velocity.cc","stop dying on the job go get velocity.cc"}};
local v57 = getrenv()._G.modules.Network;
local v58 = getrenv()._G.modules.Network.SendCodes;
game:GetService("LogService").MessageOut:Connect(function(v134)
	local v135 = v134:match("->([%w_]+)");
	local v136, v137 = v134:match("(%-?%d+%.?%d*)%D*->(%-?%d+%.?%d*)hp");
	local v138 = v134:match("(%d+%.?%d*)s");
	if (v55 and v135 and v136 and v137 and v138 and (v135 ~= game.Players.LocalPlayer.Name)) then
		if (v55 and (tonumber(v137) <= (0 + 0))) then
			v57.Send(v58.SEND_CHAT_MESSAGE, v135 .. " killed from " .. v138 .. "m, " .. v56["velocity.cc"][math.random(2 - 1, #v56["velocity.cc"])] .. " [.gg/velocitycc]", "Global");
		end
	end
end);
local v59 = false;
local v60 = "";
local v61 = 3;
local function v62()
	local v139 = {[1]=27,[2]=v60,[3]="Global"};
	while v59 do
		local v189 = 0 - 0;
		while true do
			if (v189 == 0) then
				game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(unpack(v139));
				wait(v61);
				break;
			end
		end
	end
end
v54:AddToggle("Enabled_Toggle1", {Text="enabled",Default=false}):OnChanged(function(v140)
	local v141 = 114 - (4 + 110);
	while true do
		if (v141 == 0) then
			v55 = v140;
			v59 = v140;
			break;
		end
	end
end);
v54:AddDropdown("", {Values={"None","Trash Talk","Chat Spammer"},Default=1,Multi=false,Text="type:"}):OnChanged(function(v142)
	if (v142 == "None") then
		local v205 = 0;
		while true do
			if (v205 == 0) then
				v55 = false;
				v59 = false;
				break;
			end
		end
	elseif (v142 == "Trash Talk") then
		v55 = true;
	elseif (v142 == "Chat Spammer") then
		v62();
	end
end);
v54:AddSlider("SpamChatSpeed", {Text="speed:",Suffix="s",Default=(1430 - (41 + 1386)),Min=(104 - (17 + 86)),Max=(7 + 3),Rounding=0,Compact=false}):OnChanged(function(v143)
	v61 = v143;
end);
v54:AddInput("ChatSpammer", {Default="If you cant beat them join them [.gg/velocitycc] on top!",Numeric=false,Finished=true,Text="chat spammer:",Placeholder="Chat Spam Custom Text [HERE]"}):OnChanged(function(v144)
	v60 = v144;
end);
local v63 = v12.MainTab:AddRightTabbox("hud");
local v64 = v63:AddTab("hud");
v64:AddToggle("AWASZnfh", {Text="remove server info",Default=false,Tooltip="Hides Server Info"}):OnChanged(function(v145)
	if (v145 == true) then
		game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Visible = false;
	elseif (v145 == false) then
		game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Visible = true;
	end
end);
v64:AddToggle("AWAaSZasanfh", {Text="remove server status",Default=false,Tooltip="Hides Server Status"}):OnChanged(function(v146)
	if (v146 == true) then
		game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerStatus.Visible = false;
	elseif (v146 == false) then
		game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerStatus.Visible = true;
	end
end);
v64:AddToggle("GnAf", {Text="hide chat",Default=false,Tooltip="Hides chat )"}):OnChanged(function(v147)
	if (v147 == true) then
		game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Chat.Position = UDim2.new(0 - 0, 0 - 0, 167 - (122 + 44), 0 - 0);
	elseif (v147 == false) then
		game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Chat.Position = UDim2.new(0 - 0, 0, 0 + 0, 0 + 0);
	end
end);
v64:AddLabel("custom inventory:"):AddColorPicker("Inventory_Color", {Default=Color3.fromRGB(80, 162 - 82, 80)});
Options.Inventory_Color:OnChanged(function(v148)
	local v149 = 65 - (30 + 35);
	local v150;
	while true do
		if (v149 == (0 + 0)) then
			v150 = game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter;
			for v242 = 1283 - (1043 + 214), 29 do
				v150.Armor["ItemSlot" .. v242].BackgroundColor3 = v148;
			end
			v149 = 3 - 2;
		end
		if (v149 == (1213 - (323 + 889))) then
			for v244 = 15 - 9, 605 - (361 + 219) do
				v150.Inventory["ItemSlot" .. v244].BackgroundColor3 = v148;
			end
			break;
		end
	end
end);
v64:AddLabel("energy:"):AddColorPicker("Energy_Color_Value", {Default=Color3.fromRGB(517 - (53 + 267), 43 + 144, 453 - (15 + 398))});
Options.Energy_Color_Value:OnChanged(function(v151)
	game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.EnergyFrame.Energy.BackgroundColor3 = v151;
end);
v64:AddLabel("health:"):AddColorPicker("Health_Color_Value", {Default=Color3.fromRGB(1060 - (18 + 964), 575 - 422, 43 + 31)});
Options.Health_Color_Value:OnChanged(function(v153)
	game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.HealthFrame.Health.BackgroundColor3 = v153;
end);
v64:AddLabel("ammo:"):AddColorPicker("Ammo_Color_Value", {Default=Color3.fromRGB(161 + 94, 255, 1105 - (20 + 830))});
Options.Ammo_Color_Value:OnChanged(function(v155)
	game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Ammo.TextColor3 = v155;
end);
v64:AddSlider("Vitals_Transparency", {Text="vitals transparency",Suffix="%",Default=0.1,Min=0,Max=(1 + 0),Rounding=(128 - (116 + 10)),Compact=true}):OnChanged(function(v157)
	local v158 = 0;
	while true do
		if (v158 == (0 + 0)) then
			game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.EnergyFrame.Energy.BackgroundTransparency = v157;
			game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.Vitals.HealthFrame.Health.BackgroundTransparency = v157;
			break;
		end
	end
end);
v64:AddSlider("Background_Transparency", {Text="inventory transparency",Suffix="%",Default=(738.7 - (542 + 196)),Min=(0 - 0),Max=1,Rounding=(1 + 1),Compact=true}):OnChanged(function(v159)
	local v160 = 0 + 0;
	while true do
		if (v160 == 0) then
			game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Inventory.BackgroundTransparency = v159;
			game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Hotbar.BackgroundTransparency = v159;
			v160 = 1 + 0;
		end
		if ((2 - 1) == v160) then
			game:GetService("Players").LocalPlayer.PlayerGui.GameUI.FPS.BottomCenter.Armor.BackgroundTransparency = v159;
			break;
		end
	end
end);
local v65 = v12.MainTab:AddRightTabbox("other");
local v66 = v65:AddTab("other");
v66:AddToggle("", {Text="jump crouch",Default=false}):AddKeyPicker("JumpCrouchKey", {Default="Q",SyncToggleState=true,Mode="Toggle",Text="Jump Crouch",NoUI=false});
local v67 = false;
task.spawn(function()
	while true do
		local v190 = Options.JumpCrouchKey:GetState();
		if v190 then
			local v226 = 0;
			while true do
				if ((4 - 2) == v226) then
					keypress(1583 - (1126 + 425));
					keyrelease(437 - (118 + 287));
					v226 = 3;
				end
				if (v226 == (11 - 8)) then
					wait(1121.5 - (118 + 1003));
					keyrelease(67);
					v226 = 11 - 7;
				end
				if (0 == v226) then
					keypress(87);
					keypress(393 - (142 + 235));
					v226 = 1;
				end
				if (v226 == (4 - 3)) then
					wait(0.05 + 0);
					keypress(1044 - (553 + 424));
					v226 = 2;
				end
				if ((7 - 3) == v226) then
					wait(1 + 0);
					break;
				end
			end
		end
		if v5.Unloaded then
			break;
		end
		wait();
	end
end);
task.spawn(function()
	while task.wait() do
		local v191 = 0 + 0;
		local v192;
		while true do
			if (v191 == (0 + 0)) then
				v192 = Options.JumpCrouchKey:GetState();
				if not v192 then
					if v67 then
						keyrelease(37 + 50);
						keyrelease(16);
						v67 = false;
					end
				else
					v67 = true;
				end
				break;
			end
		end
	end
end);
v66:AddLabel("loot all"):AddKeyPicker("gakb", {Default="F",SyncToggleState=false,Mode="Toggle",Text="loot all",NoUI=true});
Options.gakb:OnClick(function()
	for v193 = 1, 20 do
		wait(0.03 + 0);
		local v194 = 12;
		local v195 = v193;
		local v196 = true;
		game:GetService("Players").LocalPlayer.RemoteEvent:FireServer(v194, v195, v196);
	end
end);
local v68 = v12.UISettings:AddLeftGroupbox("Game");
v68:AddInput("GameID_Check", {Default="Game ID",Numeric=true,Finished=false,Text="Game ID:",Placeholder="Game ID Here"});
v68:AddButton("Join Game", function()
	game:GetService("TeleportService"):Teleport(Options.GameID_Check.Value, plr);
end);
local v69 = v12.UISettings:AddRightGroupbox("Menu");
v69:AddLabel("" .. game:GetService("Players").LocalPlayer.PlayerGui.GameUI.ServerInfo.Text .. "", true);
local v70 = v69:AddLabel("Player Count: 0", nil, true);
local function v71()
	local v161 = 0;
	local v162;
	while true do
		if (v161 == (0 - 0)) then
			v162 = #game:GetService("Players"):GetPlayers();
			v70:SetText("Players Online: " .. v162);
			break;
		end
	end
end
game:GetService("Players").PlayerAdded:Connect(v71);
game:GetService("Players").PlayerRemoving:Connect(v71);
v71();
v69:AddLabel(' Made by:<font color="#de6cff"> velocity#9108</font> 👑', true);
v69:AddButton("Unload Script", function()
	local v163 = 0 - 0;
	while true do
		if (v163 == (0 - 0)) then
			v5:Unload();
			for v246, v247 in pairs(Toggles) do
				v247:SetValue(false);
				v5:Notify("Unloaded!", 1 + 0);
			end
			break;
		end
	end
end);
v69:AddButton("Panic Button", function()
	for v197, v198 in pairs(Toggles) do
		local v199 = 0 - 0;
		while true do
			if (0 == v199) then
				v198:SetValue(false);
				v5:Notify("Panic Button!", 754 - (239 + 514));
				break;
			end
		end
	end
end);
v69:AddButton("Copy Discord", function()
	if pcall(setclipboard, "https://discord.gg/dWvMFGkT") then
		v5:Notify("Successfully copied discord link to your clipboard!", 5);
	end
end);
local function v72()
	local v164 = 0 + 0;
	local v165;
	while true do
		if (v164 == (1329 - (797 + 532))) then
			v165 = os.date("%X");
			return v165;
		end
	end
end
v69:AddToggle("WatermarkToggle", {Text="Watermark",Default=false,Tooltip=nil});
Toggles.WatermarkToggle:OnChanged(function()
	while Toggles.WatermarkToggle.Value do
		task.wait(1);
		local v200 = string.format("%.0f", game.Stats.Workspace.Heartbeat:GetValue());
		local v201 = string.format("%.0f", game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue());
		local v202 = v72();
		v5:SetWatermark("velocity.cc - FPS: " .. v200 .. " | Ping: " .. v201 .. " | Time: " .. v202);
		v5:SetWatermarkVisibility(Toggles.WatermarkToggle.Value);
	end
end);
v5:SetWatermarkVisibility(false);
v69:AddToggle("UISettings_KeybindFrameVisibility", {Text="Keybind",Default=true}):OnChanged(function()
	v5.KeybindFrame.Visible = Toggles.UISettings_KeybindFrameVisibility.Value;
end);
v69:AddLabel("Menu Keybind"):AddKeyPicker("MenuKeybind", {Default="Insert",NoUI=true,Text="Menu keybind"});
v5.ToggleKeybind = Options.MenuKeybind;
v6:SetLibrary(v5);
v6:SetFolder("velocity.cc/folder");
v6:BuildConfigSection(v12.UISettings);
v6:IgnoreThemeSettings();
v7:SetLibrary(v5);
v7:SetFolder("velocity.cc/themes");
v7:ApplyToTab(v12.UISettings);
local v75 = (string.format("%." .. tostring(v3) .. "f", os.clock() - v4));
v5:Notify("Script [Loaded] In - " .. tostring(v75) .. "s", 11 + 4);
loadstring(game:HttpGet("https://raw.githubusercontent.com/EIOlmqV6v1owgJBEoqj5lK9p01SFE2THpxcOnvX/LinoriaBurnEdition/main/LoaderManager.lua"));
local v76 = Drawing.new("Text");
v76.Text = "velocity.cc | Free \nhttps://discord.gg/velocitycc";
v76.Visible = true;
v76.Font = 1 + 1;
v76.Color = Color3.fromRGB(255, 255, 599 - 344);
v76.Outline = true;
v76.Center = true;
v76.Position = Vector2.new(v1.ViewportSize.x / (1204 - (373 + 829)), 731 - (476 + 255));
