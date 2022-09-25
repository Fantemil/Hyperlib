 repeat wait() until game:IsLoaded()

local function sendNotification(input)
    local ScreenGui = Instance.new("ScreenGui")
    local Notification = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")

    ScreenGui.Parent = game.CoreGui
    ScreenGui.Name = tostring(math.random(1, 999))
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Notification.Name = "Notification"
    Notification.Parent = ScreenGui
    Notification.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Notification.BorderSizePixel = 0
    Notification.Size = UDim2.new(1, 0, 0.02, 0)
    Notification.Position = UDim2.new(0, 0,-0.1, 0)
    
    TextLabel.Parent = Notification
    TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.499703437, 0, 0.5, 0)
    TextLabel.Size = UDim2.new(1.00059307, 0, 1, 0)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = ""
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.TextSize = 14

 Notification:TweenPosition(UDim2.new(0, 0,0, 0), 'Out', 'Linear', 0.5)
 for i=1, #input do
  TextLabel.Text = string.sub(input, 1, i)
  wait(0.05)
 end
    wait(5)
    Notification:TweenPosition(UDim2.new(0, 0,-0.1, 0), 'Out', 'Linear', 0.5)
    wait(1)
    Notification:Destroy()
end

if not getgenv().DashFE then
 getgenv().DashFE = true
    if setclipboard then
        setclipboard('https://discord.gg/vu3Funvzfm')
        sendNotification('Dash FE created by ArilisDev & Caspertheghost | If redistributed please credit us, including any code taken. | Discord set to clipboard.')
    else
        sendNotification('Dash FE created by ArilisDev & Caspertheghost | If redistributed please credit us, including any code taken. | https://discord.gg/vu3Funvzfm')
    end
    
    
else
 sendNotification('Dash FE is already loaded.') 
 return
end

local dragger = {}
do
 repeat wait() until game:GetService("Players").LocalPlayer
 local mouse        = game:GetService("Players").LocalPlayer:GetMouse()
 local inputService = game:GetService('UserInputService')
 local heartbeat    = game:GetService("RunService").Heartbeat
 function dragger.new(frame, secondlol)
  frame.Active = true
  secondlol.Active = true
  secondlol.MouseLeave:connect(function()
   IsInFrame = false
  end)
  secondlol.MouseEnter:connect(function()
   IsInFrame = true
  end)
  local input = secondlol.InputBegan:connect(function(key)
   if key.UserInputType == Enum.UserInputType.MouseButton1 and IsInFrame then
    local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y)
    while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
     pcall(function()
      frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.01, true)
     end)
    end
   end
  end)
 end
end

local ScreenGui = Instance.new("ScreenGui")
local UIS = game:GetService("UserInputService")
local Base = Instance.new("Frame")
local Top = Instance.new("Frame")
local TopLabel = Instance.new("TextLabel")
local SearchBox = Instance.new("TextBox")
local CommandsFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game:GetService('CoreGui')
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Base.Name = "Base"
Base.Parent = ScreenGui
Base.AnchorPoint = Vector2.new(0.5, 0.5)
Base.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0.5, 0, 0.499261439, 0)
Base.Size = UDim2.new(0, 299, 0, 209)

Top.Name = "Top"
Top.Parent = Base
Top.AnchorPoint = Vector2.new(0.5, 0.5)
Top.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.500000417, 0, 0.0327542685, 0)
Top.Size = UDim2.new(0, 299, 0, 15)

TopLabel.Name = "TopLabel"
TopLabel.Parent = Top
TopLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TopLabel.BackgroundTransparency = 1
TopLabel.BorderSizePixel = 0
TopLabel.Position = UDim2.new(0.0200668778, 0, 0, 0)
TopLabel.Size = UDim2.new(0.979932487, 0, 1, 0)
TopLabel.Font = Enum.Font.GothamSemibold
TopLabel.Text = "Dash FE"
TopLabel.TextColor3 = Color3.new(1, 1, 1)
TopLabel.TextSize = 10
TopLabel.TextXAlignment = Enum.TextXAlignment.Left

SearchBox.Name = "SearchBox"
SearchBox.Parent = Base
SearchBox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
SearchBox.BorderSizePixel = 0
SearchBox.Position = UDim2.new(0.0301003344, 0, 0.1291866, 0)
SearchBox.Size = UDim2.new(0, 280, 0, 22)
SearchBox.Font = Enum.Font.SourceSans
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.new(1, 1, 1)
SearchBox.TextSize = 14

CommandsFrame.Name = "CommandsFrame"
CommandsFrame.Parent = Base
CommandsFrame.Active = true
CommandsFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
CommandsFrame.BorderSizePixel = 0
CommandsFrame.Position = UDim2.new(0.0301003344, 0, 0.291866034, 0)
CommandsFrame.Size = UDim2.new(0, 280, 0, 136)
CommandsFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CommandsFrame.ScrollBarThickness = 6
CommandsFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
dragger.new(Base, Base)
dragger.new(Base, Top)
dragger.new(Base, CommandsFrame)

UIListLayout.Parent = CommandsFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
local LocalPlayer = game:GetService('Players').LocalPlayer
repeat
 wait()
until LocalPlayer.Character
local CharacterType

game:GetService('RunService').Stepped:Connect(function(i)
 if i > 0.5 then
  i = 0
 end
 if LocalPlayer.Character:FindFirstChild('Torso') then
  CharacterType = "R6"
 else
  CharacterType = "R15"
 end
end)

getgenv().findPlayer = function(String)
    if String ~= nil then
        for _,v in pairs(game:GetService('Players'):GetPlayers()) do
   if string.find(string.lower(v.Name),string.lower(String)) then
    return v
   end
  end
    else
        sendNotification("You did not specify a player to teleport to.")
    end
end

getgenv().Status = {
    Noclip = false,
    FEBlocks = false,
    Flying = false
}

getgenv().Commands = {
    ["cmds"] = {function()
        local Count = 0
        for i,v in pairs(Commands) do
            Count = Count + 1
        end
        print(string.format("> total commands - %s", Count))
        table.foreach(Commands, function(i,v)
            print(string.format("> %s - [%s] - [Aliases [%s]]", i,v[2].Desc,table.concat(v[2].Alts, ", ")))
        end)
    end, {Desc = "prints every available command.", Alts = {"help", "cmd"}}},
    ["walkspeed"] = {function(input)
        if tonumber(input) then
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = input
            else
                sendNotification('Failed to find humanoid.')    
            end 
        else
            sendNotification('The specified walkspeed is not an integer.')
        end 
    end, {Desc = "changes your players walkspeed.", Alts = {"ws", "speed"}}},
    ["jumppower"] = {function(input)
        if tonumber(input) then
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = input
            else
                sendNotification('Failed to find humanoid.')    
            end 
        else
            sendNotification('The specified jumppower is not an integer.')
        end 
    end, {Desc = "changes your players jumppower.", Alts = {"jp", "superjump"}}},
    ["hipheight"] = {function(input)
        if tonumber(input) then
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight = input
            else
                sendNotification('Failed to find humanoid.')    
            end 
        else
            sendNotification('The specified hipheight is not an integer.')
        end 
    end, {Desc = "changes your players hipheight.", Alts = {"hh", "height"}}},
    ["gravity"] = {function(input)
        if tonumber(input) then
            game:GetService('Workspace').Gravity = tonumber(input)
        else
            sendNotification('The specified gravity is not an integer.')
        end 
    end, {Desc = "changes the worlds gravity.", Alts = {}}},
    ["noclip"] = {function()
        rawset(Status,'Noclip',not Status.Noclip)
        coroutine.wrap(function()
            while game:GetService("RunService").Stepped:Wait() and Status.Noclip do
                if LocalPlayer.Character then
                    for _,obj in next,LocalPlayer.Character:GetDescendants() do
                        if obj:IsA("BasePart") and obj.CanCollide then
                            obj.CanCollide=false
                        end
                    end
                end
            end
        end)()
    end, {Desc = "walk through walls.", Alts = {"clip"}}},
    ["goto"] = {function(input)
        local Players = game:GetService('Players')
        local Player = findPlayer(input)

        if Player then
            if Player.Character then
                if Player.Character.PrimaryPart then
                    game:GetService('Players').LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Player.Character.PrimaryPart.Position)
                else
                    sendNotification("Failed to find players primary part.")
                end
            else
                sendNotification("The specified player is not spawned in.")
            end
        else
            sendNotification(string.format('Failed to find player [%s]', input))
        end
    end, {Desc = "teleport to a specified player.", Alts = {"tp", "teleport"}}},
    ["rejoin"] = {function()
        getgenv().DashFE = false
        if syn.queue_on_teleport then
            syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
        end
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService('Players'))
    end, {Desc = "rejoin the current game instance (does not re-execute the script)", Alts = {}}},
    ["removelimbs"] = {function()
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA('Part') or v:IsA('MeshPart') then
                if CharacterType == "R6" then
                    if v.Name ~= "Torso" and v ~= LocalPlayer.Character.PrimaryPart then
                        v:Destroy()
                    end
                else
                    if v.Name ~= "UpperTorso" and v ~= LocalPlayer.Character.PrimaryPart then
                        v:Destroy()
                    end
                end
            end
        end
    end, {Desc = "removes your characters limbs.", Alts = {}}},
    ["feremovelimbs"] = {function()
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA('Part') or v:IsA('MeshPart') then
                if CharacterType == "R6" then
                    if v.Name == 'Torso' then
                        if v:FindFirstChild('Right Shoulder') then
                            v['Right Shoulder']:Destroy()
                        elseif v:FindFirstChild('Left Shoulder') then
                            v['Left Shoulder']:Destroy()
                        elseif v:FindFirstChild('Right Hip') then
                            v['Right Hip']:Destroy()
                        elseif v:FindFirstChild('Left Hip') then
                            v['Left Hip']:Destroy()
                        end
                    end
                else
                    if v.Name == 'RightUpperArm' then
                        v.RightShoulder:Destroy()
                    elseif v.Name == 'LeftUpperArm' then
                        v.LeftShoulder:Destroy()
                    elseif v.Name == 'LeftUpperLeg' then
                        v.LeftHip:Destroy()
                    elseif v.Name == 'RightUpperLeg' then
                        v.RightHip:Destroy()
                    end
                    
                end
            end
        end
    end, {Desc = "[FE] removes your characters limbs.", Alts = {}}},
    ["fesplit"] = {function()
        if CharacterType == "R6" then
            sendNotification('This command currently only supports R15 characters.')
        else
            if LocalPlayer.Character.UpperTorso then
                if LocalPlayer.Character.UpperTorso.Waist then
                    LocalPlayer.Character.UpperTorso.Waist:Destroy()
                end
            end
        end
    end, {Desc = "[FE] [R15] splits your character in half.", Alts = {"split"}}},
    ["fedrop"] = {function()
        if game:GetService('Players').LocalPlayer.Character then
            for i,v in pairs(game:GetService('Players').LocalPlayer.Character:GetChildren()) do
                if v:IsA('Accessory') then
                    v.Parent = workspace
                end
            end
        end
    end, {Desc = "[FE] drop all of your equiped accessories.", Alts = {""}}},
    ["feblocks"] = {function()
        if game:GetService('Players').LocalPlayer.Character then
            for i,v in pairs(game:GetService('Players').LocalPlayer.Character:GetChildren()) do
                if v:IsA('Accessory') then
                    for d,z in pairs(v:GetDescendants()) do
                        if z:IsA('SpecialMesh') then
                            z:Destroy()
                            v.Parent = workspace
                        end
                    end
                end
            end
        end
    end, {Desc = "[FE] turns equiped accessories into blocks.", Alts = {""}}},
    ["feblocksloop"] = {function()
        rawset(Status,'FEBlocks',not Status.FEBlocks)
        coroutine.wrap(function()
            while game:GetService("RunService").Stepped:Wait() and Status.FEBlocks do
                if Status.FEBlocks then
                    if LocalPlayer.Character then
                        for i,v in pairs(LocalPlayer.Character:GetChildren()) do
                            if v:IsA('Accessory') then
                                for d,z in pairs(v:GetDescendants()) do
                                    if z:IsA('SpecialMesh') then
                                        z:Destroy()
                                        v.Parent = workspace
                                    end
                                end
                            end
                        end
                    end
                    wait(0.5)
                    LocalPlayer.Character:BreakJoints()
                    wait(game:GetService('Players').RespawnTime + 2.5)
                    if LocalPlayer.Character.PrimaryPart then --just make sure the character's HRP has loaded
                        local chrPos=LocalPlayer.Character.PrimaryPart.Position --get the position of the HRP
                        local tPos=Vector3.new(math.random(1,999), math.random(1,669), math.random(1,969)) --get the position of the target
                        local newCF=CFrame.new(chrPos,tPos) --create our CFrame
                        LocalPlayer.Character:SetPrimaryPartCFrame(newCF) --set the HRP's CFrame to our result, thus moving the character!
                    end
                    wait(0.1)
                end
            end
        end)()
    end, {Desc = "[FE] turns equiped accessories into blocks.", Alts = {""}}},
    ["reset"] = {function()
        if LocalPlayer.Character then
            LocalPlayer.Character:BreakJoints()
        end 
    end, {Desc = "resets your character.", Alts = {}}},
    ["massequip"] = {function()
        for i,v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren()) do
            v.Parent = game:GetService('Players').LocalPlayer.Character
        end
    end, {Desc = "equips all tools in your backpack.", Alts = {}}},
    ["clear"] = {function()
        for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
            if v:IsA('Accessory') then
                v:Destroy()
            end
        end 
    end, {Desc = "removes all dropped items.", Alts = {"cleanup", "clean"}}},
    ["givetool"] = {function(input)
        local Players = game:GetService('Players')
        local Player = findPlayer(input)

        if Player then
            if Player.Character then
                local Tool = LocalPlayer.Character:FindFirstChildOfClass('Tool')
                LocalPlayer.Character.PrimaryPart.CFrame = Player.Character.PrimaryPart.CFrame + Player.Character.PrimaryPart.CFrame.lookVector * -8
                wait(1)
       Tool.Parent = workspace
            else
                sendNotification("The specified player is not spawned in.")
            end
        else
            sendNotification(string.format('Failed to find player [%s]', input))
        end
    end, {Desc = "gives specified player your tool.", Alts = {"give"}}},
    ["setposition"] = {function(input)
        local Loclll = game:GetService('Players').LocalPlayer.Character.PrimaryPart
        if setclipboard then
            setclipboard(string.format("Vector3.new(%s, %s, %s)", tostring(math.floor(Loclll.Position.X)), tostring(math.floor(Loclll.Position.Y)), tostring(math.floor(Loclll.Position.Z))))
        else
            sendNotification("No function called 'setclipboard' found.")
        end
    end, {Desc = "sets your position to your clipboard.", Alts = {"setpos"}}}
}

function cmdSearch(input)
 if #input == 0 then
  for i, v in pairs(CommandsFrame:GetChildren()) do
   if v:IsA('TextLabel') then
    v.Visible = true
    CommandsFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
   end
  end
 end
 input = tostring(input:lower())
 for i, v in pairs(CommandsFrame:GetDescendants()) do
  if v:IsA('TextLabel') then
   v.Visible = false
  end
  if v.Name:sub(1, #input) == input then
   if v:IsA('TextLabel') then
    v.Visible = true
                CommandsFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
            elseif v:IsA('StringValue') then
                v.Parent.Visible = true
                CommandsFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
   end
        end
 end
end

SearchBox:GetPropertyChangedSignal('Text'):Connect(function()
    local Args = SearchBox.Text:lower():split(' ')
 local cmd = Args[1]
 cmdSearch(cmd)
end)

SearchBox.FocusLost:connect(function(EnterPressed)
 if EnterPressed then
  local Args = SearchBox.Text:lower():split(' ')
  local cmd = Args[1]
  SearchBox.Text = ""
        if cmd == 'walkspeed' or cmd == 'ws' or cmd == 'speed' then
            Commands['walkspeed'][1](Args[2])
        elseif cmd == 'jumppower' or cmd == 'jp' or cmd == 'superjump' then
            Commands['jumppower'][1](Args[2])
        elseif cmd == 'hipheight' or cmd == 'hh' or cmd == 'height' then
            Commands['hipheight'][1](Args[2])
        elseif cmd == 'noclip' or cmd == 'clip' then
            Commands['noclip'][1]()
        elseif cmd == 'goto' or cmd == 'tp' or cmd == 'teleport' then
            Commands['goto'][1](Args[2])
        elseif cmd == 'cmds' or cmd == 'help' or cmd == 'cmd' then
            Commands['cmds'][1]()
        elseif cmd == 'rejoin' then
            Commands['rejoin'][1]()
        elseif cmd == 'removelimbs' then
            Commands['removelimbs'][1]()
        elseif cmd == 'feremovelimbs' then
            Commands['feremovelimbs'][1]()
        elseif cmd == 'fesplit' or cmd == 'split' then
            Commands['fesplit'][1]()
        elseif cmd == 'fedrop' then
            Commands['fedrop'][1]()
        elseif cmd == 'feblocks' then
            Commands['feblocks'][1]()
        elseif cmd == 'feblocksloop' then
            Commands['feblocksloop'][1]()
        elseif cmd == 'gravity' then
            Commands['gravity'][1](Args[2])
        elseif cmd == 'reset' then
            Commands['reset'][1]()
        elseif cmd == 'massequip' then
            Commands['massequip'][1]()
        elseif cmd == 'clear' or cmd == 'clean' or cmd == 'cleanup' then
            Commands['clear'][1]()
        elseif cmd == 'givetool' or cmd == 'give' then
            Commands['givetool'][1](Args[2])
        elseif cmd == 'setposition' or cmd == 'setpos' then
            Commands['setposition'][1]()
        end
 end
end)

UIS.InputBegan:connect(function(i,busy)
 if not busy and i.KeyCode == Enum.KeyCode.Semicolon then
  SearchBox:CaptureFocus()
  wait()
  SearchBox.Text = ""
 end
end)

function new(i,v,z)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = CommandsFrame
 TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
 TextLabel.BackgroundTransparency = 1
 TextLabel.BorderSizePixel = 0
 TextLabel.Position = UDim2.new(0.032142859, 0, 0, 0)
 TextLabel.Size = UDim2.new(0, 262,0, 21)
 TextLabel.Font = Enum.Font.SourceSans
 TextLabel.Text = string.format("> %s - %s", i,v)
 TextLabel.TextColor3 = Color3.new(1, 1, 1)
 TextLabel.TextSize = 14
 TextLabel.TextXAlignment = Enum.TextXAlignment.Left
 TextLabel.Name = i
    TextLabel.TextWrapped = true
    for i,v in pairs(z) do
        local String = Instance.new('StringValue', TextLabel)
        String.Value = v
        String.Name = v
    end
end

for i,v in pairs(Commands) do
    new(i,v[2].Desc,v[2].Alts)
end

CommandsFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)