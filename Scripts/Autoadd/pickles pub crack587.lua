--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.2.9) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v14, v15)
	local v16 = {};
	for v90 = 1, #v14 do
		v6(v16, v0(v4(v1(v2(v14, v90, v90 + 1)), v1(v2(v15, 1 + (v90 % #v15), 1 + (v90 % #v15) + 1))) % 256));
	end
	return v5(v16);
end
local v8 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/cerberus.lua"))();
local v9 = v8.new("    😈PICKLES.PUB😈 | PAID | PRIVATE |");
v9:LockScreenBoundaries(true);
local v10 = v9:Tab(v7("\242\236\246\7\199\143", "\126\177\163\187\69\134\219\167"));
local v11 = v10:Section(v7("\0\194\39\199\253\55", "\156\67\173\74\165"));
local v12 = v11:Title(v7("\21\190\68", "\38\84\215\41\118\220\70"));
v12:ChangeText(v7("\113\31\47", "\158\48\118\66\114"));
v11:Button(v7("\152\45\28\51\125\177\187\138\45\29", "\155\203\68\112\86\19\197"), function()
	local v17 = workspace.CurrentCamera;
	_G.CircleSides = 8 + 92;
	_G.CircleColor = Color3.fromRGB(16 + 84, 399 - 99, 434 - 209);
	_G.CircleTransparency = 98 - (11 + 86);
	_G.CircleRadius = 250;
	_G.CircleFilled = false;
	_G.CircleVisible = true;
	_G.CircleThickness = 0 - 0;
	local v18 = Drawing.new(v7("\101\212\36\255\76\125", "\152\38\189\86\156\32\24\133"));
	v18.Position = Vector2.new(v17.ViewportSize.X / 2, v17.ViewportSize.Y / (287 - (175 + 110)));
	v18.Radius = _G.CircleRadius;
	v18.Filled = _G.CircleFilled;
	v18.Color = _G.CircleColor;
	v18.Visible = _G.CircleVisible;
	v18.Radius = _G.CircleRadius;
	v18.Transparency = _G.CircleTransparency;
	v18.NumSides = _G.CircleSides;
	v18.Thickness = _G.CircleThickness;
end);
local v13 = v11:Toggle(v7("\221\94\170\68\243\67", "\38\156\55\199"), function(v27)
	local v28 = workspace.CurrentCamera;
	_G.CircleSides = 252 - 152;
	_G.CircleColor = Color3.fromRGB(25, 123 - 98, 1821 - (503 + 1293));
	_G.CircleTransparency = 2 - 1;
	_G.CircleRadius = 73 + 27;
	_G.CircleFilled = false;
	_G.CircleVisible = true;
	_G.CircleThickness = 1;
	local v29 = Drawing.new(v7("\139\116\110\43\31\113", "\35\200\29\28\72\115\20\154"));
	v29.Position = Vector2.new(v28.ViewportSize.X / (1063 - (810 + 251)), v28.ViewportSize.Y / (2 + 0));
	v29.Radius = _G.CircleRadius;
	v29.Filled = _G.CircleFilled;
	v29.Color = _G.CircleColor;
	v29.Visible = _G.CircleVisible;
	v29.Radius = _G.CircleRadius;
	v29.Transparency = _G.CircleTransparency;
	v29.NumSides = _G.CircleSides;
	v29.Thickness = _G.CircleThickness;
end);
local v13 = v11:Toggle(v7("\42\175\216\209\175\35\32\89\163\145\231", "\84\121\223\177\191\237\76"), function(v38)
	local v39 = 0 + 0;
	local v40;
	local v41;
	local v42;
	local v43;
	local v44;
	local v45;
	local v46;
	while true do
		if (v39 == 0) then
			v40 = 1200;
			v41 = game.Players.LocalPlayer;
			v39 = 1 + 0;
		end
		if (v39 == (534 - (43 + 490))) then
			local v115 = 0;
			while true do
				if (v115 == 1) then
					v39 = 735 - (711 + 22);
					break;
				end
				if (v115 == (0 - 0)) then
					v42 = v41.Character or v41.CharacterAdded:Wait();
					v43 = v42:WaitForChild(v7("\147\67\196\161\52\95\57\197", "\161\219\54\169\192\90\48\80"));
					v115 = 860 - (240 + 619);
				end
			end
		end
		if (v39 == 4) then
			function v46()
				v44 = not v44;
				if v44 then
					coroutine.wrap(v45)();
				end
			end
			game:GetService(v7("\137\208\210\24\43\37\172\214\195\57\7\57\170\202\212\15", "\75\220\163\183\106\98")).InputBegan:Connect(function(v150)
				if (v150.KeyCode == Enum.KeyCode.X) then
					v46();
				end
			end);
			break;
		end
		if (v39 == (1 + 1)) then
			v44 = false;
			v45 = nil;
			v39 = 4 - 1;
		end
		if (v39 == (1 + 2)) then
			function v45()
				while v44 do
					local v162 = 0;
					local v163;
					while true do
						if (v162 == (1744 - (1344 + 400))) then
							v163 = v40 * game:GetService(v7("\123\87\14\22\76\80\22\44\74\71", "\69\41\34\96")).RenderStepped:Wait();
							v42:SetPrimaryPartCFrame(v42:GetPrimaryPartCFrame() * CFrame.Angles(405 - (255 + 150), math.rad(v163), 0 + 0));
							break;
						end
					end
				end
			end
			v46 = nil;
			v39 = 3 + 1;
		end
	end
end);
v13:Set(false);
v11:Button(v7("\42\179\159\53\214\26\250\174\47\201\3\180\143\50\203\66\166\203\3\214\5\189\135\50\153\13\180\136\50", "\185\98\218\235\87"), function()
	local v47 = 0 - 0;
	while true do
		if (v47 == (3 - 2)) then
			for v151, v152 in pairs(game.Workspace:GetChildren()) do
				if v152:FindFirstChild(v7("\191\255\32\78\247", "\199\235\144\82\61\152")) then
					v152:FindFirstChild(v7("\47\19\184\47", "\75\103\118\217")).Size = Vector3.new(1745 - (404 + 1335), 6, 6);
				end
			end
			break;
		end
		if (v47 == (406 - (183 + 223))) then
			ad = hookmetamethod(game, v7("\244\3\46\232\218\175\211", "\202\171\92\71\134\190"), newcclosure(function(...)
				local v153 = 0 - 0;
				local v154;
				local v155;
				while true do
					if (v153 == (1 + 0)) then
						return ad(...);
					end
					if (v153 == (0 + 0)) then
						v154, v155 = ...;
						if (not checkcaller() and (v155 == v7("\26\200\54\141", "\232\73\161\76")) and (v154.Name == v7("\147\220\67\89", "\126\219\185\34\61"))) then
							return Vector3.new(338.67325 - (10 + 327), 0.836624, 0.836624 + 0);
						end
						v153 = 1;
					end
				end
			end));
			for v156, v157 in pairs(game:GetService(v7("\62\203\78\126\119\116\242\243\9\202\109\102\113\101\242\224\9", "\135\108\174\62\18\30\23\147")).Player:GetDescendants()) do
				if (v157.Name == v7("\158\236\43\207", "\167\214\137\74\171\120\206\83")) then
					v157.Size = Vector3.new(6, 344 - (118 + 220), 6);
				end
			end
			v47 = 1 + 0;
		end
	end
end);
v11:Button(v7("\225\91\102\84\154\22\198\90\119\17\171\94\219\20\59\60\176\25\207\81\98\84\244\50\200\67\117\6", "\126\167\52\16\116\217"), function()
	local v48 = 519 - (108 + 341);
	local v49 = 30;
	local v50 = 54 + 66;
	local v51 = 5;
	local v52 = game.Players.LocalPlayer;
	local v53 = workspace.CurrentCamera;
	local function v54(v91)
		v53.FieldOfView = v91;
	end
	local function v55()
		local v93 = v53.FieldOfView;
		local v94 = v93 + v51;
		if (v94 <= v50) then
			v54(v94);
		end
	end
	local function v56()
		local v95 = 0 - 0;
		local v96;
		local v97;
		while true do
			if (v95 == (1494 - (711 + 782))) then
				if (v97 >= v49) then
					v54(v97);
				end
				break;
			end
			if (v95 == (0 - 0)) then
				v96 = v53.FieldOfView;
				v97 = v96 - v51;
				v95 = 470 - (270 + 199);
			end
		end
	end
	local function v57()
		v54(v48);
	end
	game:GetService(v7("\253\61\37\146\157\23\236\221\58\19\133\166\15\245\203\43", "\156\168\78\64\224\212\121")).InputBegan:Connect(function(v98)
		if (v98.KeyCode == Enum.KeyCode.Equals) then
			v55();
		elseif (v98.KeyCode == Enum.KeyCode.Minus) then
			v56();
		elseif (v98.KeyCode == Enum.KeyCode.Zero) then
			v57();
		end
	end);
end);
v11:Button(v7("\36\252\170\221\20\230\164\199\21", "\174\103\142\197"), function()
	local v58 = 0;
	local v59;
	while true do
		if ((1 + 2) == v58) then
			v59.Radius = 2;
			v59.Visible = true;
			v58 = 1823 - (580 + 1239);
		end
		if (v58 == (0 - 0)) then
			v59 = Drawing.new(v7("\117\33\77\59\41\91", "\152\54\72\63\88\69\62"));
			v59.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / (2 + 0), workspace.CurrentCamera.ViewportSize.Y / 2);
			v58 = 1 + 0;
		end
		if (v58 == 4) then
			v59.Filled = true;
			break;
		end
		if (v58 == 1) then
			v59.Color = Color3.fromRGB(100, 131 + 169, 587 - 362);
			v59.Transparency = 1 + 0;
			v58 = 2;
		end
		if (v58 == (1169 - (645 + 522))) then
			v59.Thickness = 1790.1 - (1010 + 780);
			v59.NumSides = 25 + 0;
			v58 = 14 - 11;
		end
	end
end);
local v10 = v9:Tab(v7("\226\237\221\105\245\232", "\60\180\164\142"));
local v11 = v10:Section(v7("\110\87\22\60\38\225", "\114\56\62\101\73\71\141"));
local v12 = v11:Title(v7("\142\224\200\209\185\229\200", "\164\216\137\187"));
v12:ChangeText(v7("\228\239\34\167\167\242\24", "\107\178\134\81\210\198\158"));
v11:Button(v7("\30\62\177\134\159\22\34\173\229\129\29\60", "\202\88\110\226\166"), function()
	setfps(2927 - 1928);
end);
local v13 = v11:Toggle(v7("\240\58\178\210\248\131\40\174\216\253\240\59\171\212\225", "\170\163\111\226\151"), function(v60)
	local v61 = 1836 - (1045 + 791);
	local v62;
	while true do
		if (v61 == (0 - 0)) then
			v62 = nil;
			function v62(v159)
				if (v159.Name == v7("\54\60\189\47\93\35\32\18\59", "\73\113\80\210\88\46\87")) then
					v159.GlowPart.PointLight.Range = 100;
					v159.GlowPart.PointLight.Brightness = 45 - 15;
				end
			end
			v61 = 506 - (351 + 154);
		end
		if ((1575 - (1281 + 293)) == v61) then
			for v160, v161 in pairs(game:GetService(v7("\182\35\223\25\244\145\45\206\23", "\135\225\76\173\114")).Ignore:GetChildren()) do
				v62(v161);
			end
			game:GetService(v7("\45\226\170\187\191\173\166\25\232", "\199\122\141\216\208\204\221")).Ignore.ChildAdded:Connect(v62);
			break;
		end
	end
end);
v13:Set(false);
v11:Button(v7("\138\241\63\199\75\194\132\254\59\176\87\208\139", "\150\205\189\112\144\24"), function()
	getconnections(game:GetService(v7("\18\139\173\71\23\152\16\19\32", "\112\69\228\223\44\100\232\113")).Ignore.ChildAdded)[267 - (28 + 238)]:Disable();
end);
v11:Button(v7("\242\45\34\246\149\93\171\148\3\71\224\158\85\160\224\84\55", "\230\180\127\103\179\214\28"), function()
	loadstring(game:HttpGet("https://pastebin.com/raw/PWRfi981", true))();
end);
v11:Button(v7("\161\42\123\98\193\101\160\173\55\114\117", "\128\236\101\63\38\132\33"), function()
	local v63 = game:GetService(v7("\155\166\3\79\165\251\206\175\172", "\175\204\201\113\36\214\139"));
	local v64 = v63.Ignore.FPSArms;
	local v65 = Enum.Material.ForceField;
	local v66 = Color3.fromRGB(218 - 120, 1596 - (1381 + 178), 209);
	for v99, v100 in pairs(v64:GetDescendants()) do
		if v100:IsA(v7("\101\205\38\217\52\70\222\33", "\100\39\172\85\188")) then
			v100.Material = v65;
			v100.Color = v66;
		end
	end
	local v67 = game:GetService(v7("\159\125\169\140\58\174\121\173\133\55\158\108\182\146\50\170\125", "\83\205\24\217\224"));
	local v68 = v67:WaitForChild(v7("\206\196\195\57\203\202\201\56\234\214", "\93\134\165\173"));
	local v65 = Enum.Material.ForceField;
	local v66 = Color3.fromRGB(98, 37, 197 + 12);
	for v101, v102 in pairs(v68:GetDescendants()) do
		if v102:IsA(v7("\156\243\210\199\10\207\160\106", "\30\222\146\161\162\90\174\210")) then
			local v126 = 0 + 0;
			while true do
				if (v126 == (0 + 0)) then
					v102.Material = v65;
					v102.Color = v66;
					break;
				end
			end
		end
	end
	local v67 = game:GetService(v7("\215\75\96\6\236\77\113\30\224\74\67\30\234\92\113\13\224", "\106\133\46\16"));
	local v68 = v67.HandModels;
	local v69 = false;
	for v103, v104 in ipairs(v68:GetDescendants()) do
		if v104:IsA(v7("\106\47\99\249\121\79\86\51\103\238\91\73\86\52", "\32\56\64\19\156\58")) then
			v104.Visible = v69;
		end
	end
end);
local v10 = v9:Tab(v7("\127\251\213", "\224\58\168\133\54\58\146"));
local v11 = v10:Section(v7("\124\69\91", "\107\57\54\43\157\21\230\231"));
local v12 = v11:Title("ESP'S");
v12:ChangeText("ESP'S");
v11:Button(v7("\235\167\48\204\156\238\143\254\184\33", "\175\187\235\113\149\217\188"), function()
	print(v7("\23\170\152\78\234\119\124\124\191\147\73\240\106\125\56\238", "\24\92\207\225\44\131\25"));
end);
local v13 = v11:Toggle(v7("\123\223\185\85\30\111\11\240\176\77\22\110\11\207\248\122", "\29\43\179\216\44\123"), function(v70)
	local v71 = 0 - 0;
	local v72;
	local v73;
	local v74;
	while true do
		if (v71 == (1 + 0)) then
			v74 = nil;
			while true do
				if (v72 == (471 - (381 + 89))) then
					while true do
						if (v73 == (2 + 0)) then
							for v203, v204 in pairs(game.Workspace:GetChildren()) do
								if v204:FindFirstChild(v7("\10\93\54\220", "\134\66\56\87\184\190\116")) then
									local v213 = 0 + 0;
									while true do
										if (v213 == (0 - 0)) then
											for v228, v229 in pairs(v229:GetChildren()) do
												if v229:IsA(v7("\12\48\27\175", "\85\92\81\105\219\121\139\65")) then
													local v246 = 1156 - (1074 + 82);
													local v247;
													local v248;
													while true do
														if (v246 == (1 - 0)) then
															while true do
																if (0 == v247) then
																	local v273 = 1784 - (214 + 1570);
																	while true do
																		if ((1456 - (990 + 465)) == v273) then
																			v247 = 1 + 0;
																			break;
																		end
																		if (v273 == 0) then
																			v248 = Instance.new(v7("\223\188\72\109\125\209\249\191\85\100\120\208\239\189\93\64\114\203", "\191\157\211\48\37\28"));
																			v248.Adornee = v229;
																			v273 = 1 + 0;
																		end
																	end
																end
																if (v247 == (3 + 0)) then
																	v248.Transparency = 0.3 - 0;
																	v248.Parent = v229;
																	break;
																end
																if (v247 == (1727 - (1668 + 58))) then
																	v248.AlwaysOnTop = true;
																	v248.ZIndex = 627 - (512 + 114);
																	v247 = 5 - 3;
																end
																if (v247 == (3 - 1)) then
																	v248.Size = v229.Size;
																	v248.Color = BrickColor.new(v7("\253\13\253\27\50\203\95\243\14\63\218\17", "\90\191\127\148\124"));
																	v247 = 3;
																end
															end
															break;
														end
														if (v246 == (0 - 0)) then
															v247 = 0;
															v248 = nil;
															v246 = 1 + 0;
														end
													end
												end
											end
											for v230, v231 in pairs(v231:GetChildren()) do
												if v231:IsA(v7("\85\130\61\31\72\134\60\3", "\119\24\231\78")) then
													local v249 = 0 + 0;
													local v250;
													while true do
														if (v249 == (2 + 0)) then
															v250.Size = v231.Size;
															v250.Color = BrickColor.new(v7("\24\4\253\178\50\2\180\178\40\19\241\187", "\213\90\118\148"));
															v249 = 10 - 7;
														end
														if (v249 == (1995 - (109 + 1885))) then
															v250.AlwaysOnTop = true;
															v250.ZIndex = 1;
															v249 = 1471 - (1269 + 200);
														end
														if (v249 == 3) then
															v250.Transparency = 0.3;
															v250.Parent = v231;
															break;
														end
														if (v249 == (0 - 0)) then
															v250 = Instance.new(v7("\160\34\189\98\221\78\21\142\40\132\78\211\82\31\143\40\171\94", "\113\226\77\197\42\188\32"));
															v250.Adornee = v231;
															v249 = 816 - (98 + 717);
														end
													end
												end
											end
											break;
										end
									end
								end
							end
							while wait() do
								local v205 = 826 - (802 + 24);
								while true do
									if (v205 == 0) then
										if (_G.Enabled == true) then
											for v232, v233 in pairs(game:GetService(v7("\105\43\164\90\68\88\47\160\83\73\104\58\187\68\76\92\43", "\45\59\78\212\54")).Player:GetDescendants()) do
												if (v233:IsA(v7("\61\83\144\131\182\47\191\228", "\144\112\54\227\235\230\78\205")) or v233:IsA(v7("\131\41\29\232", "\59\211\72\111\156\176"))) then
													if v233:FindFirstChild(v7("\108\136\251\5\79\137\231\33\75\166\231\34\92\137\238\40\64\147", "\77\46\231\131")) then
														v233:FindFirstChild(v7("\152\91\174\104\187\90\178\76\191\117\178\79\168\90\187\69\180\64", "\32\218\52\214")).Transparency = 0.3 - 0;
													end
												end
											end
											for v234, v235 in pairs(game.Workspace:GetChildren()) do
												if v235:FindFirstChild(v7("\102\18\48\172", "\58\46\119\81\200\145\208\37")) then
													for v253, v254 in pairs(v254:GetChildren()) do
														if v254:IsA(v7("\27\141\34\184", "\86\75\236\80\204\201\221")) then
															if v254:FindFirstChild(v7("\80\78\111\173\255\133\118\77\114\164\250\132\96\79\122\128\240\159", "\235\18\33\23\229\158")) then
																v254:FindFirstChild(v7("\114\181\217\147\81\180\197\183\85\155\197\180\66\180\204\190\94\174", "\219\48\218\161")).Transparency = 0.3;
															end
														end
													end
												end
												for v236, v237 in pairs(v237:GetChildren()) do
													if v237:IsA(v7("\201\116\111\65\235\78\242\240", "\128\132\17\28\41\187\47")) then
														if v237:FindFirstChild(v7("\35\61\30\18\92\15\54\10\63\124\5\61\20\52\80\4\60\18", "\61\97\82\102\90")) then
															v237:FindFirstChild(v7("\142\33\179\99\198\89\26\5\169\15\175\68\213\89\19\12\162\58", "\105\204\78\203\43\167\55\126")).Transparency = 0.3 - 0;
														end
													end
												end
											end
										end
										if (_G.Enabled == false) then
											local v219 = 0 + 0;
											local v220;
											while true do
												if (v219 == (0 + 0)) then
													v220 = 0 + 0;
													while true do
														if ((0 + 0) == v220) then
															for v266, v267 in pairs(game:GetService(v7("\151\175\51\18\26\7\198\69\160\174\16\10\28\22\198\86\160", "\49\197\202\67\126\115\100\167")).Player:GetDescendants()) do
																if (v267:IsA(v7("\26\94\204\33\176\87\76\35", "\62\87\59\191\73\224\54")) or v267:IsA(v7("\215\3\232\221", "\169\135\98\154"))) then
																	if v267:FindFirstChild(v7("\233\120\60\124\252\61\204\199\114\5\80\242\33\198\198\114\42\64", "\168\171\23\68\52\157\83")) then
																		v267:FindFirstChild(v7("\214\126\237\133\36\35\131\248\116\212\169\42\63\137\249\116\251\185", "\231\148\17\149\205\69\77")).Transparency = 2 - 1;
																	end
																end
															end
															for v268, v269 in pairs(game.Workspace:GetChildren()) do
																if v269:FindFirstChild(v7("\168\162\198\255", "\159\224\199\167\155\55")) then
																	for v281, v282 in pairs(v282:GetChildren()) do
																		if v282:IsA(v7("\199\242\46\198", "\178\151\147\92")) then
																			if v282:FindFirstChild(v7("\174\242\84\26\19\66\126\128\248\109\54\29\94\116\129\248\66\38", "\26\236\157\44\82\114\44")) then
																				v282:FindFirstChild(v7("\8\33\205\115\43\32\209\87\47\15\209\84\56\32\216\94\36\58", "\59\74\78\181")).Transparency = 1;
																			end
																		end
																	end
																end
																for v271, v272 in pairs(v272:GetChildren()) do
																	if v272:IsA(v7("\8\212\73\82\131\36\195\78", "\211\69\177\58\58")) then
																		if v272:FindFirstChild(v7("\149\234\97\221\232\197\179\233\124\212\237\196\165\235\116\240\231\223", "\171\215\133\25\149\137")) then
																			v272:FindFirstChild(v7("\195\199\42\210\238\62\248\78\228\233\54\245\253\62\241\71\239\220", "\34\129\168\82\154\143\80\156")).Transparency = 1;
																		end
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
										end
										break;
									end
								end
							end
							break;
						end
						if (1 == v73) then
							v74.InputBegan:Connect(function(v206, v207)
								if not v207 then
									if (v206.KeyCode == Enum.KeyCode.V) then
										if (_G.Enabled == true) then
											_G.Enabled = false;
										elseif (_G.Enabled == false) then
											_G.Enabled = true;
										end
									end
								end
							end);
							for v208, v209 in pairs(game:GetService(v7("\51\226\88\83\122\2\230\92\90\119\50\243\71\77\114\6\226", "\19\97\135\40\63")).Player:GetDescendants()) do
								if (v209:IsA(v7("\131\89\32\51\31\48\188\72", "\81\206\60\83\91\79")) or v209:IsA(v7("\126\170\194\102", "\196\46\203\176\18\79\163\45"))) then
									local v214 = 0 - 0;
									local v215;
									while true do
										if (v214 == (2 + 1)) then
											v215.Transparency = 0.3 + 0;
											v215.Parent = v209;
											break;
										end
										if (v214 == (2 + 0)) then
											v215.Size = v209.Size;
											v215.Color = BrickColor.new(v7("\136\218\4\204\205\183\151\230\184\205\8\197", "\129\202\168\109\171\165\195\183"));
											v214 = 3 + 0;
										end
										if (v214 == (1 + 0)) then
											local v226 = 1433 - (797 + 636);
											while true do
												if (v226 == 0) then
													v215.AlwaysOnTop = true;
													v215.ZIndex = 4 - 3;
													v226 = 1620 - (1427 + 192);
												end
												if (v226 == (1 + 0)) then
													v214 = 4 - 2;
													break;
												end
											end
										end
										if (v214 == (0 + 0)) then
											v215 = Instance.new(v7("\154\45\102\54\37\245\235\180\39\95\26\43\233\225\181\39\112\10", "\143\216\66\30\126\68\155"));
											v215.Adornee = v209;
											v214 = 1 + 0;
										end
									end
								end
							end
							v73 = 328 - (192 + 134);
						end
						if (v73 == 0) then
							v74 = game:GetService(v7("\136\202\37\94\148\215\48\89\169\234\37\94\171\208\35\73", "\44\221\185\64"));
							_G.Enabled = true;
							v73 = 1277 - (316 + 960);
						end
					end
					break;
				end
				if (v72 == (0 + 0)) then
					v73 = 0 + 0;
					v74 = nil;
					v72 = 1;
				end
			end
			break;
		end
		if ((0 + 0) == v71) then
			v72 = 0 - 0;
			v73 = nil;
			v71 = 552 - (83 + 468);
		end
	end
end);
v13:Set(false);
v11:Button(v7("\162\167\61\75\109\125\185", "\233\229\210\83\107\40\46"), function()
	print(v7("\241\80\55\197\22\196\70\114\212\16\213\86\61\216\68", "\101\161\34\82\182"));
end);
v11:Button(v7("\220\46\25\219\232\210\194\50\168\57", "\78\136\109\57\158\187\130\226"), function()
	local v75 = game:GetService(v7("\11\44\252\227\23\49\233\228\42\12\252\227\40\54\250\244", "\145\94\95\153"));
	local v76 = {};
	local v77 = false;
	local function v78()
		local v105 = 0;
		local v106;
		while true do
			if (v105 == 0) then
				v106 = workspace:GetDescendants();
				for v164, v165 in ipairs(v106) do
					if (v165:IsA(v7("\200\195\29\218\64\152\237\200\6\212\90\190\242\195", "\215\157\173\116\181\46")) and (v165.Name == v7("\6\160\138\230\223", "\186\85\212\235\146")) and (v165.Material == Enum.Material.Neon)) then
						local v189 = Instance.new(v7("\224\142\14\214\56\224\92\206\132\55\250\54\252\86\207\132\24\234", "\56\162\225\118\158\89\142"));
						v189.Adornee = v165;
						v189.AlwaysOnTop = true;
						v189.ZIndex = 0;
						v189.Size = Vector3.new(1808.5 - (1202 + 604), 27.25 - 21, 2.5 - 0);
						v189.Transparency = 0.5 - 0;
						v189.Color = BrickColor.new(v7("\110\10\217\174\46\152\76\16\210\191\46\221", "\184\60\101\160\207\66"));
						v189.Parent = workspace;
						v189.CFrame = CFrame.new(0, -(327.2 - (45 + 280)), 0 + 0);
						table.insert(v76, v189);
					end
				end
				break;
			end
		end
	end
	local function v79()
		local v107 = 0 + 0;
		while true do
			if (v107 == (0 + 0)) then
				for v166, v167 in ipairs(v76) do
					v167:Destroy();
				end
				v76 = {};
				break;
			end
		end
	end
	local function v80()
		if v77 then
			v79();
			v77 = false;
		else
			v78();
			v77 = true;
		end
	end
	v75.InputBegan:Connect(function(v108, v109)
		if ((v108.KeyCode == Enum.KeyCode.T) and not v109) then
			v80();
		end
	end);
end);
v11:Button("Ore's ESP", function()
	print(v7("\1\144\121\175\34\135\120\252\51\151\104\168\62\140\61", "\220\81\226\28"));
end);
v11:Button(v7("\62\220\142\242\254\198\1\204\194\217\229\223\83\240\177\203", "\167\115\181\226\155\138"), function()
	local function v81(v110)
		if (v110:IsA(v7("\210\35\245\72", "\166\130\66\135\60\27\17")) and (v110.BrickColor == BrickColor.new(v7("\104\67\192\112\62", "\80\36\42\174\21"))) and (v110.Material == Enum.Material.WoodPlanks)) then
			local v128 = 0;
			local v129;
			local v130;
			while true do
				if (v128 == (0 + 0)) then
					v129 = 0 + 0;
					v130 = nil;
					v128 = 1;
				end
				if (v128 == 1) then
					while true do
						if (v129 == (0 - 0)) then
							v130 = v110.Parent;
							if (v130 and v130:IsA(v7("\99\31\51\127\66", "\26\46\112\87")) and (#v130:GetChildren() == (1913 - (340 + 1571)))) then
								local v210 = 0 + 0;
								local v211;
								local v212;
								while true do
									if (v210 == (1773 - (1733 + 39))) then
										while true do
											if (v211 == (0 - 0)) then
												local v238 = 1034 - (125 + 909);
												while true do
													if ((1948 - (1096 + 852)) == v238) then
														v212 = Instance.new(v7("\155\44\179\92\190\177\65\184\188\2\175\123\173\177\72\177\183\55", "\212\217\67\203\20\223\223\37"));
														v212.Adornee = v110;
														v238 = 1;
													end
													if (v238 == (1 + 0)) then
														v211 = 1;
														break;
													end
												end
											end
											if (v211 == (1 - 0)) then
												v212.AlwaysOnTop = true;
												v212.ZIndex = 0 + 0;
												v211 = 514 - (409 + 103);
											end
											if (v211 == (239 - (46 + 190))) then
												v212.Color = BrickColor.new(v7("\152\159\161\213\178\153\232\203\191\129\164\221\173", "\178\218\237\200"));
												v212.Parent = workspace;
												break;
											end
											if (v211 == 2) then
												v212.Size = v110.Size;
												v212.Transparency = 0.3;
												v211 = 3;
											end
										end
										break;
									end
									if (v210 == (95 - (51 + 44))) then
										v211 = 0;
										v212 = nil;
										v210 = 1 + 0;
									end
								end
							end
							break;
						end
					end
					break;
				end
			end
		end
	end
	workspace.DescendantAdded:Connect(v81);
end);
v11:Button(v7("\148\180\245\217\181\245\196\223\174\245\195\227\134", "\176\214\213\134"), function()
	local v82 = workspace:GetDescendants();
	local v83 = {};
	for v111, v112 in ipairs(v82) do
		if (v112:IsA(v7("\193\163\191\219\166\121\73\241\191\183\192\161\89\87", "\57\148\205\214\180\200\54")) and (v112.BrickColor == BrickColor.new(v7("\49\252\38\60\123\23\239\48", "\22\114\157\85\84"))) and (v112.Material == Enum.Material.Plastic)) then
			local v131 = 1317 - (1114 + 203);
			local v132;
			while true do
				if (v131 == (726 - (228 + 498))) then
					local v174 = 0;
					while true do
						if (v174 == 0) then
							local v199 = 0 + 0;
							while true do
								if ((1 + 0) == v199) then
									v174 = 1;
									break;
								end
								if (v199 == (663 - (174 + 489))) then
									v132 = Instance.new(v7("\230\196\11\236\92\248\172\200\206\50\192\82\228\166\201\206\29\208", "\200\164\171\115\164\61\150"));
									v132.Adornee = v112;
									v199 = 2 - 1;
								end
							end
						end
						if (1 == v174) then
							v131 = 1;
							break;
						end
					end
				end
				if (v131 == 3) then
					v132.Color = BrickColor.new(v7("\156\230\10\66\139\170\180\26\64\143\178\251\20", "\227\222\148\99\37"));
					v132.Parent = workspace;
					break;
				end
				if (v131 == (1906 - (830 + 1075))) then
					v132.AlwaysOnTop = true;
					v132.ZIndex = 524 - (303 + 221);
					v131 = 1271 - (231 + 1038);
				end
				if (v131 == 2) then
					v132.Size = v112.Size;
					v132.Transparency = 0.3 + 0;
					v131 = 3;
				end
			end
		end
	end
	local function v84(v113)
		if (v113:IsA(v7("\6\92\91\249\247\28\66\87\228\248\39\91\93\248", "\153\83\50\50\150")) and (v113.BrickColor == BrickColor.new(v7("\126\119\96\20\126\174\95\88", "\45\61\22\19\124\19\203"))) and (v113.Material == Enum.Material.Plastic)) then
			local v133 = Instance.new(v7("\227\29\21\221\3\126\189\205\23\44\241\13\98\183\204\23\3\225", "\217\161\114\109\149\98\16"));
			v133.Adornee = v113;
			v133.AlwaysOnTop = true;
			v133.ZIndex = 1162 - (171 + 991);
			v133.Size = v113.Size;
			v133.Transparency = 0.3 - 0;
			v133.Color = BrickColor.new(v7("\48\50\49\123\180\96\82\57\61\112\176\123\5", "\20\114\64\88\28\220"));
			v133.Parent = workspace;
		end
	end
	workspace.DescendantAdded:Connect(v84);
end);
local v10 = v9:Tab(v7("\6\46\224\152\220", "\221\81\97\178\212\152\176"));
local v11 = v10:Section(v7("\250\232\15\247\30", "\122\173\135\125\155"));
local v12 = v11:Title(v7("\179\206\18\181\59\113\251\129\213\20\176\49\54\219", "\168\228\161\96\217\95\81"));
v12:ChangeText(v7("\236\222\60\80\43\23\232\212\58\72\38\89\220\194", "\55\187\177\78\60\79"));
v11:Button(v7("\31\203\91\171\117\196\153\47\193\71", "\224\77\174\63\139\38\175"), function()
	local v85 = 0 - 0;
	local v86;
	while true do
		if ((4 - 2) == v85) then
			v86.SkyboxFt = v7("\209\125\227\9", "\42\147\17\150\108\112");
			v86.SkyboxLf = v7("\45\170\56\122", "\136\111\198\77\31\135");
			v85 = 3;
		end
		if (v85 == (3 + 0)) then
			v86.SkyboxRt = v7("\32\5\178\83", "\201\98\105\199\54\221\132\119");
			v86.SkyboxUp = v7("\155\0\150\36", "\204\217\108\227\65\98\85");
			break;
		end
		if (v85 == (0 - 0)) then
			v86 = Instance.new(v7("\183\74\65", "\78\228\33\56"));
			v86.Parent = game.Lighting;
			v85 = 2 - 1;
		end
		if (v85 == (1 - 0)) then
			v86.SkyboxBk = v7("\236\114\167\6", "\229\174\30\210\99");
			v86.SkyboxDn = v7("\57\225\147\84", "\89\123\141\230\49\141\93");
			v85 = 2;
		end
	end
end);
v11:Button(v7("\121\194\249\228\52\217\30\240\254\252\46\207\70", "\160\62\163\149\133\76"), function()
	local v87 = 0;
	local v88;
	local v89;
	while true do
		if (v87 == 0) then
			v88 = 0 - 0;
			v89 = nil;
			v87 = 1;
		end
		if (v87 == 1) then
			while true do
				if (v88 == (1249 - (111 + 1137))) then
					local v182 = 0;
					while true do
						if (v182 == (159 - (91 + 67))) then
							v88 = 2;
							break;
						end
						if (v182 == (0 - 0)) then
							local v200 = 0;
							while true do
								if ((1 + 0) == v200) then
									v182 = 524 - (423 + 100);
									break;
								end
								if (v200 == 0) then
									v89.SkyboxBk = "http://www.roblox.com/asset/?id=159454299";
									v89.SkyboxDn = "http://www.roblox.com/asset/?id=159454296";
									v200 = 1 + 0;
								end
							end
						end
					end
				end
				if (v88 == (0 - 0)) then
					local v183 = 0 + 0;
					while true do
						if (v183 == 1) then
							v88 = 772 - (326 + 445);
							break;
						end
						if (v183 == 0) then
							v89 = Instance.new(v7("\229\171\20", "\163\182\192\109\79"));
							v89.Parent = game.Lighting;
							v183 = 1;
						end
					end
				end
				if (v88 == 3) then
					v89.SkyboxRt = "http://www.roblox.com/asset/?id=159454300";
					v89.SkyboxUp = "http://www.roblox.com/asset/?id=159454288";
					v88 = 17 - 13;
				end
				if ((8 - 4) == v88) then
					v89.StarCount = 11671 - 6671;
					break;
				end
				if (v88 == 2) then
					v89.SkyboxFt = "http://www.roblox.com/asset/?id=159454293";
					v89.SkyboxLf = "http://www.roblox.com/asset/?id=159454286";
					v88 = 714 - (530 + 181);
				end
			end
			break;
		end
	end
end);
v11:Button(v7("\7\45\5\204\240\32\41\14\128\198\63\63\2\207\237", "\149\84\70\96\160"), function()
	print(v7("\8\20\8\254\43\3\9\173\58\19\25\249\55\8\76", "\141\88\102\109"));
end);
v11:Button(v7("\146\94\197\126\29\125\96\210\243\96\193\105\24\50\77", "\161\211\51\170\16\122\93\53"), function()
	print(v7("\203\188\183\59\232\171\182\104\249\187\166\60\244\160\243", "\72\155\206\210"));
end);
