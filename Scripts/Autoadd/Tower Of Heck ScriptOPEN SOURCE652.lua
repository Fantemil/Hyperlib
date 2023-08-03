local Config = {
    WindowName = "Tower Of Heck",
	Color = Color3.fromRGB(124,230,11),
	Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Main")
local Section1 = Tab1:CreateSection("Misc")
local Button1 = Section1:CreateButton("Anti Ban and Anti Kick", function()
	local reg = getreg()

for i, Function in next, reg do
    if type(Function) == 'function' then
        local info = getinfo(Function)
        
        if info.name == 'kick' then
            if (hookfunction(info.func, function(...)end)) then
                print'succesfully hooked kick'
            else
                print'failed to hook kick'
            end
        end
    end
end
end)
Button1:AddToolTip("Might Crash Your game")
local Toggle1 = Section1:CreateToggle("Enable this if anti ban anti kick not working", nil, function(state)
            if state then
        _G.autoanticheat = true;

while _G.autoanticheat == true do
    local reg = getreg()

    for i, Function in next, reg do
        if type(Function) == 'function' then
            local info = getinfo(Function)
            
            if info.name == 'kick' then
                if (hookfunction(info.func, function(...)end)) then
                    print'succesfully hooked kick'
                else
                    print'failed to hook kick'
                end
            end
        end
    end
    wait(2)
end
    else
        _G.autoanticheat = false;

while _G.autoanticheat == true do
    local reg = getreg()

    for i, Function in next, reg do
        if type(Function) == 'function' then
            local info = getinfo(Function)
            
            if info.name == 'kick' then
                if (hookfunction(info.func, function(...)end)) then
                    print'succesfully hooked kick'
                else
                    print'failed to hook kick'
                end
            end
        end
    end
    wait(0.4)
end
    end
end)
Toggle1:AddToolTip("Might Crash your game too")
local Button1 = Section1:CreateButton("Teleport To End", function()
	    local endzone = game.Workspace.tower.sections.finish.FinishGlow.CFrame
 
    local player = game.Players.LocalPlayer.Character
    player.HumanoidRootPart.CFrame = endzone
end)
local Button1 = Section1:CreateButton("Get All Item", function()
	    for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if e:IsA("Tool") then
        e:Destroy()
        end
        end
        wait() 
        for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") then
        local CloneThings = v:Clone()
        wait()
        CloneThings.Parent = game.Players.LocalPlayer.Backpack
 
        end
        end
end)
Button1:AddToolTip("Some Of Them Not Work or Just Visual")
local Button1 = Section1:CreateButton("Remove All Kill Parts", function()
	    for i,v in pairs(game:GetService("Workspace").tower:GetDescendants()) do
        if v:IsA("BoolValue") and v.Name == "kills" then
            v.Parent:Destroy()
        end
    end
end)
local Section2 = Tab1:CreateSection("Farming")
local Toggle2 = Section2:CreateToggle("Auto Tp To End", nil, function(state)
    if state then
        _G.autotp = true;

while _G.autotp == true do
    local endzone = game.Workspace.tower.sections.finish.FinishGlow.CFrame
 
    local player = game.Players.LocalPlayer.Character
    player.HumanoidRootPart.CFrame = endzone
    wait(1)
end
 
    else
        _G.autotp = false;

while _G.autotp == true do
    local endzone = game.Workspace.tower.sections.finish.FinishGlow.CFrame
 
    local player = game.Players.LocalPlayer.Character
    player.HumanoidRootPart.CFrame = endzone
    wait(1)
end
 
    end
end)
local Section3 = Tab1:CreateSection("Player Stuff")
local Slider3 = Section3:CreateSlider("WalkSpeed", 16,300,nil,true, function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)
local Slider3 = Section3:CreateSlider("JumpPower", 50,400,nil,true, function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)
local Slider3 = Section3:CreateSlider("Field of Fiew", 70,120,nil,true, function(Value)
	game.Workspace.CurrentCamera.FieldOfView = Value
end)
local Slider3 = Section3:CreateSlider("SetFpsCap", 20,240,nil,true, function(Value)
	setfpscap(Value)
end)
Slider3:AddToolTip("60 To Reset")
local Button1 = Section3:CreateButton("Reset Walkspeed And Jumpower", function()
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
local Section4 = Tab1:CreateSection("Box")
local Toggle1 = Section4:CreateToggle("Auto Buy Box", nil, function(state)
            if state then
        _G.autobox = true;

while _G.autobox == true do
local args = {
    [1] = "Regular"
}

game:GetService("ReplicatedStorage").openBox:InvokeServer(unpack(args))
wait(0.5)
end

    else
        _G.autobox = false;

while _G.autobox == true do
local args = {
    [1] = "Regular"
}

game:GetService("ReplicatedStorage").openBox:InvokeServer(unpack(args))
wait(0.5)
end

    end
end)

local Button1 = Section4:CreateButton("Buy Box", function()
local args = {
    [1] = "Regular"
}

game:GetService("ReplicatedStorage").openBox:InvokeServer(unpack(args))

end)









local Tab2 = Window:CreateTab("UI Settings")
local Section4 = Tab2:CreateSection("Background")
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
local Section3 = Tab2:CreateSection("Keybind")
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
        Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
        Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)


