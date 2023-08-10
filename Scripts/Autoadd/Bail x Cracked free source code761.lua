local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Bail X || Double Down ðŸ’°",
   LoadingTitle = "Bail X Hub",
   LoadingSubtitle = "by Cayson",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BailX", -- Create a custom folder for your hub/game
      FileName = "Bail X Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "wuRvx9KKCM", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Bail X || Key System",
      Subtitle = "Key in Private Channel",
      Note = "Buy the script to get the key.",
      FileName = "BailXKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/w0wbfs3h"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("ðŸ  Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You Executed Bail X",
   Content = "Thank you for purchasing the script. Enjoy the GUI",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Thank You!",
         Callback = function()
         print("The user tapped the button!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
   local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
local InfiniteJump = CreateButton("Infinite Jump: Off", StuffFrame)
InfiniteJump.Position = UDim2.new(0,10,0,130)
InfiniteJump.Size = UDim2.new(0,150,0,30)
InfiniteJump.MouseButton1Click:connect(function()
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
	local new = state == "Off" and "On" or state == "On" and "Off"
	InfiniteJumpEnabled = new == "On"
	InfiniteJump.Text = "Infinite Jump: " .. new
end)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Speed Changer",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})
local AnotherSection = MainTab:CreateSection("Rejoin")
local Button = MainTab:CreateButton({
   Name = "Rejoin (Good for AutoFarm)",
   Callback = function()
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Anti-AFK",
   Callback = function()
  wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text=" Rafety Roblox = W "
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
   end,
})

local SecondTab = Window:CreateTab("ðŸ’¸ Double Down", nil) -- Title, Image
local SecondSection = SecondTab:CreateSection("ðŸ§± Block Drop ðŸ§±")

local Click = SecondTab:CreateButton({
   Name = "AutoBlocks",
   Callback = function()
    local plr = game.Players.LocalPlayer
local vim = game:GetService("VirtualInputManager")

function clickButton(a)
    vim:SendMouseButtonEvent(a.AbsolutePosition.X + a.AbsoluteSize.X/2, a.AbsolutePosition.Y + 50, 0, true, a, 1)
    vim:SendMouseButtonEvent(a.AbsolutePosition.X + a.AbsoluteSize.X/2 ,a.AbsolutePosition.Y + 50, 0, false, a, 1)
end

function getArena()
    return plr.DataSave.DontSave.MostRecentArena.Value
end

function getTeam(arena)
    if arena.ArenaTemplate.Red.Character.Nametag.Frame.Username.Front.Text:match(plr.Name) then
        return "Red"
    else
        return "Blue"
    end
end

function dropBlock()
    clickButton(plr.PlayerGui.BlockDrop["Bottom Middle Template"].Buttons["Drop_Off"].Background)
end

local arena = getArena()
local team = getTeam(arena)
local board = arena.ArenaTemplate[team].Board

local num

local connections = {}
for _, tile in pairs(board:GetDescendants()) do
    if tile:IsA("MeshPart") then
        local con = tile:GetPropertyChangedSignal("Color"):Connect(function()
            local color = tile.Color
            if color == Color3.fromRGB(164, 164, 164) then
                if tile.Parent.Name == '1' and tile.Name == "3" then
                    dropBlock()
                    num = tile.Name
                else
                    if tile.Name == "3" and tile.Color == Color3.fromRGB(164, 164, 164) then
                        dropBlock()
                    end
                end
            end
        end)
        table.insert(connections, con)
    end
end

-- maybe works?
while task.wait() do
    if plr.PlayerGui.BlockDrop["End Game Template"].Visible then
        for _, con in pairs(connections) do
            con:Disconnect()
        end
        break
    end
end
   end,
})
local SecondSection = SecondTab:CreateSection("âš”ï¸ Sword Fight âš”ï¸")
local Button = SecondTab:CreateButton({
   Name = "Mobile Keyboard",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()   end,
})
local Button = SecondTab:CreateButton({
   Name = "Sword Fight (PRESS X TO USE)",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/1/main/bot'))()
   end,
})
local SecondSection = SecondTab:CreateSection("ðŸ¥¤ Cups ðŸ¥¤")
local Button = SecondTab:CreateButton({
   Name = "Color Coding (Watch YT Video To Understand)",
   Callback = function()
   
local highlightColors = {
    Color3.fromRGB(255, 255, 0),   -- Yellow
    Color3.fromRGB(255, 0, 0),     -- Red
    Color3.fromRGB(0, 0, 255),     -- Blue
    Color3.fromRGB(0, 255, 0),     -- Green
    Color3.fromRGB(255, 105, 180)  -- Hot pink
}

local currentColorIndex = 1
local mouse = game:GetService("Players").LocalPlayer:GetMouse()

local function highlightObject(object)
    if object:IsA("BasePart") then
        object.BrickColor = BrickColor.new(highlightColors[currentColorIndex])
        currentColorIndex = currentColorIndex % #highlightColors + 1
    end
end

mouse.Button1Down:Connect(function()
    local target = mouse.Target
    if target then
        highlightObject(target)
    end
end)
   end,
})

local Button = SecondTab:CreateButton({
   Name = "Btools (Required to break barrier)",
   Callback = function()
       local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
 
     -- Objects
 
    local ScreenGui = Instance.new("ScreenGui")
    local TextButton = Instance.new("TextButton")
    local On = Instance.new("StringValue")
 
    -- Properties
 
    ScreenGui.Parent = player.PlayerGui
 
    TextButton.Parent = ScreenGui
    TextButton.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0, 0, 0.455743879, 0)
    TextButton.Size = UDim2.new(0, 186, 0, 35)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = "Btools (Off)"
    TextButton.TextColor3 = Color3.new(0.27451, 0.27451, 0.27451)
    TextButton.TextScaled = true
    TextButton.TextSize = 14
    TextButton.TextWrapped = true
 
 
    On.Parent = TextButton
    On.Value = "Off"
 
    -- Scripts 
 
    TextButton.MouseButton1Up:Connect(function()
        if On.Value == "Off" then
            On.Value = "On"
            TextButton.Text = "Btools (On)"
        else
            On.Value = "Off"
            TextButton.Text = "Btools (Off)"
        end
    end)
 
    mouse.Button1Up:Connect(function()
        if On.Value == "Off" then
            print('btools off')
        else
            if mouse.Target.Locked == true then
                mouse.Target:Destroy()
            else
                mouse.Target:Destroy()
            end
        end
    end)

   end,
})

local AutoTab = Window:CreateTab("ðŸ˜´ Auto Farm", nil) -- Title, Image
local AutoSection = AutoTab:CreateSection("CLICK ME BEFORE AUTO FARM")
local Button = AutoTab:CreateButton({
   Name = "BLOCK (CLICK BEFORE USE)",
   Callback = function()
   while true do
    local success, result = pcall(function()
        local plr = game.Players.LocalPlayer
        local vim = game:GetService("VirtualInputManager")

        function clickButton(a)
            vim:SendMouseButtonEvent(a.AbsolutePosition.X + a.AbsoluteSize.X/2, a.AbsolutePosition.Y + 50, 0, true, a, 1)
            vim:SendMouseButtonEvent(a.AbsolutePosition.X + a.AbsoluteSize.X/2, a.AbsolutePosition.Y + 50, 0, false, a, 1)
        end

        function getArena()
            return plr.DataSave.DontSave.MostRecentArena.Value
        end

        function getTeam(arena)
            if arena.ArenaTemplate.Red.Character.Nametag.Frame.Username.Front.Text:match(plr.Name) then
                return "Red"
            else
                return "Blue"
            end
        end

        function dropBlock()
            clickButton(plr.PlayerGui.BlockDrop["Bottom Middle Template"].Buttons["Drop_Off"].Background)
        end

        local arena = getArena()
        local team = getTeam(arena)
        local board = arena.ArenaTemplate[team].Board

        local num

        local connections = {}
        for _, tile in pairs(board:GetDescendants()) do
            if tile:IsA("MeshPart") then
                local con = tile:GetPropertyChangedSignal("Color"):Connect(function()
                    local color = tile.Color
                    if color == Color3.fromRGB(164, 164, 164) then
                        if tile.Parent.Name == '1' and tile.Name == "3" then
                            dropBlock()
                            num = tile.Name
                        else
                            if tile.Name == "3" and tile.Color == Color3.fromRGB(164, 164, 164) then
                                dropBlock()
                            end
                        end
                    end
                end)
                table.insert(connections, con)
            end
        end

        if plr.PlayerGui.BlockDrop["End Game Template"].Visible then
            for _, con in pairs(connections) do
                con:Disconnect()
            end
            return
        end
    end)

    if not success then
        warn("An error occurred:", result)
    end

    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end

   end,
})

local AutoSection = AutoTab:CreateSection("10 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 10,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 10,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("20 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 20,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 20,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("30 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 30,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 30,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("40 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 40,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 40,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("50 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 50,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("100 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 100,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 100,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("150 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 150,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 150,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("200 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 200,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 200,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("300 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 300,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 300,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})


local AutoSection = AutoTab:CreateSection("400 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 400,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 400,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("500 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 500,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 500,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})

local AutoSection = AutoTab:CreateSection("1000 Robux")
local Input = AutoTab:CreateInput({
   Name = "Asset ID",
   PlaceholderText = "AssetID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 1000,
    [3] = {
        ["assetType"] = "Asset",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})
local Input = AutoTab:CreateInput({
   Name = "Gamepass ID",
   PlaceholderText = "GamepassID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
  while true do
    local args = {
    [1] = "BlockDrop",
    [2] = 1000,
    [3] = {
        ["assetType"] = "GamePass",
        ["assetId"] = (Text)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteCalls"):WaitForChild("GameSpecific"):WaitForChild("Tickets"):WaitForChild("CreateRoom"):InvokeServer(unpack(args))


    -- Delay for a specific duration (e.g., 1 second) before executing the loop again
    wait(1)
end



--Purchase to get full script
   end,
})


