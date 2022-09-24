local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Mental Battlegrounds v1.2 | Nathanified", "DarkTheme")

--| TABS |--

local Main = Window:NewTab("Main")
local Client = Window:NewTab("Client")



--| MOVEMENT SECTION (CLIENT TAB) |--

local MovementSection = Client:NewSection("Movement") 

MovementSection:NewToggle("Speed (move fast while holding W)", "desc in name btw", function(state)

    if state then
        local Player = game:service'Players'.LocalPlayer;
        local Mouse = Player:GetMouse();
    
        game:service'RunService'.RenderStepped:connect(function()
            if (game:service'UserInputService'):IsKeyDown(Enum.KeyCode.W) then
                Player.Character.HumanoidRootPart.CFrame =
                Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2);
            end;
        end);
    else
        local Player = game:service'Players'.LocalPlayer;
        local Mouse = Player:GetMouse();
    
        game:service'RunService'.RenderStepped:connect(function()
            if (game:service'UserInputService'):IsKeyDown(Enum.KeyCode.W) then
                Player.Character.HumanoidRootPart.CFrame =
                Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2);
            end;
        end);
    end
end)

MovementSection:NewSlider("Jumppower", "changes your jumppower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

MovementSection:NewButton("Inf Jump", "runs inf jump", function()
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';

    _G.JumpHeight = 50;

    function Action(Object, Function) if Object ~= nil then Function(Object); end end

    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
end)

MovementSection:NewButton("ClickTP", "press E to tp to mouse", function()
    plr = game.Players.LocalPlayer 
    hum = plr.Character.HumanoidRootPart 
    mouse = plr:GetMouse() 
    
    mouse.KeyDown:connect(function(key) 
        if key == "e" then 
            if mouse.Target then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
            end 
        end 
    end)
end)



--| MAIN SECTION (MAIN TAB) |--

local MainSection = Main:NewSection("Main")

MainSection:NewToggle("Autofarm diamonds", "grabs all diamonds as they spawn", function(state)
    enabled = false
    if state then
        enabled = true
    else
        enabled = false
    end
    print(enabled)
    while enabled == true do
        local Object = game:GetService("Workspace")[".Ignore"][".ServerEffects"]:WaitForChild("Diamond") -- object to tp to
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Object.CFrame
            wait(0.1)
        if enabled == false then
            break
        end
    end
end)

MainSection:NewToggle("Autofarm shards", "grabs all shards as they spawn", function(state)
    enabled = false
    if state then
        enabled = true
    else
        enabled = false
    end
    print(enabled)
    while enabled == true do
        local Object = game:GetService("Workspace")[".Ignore"][".ServerEffects"]:WaitForChild("Shard")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Object.CFrame
            wait(0.1)
        if enabled == false then
            break
        end
    end
end)

MainSection:NewToggle("Safe mode", "loop tp far away so you dont get caught autofarming", function(state)
    enabled = false
    if state then
        enabled = true
    else
        enabled = false
    end
    print(enabled)
    while enabled == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-67.5338287, 219.486725, 2621.48853)
        wait(0.5)
        if enabled == false then
            break
        end
    end
end)