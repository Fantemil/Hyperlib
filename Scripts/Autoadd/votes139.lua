local lol = {}
local success,err = pcall(function()
    for k,v in pairs(getgc(true)) do -- https://v3rmillion.net/showthread.php?tid=1209519
        if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and  (rawget(v,"indexInstance"))[1] == "kick" then
            bypassed = true
            v.tvk = {"kick",function() return game.Workspace:WaitForChild("") end}
        end
    end
end)

if getgenv().trdshowvotesgui then
    getgenv().trdshowvotesdeletefunc()
end

local gui = Instance.new("ScreenGui")
gui.Name = ""
for i=1,50 do
    gui.Name = gui.Name..tostring(math.random(1,9))
end
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui
getgenv().trdshowvotesgui = gui

local mainframe = Instance.new("Frame")
mainframe.Size = UDim2.new(.3,0,.0,0)
mainframe.Position = UDim2.new(.35,0,.2)
mainframe.Active = true
mainframe.Draggable = true
mainframe.Parent = gui
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,.125,0)
title.BackgroundColor3 = Color3.fromRGB(50,50,50)
title.BorderColor3 = Color3.fromRGB(255,255,255)
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextScaled = true
title.Text = "Total Roblox Drama See Votes"
title.Parent = mainframe
local credits = Instance.new("TextLabel")
credits.Position = UDim2.new(0,0,.125,0)
credits.Size = UDim2.new(1,0,.075,0)
credits.BackgroundColor3 = Color3.fromRGB(50,50,50)
credits.BorderColor3 = Color3.fromRGB(255,255,255)
credits.TextColor3 = Color3.fromRGB(255,255,255)
credits.TextScaled = true
credits.Text = "By 2AreYouMental110"
credits.Parent = mainframe
local constraint = Instance.new("UIAspectRatioConstraint")
constraint.AspectType = Enum.AspectType.ScaleWithParentSize
constraint.AspectRatio = 1.5
constraint.Parent = mainframe

local voteframe = Instance.new("ScrollingFrame")
local votelogframe = Instance.new("ScrollingFrame")
local voteframedestroybutton = Instance.new("TextButton")
local votelogframedestroybutton = Instance.new("TextButton")

voteframe.Position = UDim2.new(0,0,.2,0)
voteframe.Size = UDim2.new(.5,0,.8,0)
voteframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
voteframe.BorderColor3 = Color3.fromRGB(255,255,255)
voteframe.CanvasSize = UDim2.new(0,0,1000,0)
voteframe.Parent = mainframe
votelogframe.Position = UDim2.new(.5,0,.2,0)
votelogframe.Size = UDim2.new(.5,0,.8,0)
votelogframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
votelogframe.BorderColor3 = Color3.fromRGB(255,255,255)
votelogframe.CanvasSize = UDim2.new(0,0,1000,0)
votelogframe.Parent = mainframe
voteframedestroybutton.BackgroundColor3 = Color3.fromRGB(100,100,100)
voteframedestroybutton.BorderColor3 = Color3.fromRGB(255,255,255)
voteframedestroybutton.TextColor3 = Color3.fromRGB(255,255,255)
voteframedestroybutton.Size = UDim2.new(.25,0,.15,0)
voteframedestroybutton.Position = UDim2.new(.125,0,1,0)
voteframedestroybutton.Text = "Delete Votes"
voteframedestroybutton.Parent = mainframe
table.insert(lol,voteframedestroybutton.MouseButton1Click:Connect(function()
	for i,v in pairs(voteframe:GetChildren()) do
		if v:IsA("Frame") then
			v:Destroy()
		end
	end
end))
votelogframedestroybutton.BackgroundColor3 = Color3.fromRGB(100,100,100)
votelogframedestroybutton.BorderColor3 = Color3.fromRGB(255,255,255)
votelogframedestroybutton.TextColor3 = Color3.fromRGB(255,255,255)
votelogframedestroybutton.Size = UDim2.new(.25,0,.15,0)
votelogframedestroybutton.Position = UDim2.new(.625,0,1,0)
votelogframedestroybutton.Text = "Delete Vote Logs"
votelogframedestroybutton.Parent = mainframe
table.insert(lol,votelogframedestroybutton.MouseButton1Click:Connect(function()
	for i,v in pairs(votelogframe:GetChildren()) do
		if v:IsA("TextLabel") then
			v:Destroy()
		end
	end
end))

local voteframesort = Instance.new("UIGridLayout")
local votelogframesort = Instance.new("UIListLayout")

voteframesort.CellSize = UDim2.new(0.3,0,0.0002,0)
voteframesort.CellPadding = UDim2.new(0,0,0,0)
voteframesort.Parent = voteframe
votelogframesort.Parent = votelogframe

local votingfolder = game.ReplicatedStorage.Season.Voting
table.insert(lol,votingfolder.Players.ChildAdded:Connect(function(plr)
    local plrname = plr.Name
    if game.ReplicatedStorage:FindFirstChild("Season") and game.ReplicatedStorage.Season:FindFirstChild("Players") and game.ReplicatedStorage.Season.Players:FindFirstChild(plrname) then
        plrname = game.ReplicatedStorage.Season.Players[plrname].Value
    end
    local votes = plr:WaitForChild("Votes",math.huge)
    local frame = Instance.new("Frame")
    frame.BackgroundColor3 = Color3.fromRGB(50,50,50)
    frame.BorderColor3 = Color3.fromRGB(255,255,255)
    local plrnametext = Instance.new("TextLabel")
    plrnametext.BackgroundColor3 = Color3.fromRGB(75,75,75)
    plrnametext.BorderColor3 = Color3.fromRGB(255,255,255)
    plrnametext.TextColor3 = Color3.fromRGB(255,255,255)
    plrnametext.TextScaled = true
    plrnametext.Size = UDim2.new(1,0,.4,0)
    plrnametext.Position = UDim2.new(0,0,.6,0)
    plrnametext.Text = plrname
    local votetext = Instance.new("TextLabel")
    votetext.BackgroundColor3 = Color3.fromRGB(75,75,75)
    votetext.BorderColor3 = Color3.fromRGB(255,255,255)
    votetext.TextColor3 = Color3.fromRGB(255,255,255)
    votetext.TextScaled = true
    votetext.Size = UDim2.new(1,0,.6,0)
    votetext.Text = "Votes: "..tostring(votes.Value)
    plrnametext.Parent = frame
    votetext.Parent = frame
    frame.Name = plrname
    table.insert(lol,votes:GetPropertyChangedSignal("Value"):Connect(function()
        votetext.Text = "Votes: "..tostring(votes.Value)
    end))
    frame.Parent = voteframe
end))
table.insert(lol,votingfolder.Votes.ChildAdded:Connect(function(vote)
    local whovoted = vote.Value
    local votedfor = vote.Name
    if game.ReplicatedStorage:FindFirstChild("Season") and game.ReplicatedStorage.Season:FindFirstChild("Players") and game.ReplicatedStorage.Season.Players:FindFirstChild(whovoted) then
        whovoted = game.ReplicatedStorage.Season.Players[whovoted].Value
    end
    if game.ReplicatedStorage:FindFirstChild("Season") and game.ReplicatedStorage.Season:FindFirstChild("Players") and game.ReplicatedStorage.Season.Players:FindFirstChild(votedfor) then
        votedfor = game.ReplicatedStorage.Season.Players[votedfor].Value
    end
    local text = Instance.new("TextLabel")
    text.Name = whovoted
    text.Size = UDim2.new(1,0,0.00005)
    text.BackgroundTransparency = 1
    text.TextColor3 = Color3.fromRGB(255,255,255)
    text.Text = whovoted.." Voted For "..votedfor
    text.Parent = votelogframe
end))

function deletegui()
    gui:Destroy()
    for i,v in pairs(lol) do
        v:Disconnect()
    end
end
getgenv().trdshowvotesdeletefunc = deletegui
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Done loading",Text="Done loading"})