local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Become the rake remastered by Artem89ru_2023", "RJTheme3")
local Tab = Window:NewTab("Rakes")
local Section = Tab:NewSection("Morphs")

Section:NewButton("Blood Rake Morph", "morph", function()
local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("Morphs"):WaitForChild("BloodRakeMorph")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Rage Rake Morph", "morph", function()
local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("Morphs"):WaitForChild("RageRakeMorph")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Shadow Hour Rake", "morph", function()
local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("Morphs"):WaitForChild("ShadowHourRake")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Vision Hour Rake", "morph", function()
local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("Morphs"):WaitForChild("VisionRakeMorph")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Corruptered Rake Morph", "morph", function()
local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("Morphs"):WaitForChild("CorrupteredRakeMorph")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Rake", "morph", function()
local args = {
    [1] = game:GetService("ReplicatedStorage"):WaitForChild("Morphs"):WaitForChild("Rake")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)