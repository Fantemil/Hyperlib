local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("No Fun Simulator v1.0 | Nathanified", "DarkTheme")


-- tabs
local Main = Window:NewTab("Game")
local Client = Window:NewTab("Client")
local Scripts = Window:NewTab("Scripts")

-- sections
local MovementSection = Client:NewSection("Movement")
local MainSection = Main:NewSection("Game")
local ScriptsSection = Scripts:NewSection("Scripts")


-- buttons, etc
MovementSection:NewToggle("Speed", "makes you move fast while holding W", function(state)

    if state then
        local Player = game:service'Players'.LocalPlayer;
        local Mouse = Player:GetMouse();
    
        game:service'RunService'.RenderStepped:connect(function()
            if (game:service'UserInputService'):IsKeyDown(Enum.KeyCode.W) then
                Player.Character.HumanoidRootPart.CFrame =
                Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1);
            end;
        end);
    else
        local Player = game:service'Players'.LocalPlayer;
        local Mouse = Player:GetMouse();
    
        game:service'RunService'.RenderStepped:connect(function()
            if (game:service'UserInputService'):IsKeyDown(Enum.KeyCode.W) then
                Player.Character.HumanoidRootPart.CFrame =
                Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,1);
            end;
        end);
    end
end)

MovementSection:NewButton("Inf jump", "runs inf jump", function()
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

ScriptsSection:NewButton("Infinity Yield", "runs inf yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

ScriptsSection:NewButton("CMD-X", "runs CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)

MainSection:NewToggle("Grab aura", "auto grabs all in range when on, a bit buggy", function(state)
    enabled = false
    if state then
        enabled = true
    else
        enabled = false
    end
    print(enabled)
        while enabled == true do wait(0.1)
            for _,v in ipairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                local args = {
                [1] = v.Character,
                [2] = false,
                [3] = 1
                }
                workspace.RemoteEvent:FireServer(unpack(args))
                end
            if enabled == false then
                break
            end
        end
    end
end)