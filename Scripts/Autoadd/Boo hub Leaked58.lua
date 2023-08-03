if game.PlaceId == 537413528 then
   local PlaceId = game.PlaceId

local BooHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/zachisfunny/BooHub/main/Boo"))()

local UI = BooHub.Load({
     Title = "👻 Boo Hub",
     Style = 0,
     SizeX = 400,
     SizeY = 300,
     Theme = "Dark"
})

local Page = UI.New({
    Title = "Toggles"
})

local Page2 = UI.New({
    Title = "Extras"
})

local Page3 = UI.New({
    Title = "Teleports"
})

Page.Label({
    Text = "Leaked by KD"
})


Page.Toggle({ -- toggles a script, on or off
    Text = "Infinite Jump",
    Callback = function(value)
        getgenv().inf = value
        spawn(function()
            while inf == true do
                if (inf == false) then break end
game:GetService("UserInputService").JumpRequest:connect(function()
	if inf then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
wait()
end
end)
    end,
    Enabled = false
})


Page.Toggle({ -- toggles a script, on or off
    Text = "Auto Farm",
    Callback = function(value)
        --// Services
local players = game:GetService("Players")
 
--// Workspace
local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
local penguin, gold = workspace:WaitForChild("ChangeCharacter"), workspace:WaitForChild("ClaimRiverResultsGold")
 
--// Other
local client = game.Players.LocalPlayer
 
--// Main
---------
_G.Busy = value
while _G.Busy do
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.Parent = client.Character.HumanoidRootPart
    
    for i = 1, 9 do
        if not client.Character or not client.Character:FindFirstChild("Humanoid") then
            repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
        end
 
        client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame wait(0.1)
        
        if not _G.Busy then
            client.Character.Humanoid.Health = 0
            exit(0)
        end
        
        if i == 1 then
            wait(6)
        else
            wait(3)
        end
        
        gold:FireServer()
    end
    
    client.Character:Remove()

    repeat wait() 
    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
    
end
---------
    end,
    Enabled = false
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Water GodMode",
    Callback = function(value)
        getgenv().Water = value
        game:GetService('RunService').Stepped:connect(function()
        pcall(function()
        if getgenv().Water and game.Players.LocalPlayer.Character:FindFirstChild("WaterDetector")  then
        game.Players.LocalPlayer.Character.WaterDetector:remove()
        end end) end)
    end,
    Enabled = false
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Auto Common Chest",
    Callback = function(value)
        getgenv().Number = 1
        getgenv().Common = value
        game:GetService('RunService').Stepped:connect(function()
        if getgenv().Common then
        workspace.ItemBoughtFromShop:InvokeServer("Common Chest",getgenv().Number)
        end 
        end)
    end,
    Enabled = false
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Auto Uncommon Chest",
    Callback = function(value)
        getgenv().UnCommon = value
        getgenv().Number = 1
        game:GetService('RunService').Stepped:connect(function()
        if getgenv().UnCommon then
        workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest",getgenv().Number)
        end
        end)
    end,
    Enabled = false
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Auto Rare Chest",
    Callback = function(value)
        getgenv().Rare = value
        getgenv().Number = 1
        game:GetService('RunService').Stepped:connect(function()
        if getgenv().Rare then
        workspace.ItemBoughtFromShop:InvokeServer("Rare Chest",getgenv().Number)
        end
        end)
    end,
    Enabled = false
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Auto Epic Chest",
    Callback = function(value)
        getgenv().Epic = value
        getgenv().Number = 1
        game:GetService('RunService').Stepped:connect(function()
        if getgenv().Epic then
        workspace.ItemBoughtFromShop:InvokeServer("Epic Chest",getgenv().Number)
        end
        end)
    end,
    Enabled = false
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Auto Legendary Chest",
    Callback = function(value)
        getgenv().Legendary = value
        getgenv().Number = 1
        game:GetService('RunService').Stepped:connect(function()
        if getgenv().Legendary then
        workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest",getgenv().Number)
        end 
        end)
    end,
    Enabled = false
})

Page2.Button({
    Text = "Fly",
    Callback = function()
        local FlyingKey = Enum.KeyCode.B
        loadstring(game:HttpGet('https://raw.githubusercontent.com/zachisfunny/Fly-Script/main/Script'))()
    end
})

Page2.Button({ -- is a button
    Text = "Vehicly Fly",
    Callback = function()
        local FlyKey = Enum.KeyCode.V
        local SpeedKey = Enum.KeyCode.LeftControl
        
        local SpeedKeyMultiplier = 3
        local FlightSpeed = 256
        local FlightAcceleration = 4
        local TurnSpeed = 16
        
        -- made by zach
        
        -- enjoy :3
        
        local UserInputService = game:GetService("UserInputService")
        local StarterGui = game:GetService("StarterGui")
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local User = Players.LocalPlayer
        local Camera = workspace.CurrentCamera
        local UserCharacter = nil
        local UserRootPart = nil
        local Connection = nil
        
        
        workspace.Changed:Connect(function()
            Camera = workspace.CurrentCamera
        end)
        
        local setCharacter = function(c)
            UserCharacter = c
            UserRootPart = c:WaitForChild("HumanoidRootPart")
        end
        
        User.CharacterAdded:Connect(setCharacter)
        if User.Character then
            setCharacter(User.Character)
        end
        
        local CurrentVelocity = Vector3.new(0,0,0)
        local Flight = function(delta)
            local BaseVelocity = Vector3.new(0,0,0)
            if not UserInputService:GetFocusedTextBox() then
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    BaseVelocity = BaseVelocity + (Camera.CFrame.LookVector * FlightSpeed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    BaseVelocity = BaseVelocity - (Camera.CFrame.RightVector * FlightSpeed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    BaseVelocity = BaseVelocity - (Camera.CFrame.LookVector * FlightSpeed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    BaseVelocity = BaseVelocity + (Camera.CFrame.RightVector * FlightSpeed)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    BaseVelocity = BaseVelocity + (Camera.CFrame.UpVector * FlightSpeed)
                end
                if UserInputService:IsKeyDown(SpeedKey) then
                    BaseVelocity = BaseVelocity * SpeedKeyMultiplier
                end
            end
            if UserRootPart then
                local car = UserRootPart:GetRootPart()
                if car.Anchored then return end
                if not isnetworkowner(car) then return end
                CurrentVelocity = CurrentVelocity:Lerp(
                    BaseVelocity,
                    math.clamp(delta * FlightAcceleration, 0, 1)
                )
                car.Velocity = CurrentVelocity + Vector3.new(0,2,0)
                if car ~= UserRootPart then
                    car.RotVelocity = Vector3.new(0,0,0)
                    car.CFrame = car.CFrame:Lerp(CFrame.lookAt(
                        car.Position,
                        car.Position + CurrentVelocity + Camera.CFrame.LookVector
                    ), math.clamp(delta * TurnSpeed, 0, 1))
                end
            end
        end
        
        UserInputService.InputBegan:Connect(function(userInput,gameProcessed)
            if gameProcessed then return end
            if userInput.KeyCode == FlyKey then
                if Connection then
                    StarterGui:SetCore("SendNotification",{
                        Title = "zachs car fly",
                        Text = "Flight disabled"
                    })
                    Connection:Disconnect()
                    Connection = nil
                else
                    StarterGui:SetCore("SendNotification",{
                        Title = "zachs car fly",
                        Text = "Flight enabled"
                    })
                    CurrentVelocity = UserRootPart.Velocity
                    Connection = RunService.Heartbeat:Connect(Flight)
                end
            end
        end)
        
        StarterGui:SetCore("SendNotification",{
            Title = "zachs car fly",
            Text = "Loaded successfully, Press V to toggle"
        })
    end
})

Page2.TextField({ -- you can type things in this
    Text = "HipHeight, Numbers Only",
    Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
    end
})
Page2.TextField({ -- you can type things in this
    Text = "Walkspeed, Numbers Only",
    Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

Page2.TextField({ -- you can type things in this
    Text = "JumpPower, Numbers Only",
    Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

Page2.Button({ -- is a button
    Text = "Fox Morph",
    Callback = function()
        workspace.ChangeCharacter:FireServer("FoxCharacter") 
    end
})

Page2.Button({ -- is a button
    Text = "Penguin Morph",
    Callback = function()
        workspace.ChangeCharacter:FireServer("PenguinCharacter")
    end
})

Page2.Button({ -- is a button
    Text = "Chicken Morph",
    Callback = function()
        workspace.ChangeCharacter:FireServer("ChickenCharacter")
    end
})

Page2.Button({ -- is a button
    Text = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Blue",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Really blueZone"].CFrame * CFrame.new(0,5,0)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Black",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlackZone.CFrame * CFrame.new(0,5,0)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Magenta",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MagentaZone.CFrame * CFrame.new(0,5,0)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Red",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(221.12088, -9.89999676, -64.0851135, 0.0238732975, -3.54099043e-08, -0.999714971, 3.27503464e-08, 1, -3.46379174e-08, 0.999714971, -3.19140909e-08, 0.0238732975)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Yellow",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["New YellerZone"].CFrame * CFrame.new(0,5,0)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Green",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CamoZone.CFrame * CFrame.new(0,5,0)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To White",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WhiteZone.CFrame * CFrame.new(0,5,0)
    end
})

Page3.Button({ -- is a button
    Text = "Teleport To Void",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(math.huge,math.huge,math.huge)
    end
})

Page3.Button({ -- is a button
    Text = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

Page3.Button({ -- is a button
    Text = "Server Hop",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

Page2.Button({ -- is a button
    Text = "Anti-AFK",
    Callback = function()
        wait(3)
        local VirtualUser=game:service'VirtualUser'
        game:service('Players').LocalPlayer.Idled:connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
        end)
    end
})

Page2.Button({ -- toggles a script, on or off
    Text = "Anti-LAG",
    Callback = function()
for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then --- i stole this from the actual game LOL >-<
v.Material = Enum.Material.SmoothPlastic;
if v:IsA("Texture") then
v:Destroy();
end end;		
end;
    end
})

Page.Toggle({ -- toggles a script, on or off
    Text = "Get a ton of some Blocks",
    Callback = function(value)
_G.RUN = value
spawn(function()
coroutine.wrap(function()
while _G.RUN do wait()
coroutine.wrap(function()
while _G.RUN do wait()
workspace.ItemBoughtFromShop:InvokeServer("Winter Chest",math.floor(game:GetService("Players").LocalPlayer.Data.Gold.Value / 100))
end
end)()
end
end)()
end)
    end,
    Enabled = false
})


end