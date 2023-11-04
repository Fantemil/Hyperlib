local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Punching Simulator")
local f = w:CreateFolder("Main")
local m = w:CreateFolder("Miscellaneous")
local spam = false
local spin = false
local rebirth = false
local open = false
local egg = nil 
f:Toggle("Auto Punch",function(bool)
    spam = bool
end)
f:Toggle("Auto Wheel Spin",function(bool)
    spin = bool
end)
f:Toggle("Auto Rebirth",function(bool)
    rebirth = bool
end)
f:Dropdown("Select Egg",{"Basic Egg","Bedrock Egg","Cactus Egg","Dragon Egg","Grass Egg","Jungle Egg","Lava Egg","Mushroom Egg","Obsidian Egg","Sand Egg","Snow Egg"},true,function(value)
    egg = value 
end)
f:Toggle("Auto Open Egg",function(bool)
    open = bool
end)
m:Slider("Speed",{
    min = 0; 
    max = 500; 
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
m:Slider("Jump Power",{
    min = 0; 
    max = 500; 
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value 
end)
local function spamtypashit()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
end
local function FHH794FG943G4H934H93GH984G3H9843H89G()
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("SpinWheelService"):WaitForChild("RF"):WaitForChild("ReqestWheelSpin"):InvokeServer()
end
local function wto23t992f82h923fbhkdbiq9ry91f3i2bu3f()
    local args = {
        [1] = game:GetService("Players").LocalPlayer
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("RequestRebirth"):InvokeServer(unpack(args))
end
local function G33H9G34H984G3H894G384G34GH93H94G3H9WRFJDIO98HU4T3()
    local args = {
        [1] = egg, 
        [2] = "Single"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
end
while true do
    if spam then
        spamtypashit()
    end
    if spin then
        FHH794FG943G4H934H93GH984G3H9843H89G()
    end
    if rebirth then
        wto23t992f82h923fbhkdbiq9ry91f3i2bu3f()
    end
    if open then
        G33H9G34H984G3H894G384G34GH93H94G3H9WRFJDIO98HU4T3()
    end
    wait()
end
