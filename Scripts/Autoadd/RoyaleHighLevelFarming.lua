local VU = game:GetService("VirtualUser") -- Used for anti-afk measures

local RS = game:GetService("ReplicatedStorage") -- Used for storage ... that replicates

local CurrentClass = RS.CurrentActivity -- Used to determine the current activity or class

local Starting = RS.Classes.Starting -- Used to receive class start events and fire "go to class" events

local Code = RS.Lockers.Code -- For entering code in lockers
local Contents = RS.Lockers.Contents -- For taking items out of the lockers

local Players = game:GetService("Players") -- Used for getting the players (kinda obvious)
local Player = Players.LocalPlayer -- Local player
local GUI = Player.PlayerGui -- Player gui

local CaptchaGUI = GUI.CaptchaGui -- Get the captcha gui
local CaptchaFrame = CaptchaGUI.Captcha -- Get the frame too

local CompUI = GUI.ComputerGamePC -- Get the computer class ui
local ChemUI = GUI.ChemistryGame -- Get the chemistry class ui
local TPFlash = GUI.TeleporterFlash -- Get the teleporter from the ui

local SideBar = GUI.HUD.Center -- Get the side bar
local Levels = SideBar.Level -- Get the textlabel containing the levels (inefficient method)
local Diamonds = SideBar.DiamondAmount -- Get the textlabel containing the diamonds (inefficient method) 

local Books = {"Paint Brush Book Set", -- Books to get from the locker (paint brush book unused)
    "Recipe Book",
    "Chemistry Book",
    "Coding Book",
    "English Book"
} 

local ClassesToSkip = {"Art", -- Classes/activities to skip
 "Breakfast", 
 "Dance", 
 "Evening", 
 "Lunch", 
 "PE", 
 "Swimming",
} 

local FireAmount = 12000 -- How many times to fire the starting remote (high amounts can slow down the server)

local LevelLock = 20000 -- Level lock amount (set to math.max for infinity)

local Character, Distance, HRP, Info, Locker, OldWait -- Localize not-yet-existant variables

local function ClaimLocker() -- Go to a locker, claim it, and take all the books 
    Character = Player.Character -- Get character
    HRP = Character.HumanoidRootPart -- Get HRP

    HRP.CFrame = CFrame.new(38, 28, -181) -- Teleport to coords
    for Index, Door in pairs(workspace:GetDescendants()) do -- Find closest locker
        if Door.Name == "LockerDoor" then
            Distance = (Door.Position - HRP.Position).Magnitude
            if Distance < 3 then
                Locker = Door
                fireclickdetector(Door.ClickDetector) -- Click the locker
            end
        end
    end
    Code:FireServer(Locker, "0", "Create") -- Create password combo "0"
    for Index, Book in pairs(Books) do -- For each book (in table defined earlier)
        Contents:InvokeServer("Take", Player.Locker[Book]) -- Take the book
    end
end

OldWait = hookfunction(wait, newcclosure(function(InpTime) -- Innefficient hook for quick teleportation
    Info = debug.getinfo(3) -- Get the debug info
    if Info["source"] == string.format("=Players.%s.PlayerGui.TeleporterFlash.Black.LocalTeleportScript", Player.Name) then -- If the source is the teleporter (inefficient method)
        return OldWait(0.1) -- Wait for 0.1 seconds
    else -- Otherwise
        return OldWait(InpTime) -- Wait for the intended time
    end
end))

-- Placeholder Code

coroutine.wrap(function(BubbleGUI, BubbleFrame) -- Create another thread. Not my code
 while true do -- While true
  BubbleFrame.Top.Visible = false -- Make the bubble ui invisible
  BubbleGUI.Award.Visible = false
  for Index, Bubble in pairs(BubbleFrame.FloatArea:GetChildren()) do -- Get each bubble
   if Bubble.Name == "FloatBox" and Bubble:FindFirstChild("ImageLabel")  and Bubble.Visible then -- Verify that it is a bubble
    task.wait(0.5) -- Wait half a second
    firesignal(Bubble.MouseButton1Click) -- Click it
    task.wait(0.5) -- Wait another half a second
   end 
  end
  task.wait() -- Prevent infinite loop by adding a task.wait()
 end
end)(CaptchaGUI, CaptchaFrame) -- Pass arguments

CaptchaGUI.DisplayOrder = -1000000 -- Throw the UI to the back

ClaimLocker() -- Execute locker claim defined earlier

ChemUI:Destroy() -- Remove chemistry ui (prevent lag)
CompUI:Destroy() -- Remove computer ui (prevent lag)
TPFlash.Black.Size = UDim2.new(0, 0, 0, 0) -- Make teleporter not flash black

Starting.OnClientEvent:Connect(function() -- When the starting event is received
    if not table.find(ClassesToSkip, CurrentClass.Value) then -- Check that the current class should not be skipped
        for i=1,FireAmount do -- Loop through 1 and fire amount
            Starting:FireServer() -- Fire the remote
        end
    end
end)

Player.Idled:Connect(function() -- Anti-afk (not mine)
   VU:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame) -- Press the button
   task.wait(1) -- Wait a second
   VU:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame) -- Release the button
end)

Levels:GetPropertyChangedSignal("Text"):Connect(function()
    if tonumber(Levels.Text) > LevelLock then
        Player:Kick(string.format(
   "Level Locked, current level: %s, current diamond count: %s", 
   Levels.Text, 
   Diamonds.Text
  ))
    end
end)

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()