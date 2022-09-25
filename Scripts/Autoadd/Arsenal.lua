local Arsenalhaxx = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local RGB = Instance.new("Frame")
local MainTitle = Instance.new("TextLabel")
local ESP = Instance.new("TextButton")
local Aimbot = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local ctrldel = Instance.new("TextButton")
local destrust = Instance.new("TextButton")

Arsenalhaxx.Name = "Arsenalhaxx"
Arsenalhaxx.Parent = game.CoreGui
Arsenalhaxx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Arsenalhaxx
MainFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
MainFrame.BackgroundTransparency = 0.5
MainFrame.Position = UDim2.new(0.152500004, 0, 0.26289925, 0)
MainFrame.Size = UDim2.new(0, 269, 0, 202)
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

RGB.Name = "RGB"
RGB.Parent = MainFrame
RGB.BackgroundColor3 = Color3.new(1, 1, 1)
RGB.Size = UDim2.new(0, 269, 0, 27)
RGB.Visible = true

MainTitle.Name = "MainTitle"
MainTitle.Parent = MainFrame
MainTitle.BackgroundColor3 = Color3.new(1, 1, 1)
MainTitle.BackgroundTransparency = 1
MainTitle.BorderColor3 = Color3.new(1, 1, 1)
MainTitle.Size = UDim2.new(0, 269, 0, 27)
MainTitle.Font = Enum.Font.SourceSansBold
MainTitle.Text = "STEEK [ARSENAL]"
MainTitle.TextColor3 = Color3.new(1, 1, 1)
MainTitle.TextSize = 14

ESP.Name = "ESP"
ESP.Parent = MainFrame
ESP.BackgroundColor3 = Color3.new(1, 1, 1)
ESP.BackgroundTransparency = 1
ESP.Position = UDim2.new(0, 0, 0.17326732, 0)
ESP.Size = UDim2.new(0, 269, 0, 22)
ESP.Font = Enum.Font.SourceSansBold
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(1, 1, 1)
ESP.TextSize = 14
ESP.MouseButton1Click:connect(function()
 ALLYCOLOR={0,255,255}ENEMYCOLOR={255,0,0}TRANSPARENCY=0.5;HEALTHBAR_ACTIVATED=true;function createFlex()players=game:GetService("Players")faces={"Front","Back","Bottom","Left","Right","Top"}currentPlayer=nil;lplayer=players.LocalPlayer;players.PlayerAdded:Connect(function(k)currentPlayer=k;k.CharacterAdded:Connect(function(l)createESP(l)end)end)function checkPart(m)if(m:IsA("Part")or m:IsA("MeshPart"))and m.Name~="HumanoidRootPart"then return true end end;function actualESP(m)for n=0,5 do surface=Instance.new("SurfaceGui",m)surface.Face=Enum.NormalId[faces[n+1]]surface.AlwaysOnTop=true;frame=Instance.new("Frame",surface)frame.Size=UDim2.new(1,0,1,0)frame.BorderSizePixel=0;frame.BackgroundTransparency=TRANSPARENCY;if currentPlayer.Team==players.LocalPlayer.Team then frame.BackgroundColor3=Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])else frame.BackgroundColor3=Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])end end end;function createHealthbar(o)board=Instance.new("BillboardGui",o)board.Name="total"board.Size=UDim2.new(1,0,1,0)board.StudsOffset=Vector3.new(3,1,0)board.AlwaysOnTop=true;bar=Instance.new("Frame",board)bar.BackgroundColor3=Color3.new(255,0,0)bar.BorderSizePixel=0;bar.Size=UDim2.new(0.2,0,4,0)bar.Name="total2"health=Instance.new("Frame",bar)health.BackgroundColor3=Color3.new(0,255,0)health.BorderSizePixel=0;health.Size=UDim2.new(1,0,o.Parent.Humanoid.Health/100,0)o.Parent.Humanoid.Changed:Connect(function(p)o.total.total2.Frame.Size=UDim2.new(1,0,o.Parent.Humanoid.Health/100,0)end)end;function createESP(q)bugfix=q:WaitForChild("Head")for n,r in pairs(q:GetChildren())do if checkPart(r)then actualESP(r)end end;if HEALTHBAR_ACTIVATED then createHealthbar(q:WaitForChild("HumanoidRootPart"))end end;for n,s in pairs(players:GetChildren())do if s~=players.LocalPlayer then currentPlayer=s;createESP(s.Character)s.CharacterAdded:Connect(function(l)createESP(l)end)end end end;createFlex() 
-- WALLHACK
end)
Aimbot.Name = "Aimbot"
Aimbot.Parent = MainFrame
Aimbot.BackgroundColor3 = Color3.new(1, 1, 1)
Aimbot.BackgroundTransparency = 1
Aimbot.Position = UDim2.new(0, 0, 0.282178223, 0)
Aimbot.Size = UDim2.new(0, 269, 0, 22)
Aimbot.Font = Enum.Font.SourceSansBold
Aimbot.Text = "AIMBOT [E]"
Aimbot.TextColor3 = Color3.new(1, 1, 1)
Aimbot.TextSize = 14
Aimbot.MouseButton1Click:connect(function()
  PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera
 
_G.AIM_AT = 'Head'
_G.BIND   = 101 -- E
 
function GetNearestPlayerToMouse()
    local PLAYERS      = {}
    local PLAYER_HOLD  = {}
    local DISTANCES    = {}
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= PLAYER then
            table.insert(PLAYERS, v)
        end
    end
    for i, v in pairs(PLAYERS) do
            if v and (v.Character) ~= nil and v.Team ~= PLAYER.Team then
                local AIM = v.Character:FindFirstChild(_G.AIM_AT)
                if AIM ~= nil then
                    local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
                    local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
                    local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                    local DIFF                     = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i]       = {}
                    PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr   = v
                    PLAYER_HOLD[v.Name .. i].diff  = DIFF
                    table.insert(DISTANCES, DIFF)
                end
            end
        end
   
    if unpack(DISTANCES) == nil then
        return false
    end
   
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > 20 then
        return false
    end
   
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return false
end
 
MOUSE.KeyDown:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.BIND then
        ENABLED = true
    end
end)
 
MOUSE.KeyUp:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.BIND then
        ENABLED = false
    end
end)
 
game:GetService('RunService').RenderStepped:connect(function()
    if ENABLED then
        local TARGET = GetNearestPlayerToMouse()
        if (TARGET ~= false) then
            local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
            if AIM then
                CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
            end
        end
    end
end) -- AIMBOT [E]
end)

fly.Name = "fly"
fly.Parent = MainFrame
fly.BackgroundColor3 = Color3.new(1, 1, 1)
fly.BackgroundTransparency = 1
fly.Position = UDim2.new(0, 0, 0.391089112, 0)
fly.Size = UDim2.new(0, 269, 0, 22)
fly.Font = Enum.Font.SourceSansBold
fly.Text = "FLY [V]"
fly.TextColor3 = Color3.new(1, 1, 1)
fly.TextSize = 14
fly.MouseButton1Click:connect(function()
 repeat wait()until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("UpperTorso")and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")local y=game.Players.LocalPlayer:GetMouse()repeat wait()until y;local z=game.Players.LocalPlayer;local L=z.Character.UpperTorso;local M=true;local N=true;local O={f=0,b=0,l=0,r=0}local P={f=0,b=0,l=0,r=0}local Q=50;local H=0;function Fly()local R=Instance.new("BodyGyro",L)R.P=9e4;R.maxTorque=Vector3.new(9e9,9e9,9e9)R.cframe=L.CFrame;local S=Instance.new("BodyVelocity",L)S.velocity=Vector3.new(0,0.1,0)S.maxForce=Vector3.new(9e9,9e9,9e9)repeat wait()z.Character.Humanoid.PlatformStand=true;if O.l+O.r~=0 or O.f+O.b~=0 then H=H+.5+H/Q;if H>Q then H=Q end elseif not(O.l+O.r~=0 or O.f+O.b~=0)and H~=0 then H=H-1;if H<0 then H=0 end end;if O.l+O.r~=0 or O.f+O.b~=0 then S.velocity=(game.Workspace.CurrentCamera.CoordinateFrame.lookVector*(O.f+O.b)+game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(O.l+O.r,(O.f+O.b)*.2,0).p-game.Workspace.CurrentCamera.CoordinateFrame.p)*H;P={f=O.f,b=O.b,l=O.l,r=O.r}elseif O.l+O.r==0 and O.f+O.b==0 and H~=0 then S.velocity=(game.Workspace.CurrentCamera.CoordinateFrame.lookVector*(P.f+P.b)+game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(P.l+P.r,(P.f+P.b)*.2,0).p-game.Workspace.CurrentCamera.CoordinateFrame.p)*H else S.velocity=Vector3.new(0,0.1,0)end;R.cframe=game.Workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad((O.f+O.b)*50*H/Q),0,0)until not M;O={f=0,b=0,l=0,r=0}P={f=0,b=0,l=0,r=0}H=0;R:Destroy()S:Destroy()z.Character.Humanoid.PlatformStand=false end;y.KeyDown:connect(function(G)if G:lower()=="v"then if M then M=false else M=true;Fly()end elseif G:lower()=="w"then O.f=1 elseif G:lower()=="s"then O.b=-1 elseif G:lower()=="a"then O.l=-1 elseif G:lower()=="d"then O.r=1 end end)y.KeyUp:connect(function(G)if G:lower()=="w"then O.f=0 elseif G:lower()=="s"then O.b=0 elseif G:lower()=="a"then O.l=0 elseif G:lower()=="d"then O.r=0 end end)Fly()
end)
ctrldel.Name = "ctrldel"
ctrldel.Parent = MainFrame
ctrldel.BackgroundColor3 = Color3.new(1, 1, 1)
ctrldel.BackgroundTransparency = 1
ctrldel.Position = UDim2.new(0, 0, 0.5, 0)
ctrldel.Size = UDim2.new(0, 269, 0, 22)
ctrldel.Font = Enum.Font.SourceSansBold
ctrldel.Text = "CTRL DELETE"
ctrldel.TextColor3 = Color3.new(1, 1, 1)
ctrldel.TextSize = 14
ctrldel.MouseButton1Click:connect(function()
 local Plr = game:GetService("Players").LocalPlayer -- CTRL NO WALLS
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
end)
end)

destrust.Name = "destrust"
destrust.Parent = MainFrame
destrust.BackgroundColor3 = Color3.new(1, 1, 1)
destrust.BackgroundTransparency = 1
destrust.Position = UDim2.new(0, 0, 0.608910918, 0)
destrust.Size = UDim2.new(0, 269, 0, 22)
destrust.Font = Enum.Font.SourceSansBold
destrust.Text = "SELF DESTRUCT"
destrust.TextColor3 = Color3.new(1, 1, 1)
destrust.TextSize = 14
destrust.MouseButton1Click:connect(function()
 Arsenalhaxx:Destroy()
end)

function SCRIPT_JZPL83_FAKESCRIPT() -- Xs2.LocalScript 
 local script = Instance.new('LocalScript')
 script.Parent = RGB
 repeat
     for hue = 0, 1, .01 do
         script.Parent.Parent.RGB.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
         wait(0.3)
     end
     for hue = 1, 0 -.01 do
         script.Parent.Parent.RGB.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
         wait(0.3)
     end
 until nil

end
coroutine.resume(coroutine.create(SCRIPT_JZPL83_FAKESCRIPT))

game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "STEEK[ARSENAL]";
Text = "Loaded.";
Duration = 15;
})
wait(2)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "STEEK[ARSENAL]";
Text = "Made by TSQ";
Duration = 15;
})