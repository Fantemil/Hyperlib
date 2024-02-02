local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Supreme Bathroom Battles by code_00219", "RJTheme3")
local Tab = Window:NewTab("Alliance")
local Section = Tab:NewSection("Alliance")


Section:NewButton("Large Camera Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("LargeCameraHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Large Speaker Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("LargeSpeakerHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Large TV Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("LargeTvHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Camera Man Titan", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("MegaCameraHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Cinema Man Titan", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("MegaCinemaHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Speaker Man Titan", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("MegaSpeakerHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Upgraded Speaker Man Titan", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("MegaSpeakerHead2")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("TV Man Titan", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("MegaTvHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Plunger Camera Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("PlungerCameraHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Speaker Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("SpeakerHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("TV Woman", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("TvGirlHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("TV Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs"):WaitForChild("TvHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)


local Tab = Window:NewTab("Toilets")
local Section = Tab:NewSection("Toilets")

Section:NewButton("Big Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("BigBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Big Military Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("BigMilitaryBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("G-Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("BossBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("G-Man V2", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("BossBathroom2")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("G-Man V3", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("BossBathroom3")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Ultra Scientist Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("BossScientistBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Infected Titan Speaker Man", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("CorrupedMegaSpeakerHead")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Giant Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("GiantBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Giant Spider Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("GiantSpiderBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Glasses Giant Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("GlassesGiantBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Mutant Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("MutantBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Rocket Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("RocketBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Spider Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("SpiderBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)

Section:NewButton("Vacuum Toilet", "morph", function()
local args = {
    [1] = workspace:WaitForChild("Morphs2"):WaitForChild("VacuumBathroom")
}

game:GetService("ReplicatedStorage"):WaitForChild("CharChange"):FireServer(unpack(args))
end)