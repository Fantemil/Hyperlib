for i,v in next, game.CoreGui:GetChildren() do
    if v.Name == "ScreenGui" and v.ImageButton then
        v:Destroy()
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/Ui-Libraries/main/uwuware", true))()

local Window = Library:CreateWindow"Strongman Simulator"

local list = {
    "Area 1",
    "Area 2",
    "Area 3",
    "Area 4",
    "Area 5",
    "Area 6",
    "Area 7",
    "Area 8",
    "Area 9",
    "Area 10",
    "Area 11",
    "Area 12",
    "Area 13",
    "Area 14",
    "Area 15",
    "Area 16",
    "Area 17",
    "Area 18",


}

Window:AddList({text = "Areas", flag = "list", values = list, callback = function(a)
getgenv().borntodie1 = a
end})



Window:AddButton({text = "Teleport to Area", flag = "button", callback = function()
if borntodie1 == "Area 1" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(115, 11, -197)
elseif borntodie1 == "Area 2" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90, 11, -20)
elseif borntodie1 == "Area 3" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(192, 14, 224)
elseif borntodie1 == "Area 4" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(176, 11, 503)
elseif borntodie1 == "Area 5" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20, 14, 776)
elseif borntodie1 == "Area 6" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-200, 18, 1340)
elseif borntodie1 == "Area 7" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-167, 19, 2018)
elseif borntodie1 == "Area 8" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-175, 12, 2817)
elseif borntodie1 == "Area 9" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-128, 12, 4119)
elseif borntodie1 == "Area 10" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-199, 12, 4555)
elseif borntodie1 == "Area 11" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-189, 21, 5463)
elseif borntodie1 == "Area 12" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-240, 11, 6353)
elseif borntodie1 == "Area 13" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-312, 11, 7196)
elseif borntodie1 == "Area 14" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(466, 12, 8243)
elseif borntodie1 == "Area 15" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 11, 9226)
elseif borntodie1 == "Area 16" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-294, 10, 10264)
elseif borntodie1 == "Area 17" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-243, 10, 11233)
elseif borntodie1 == "Area 18" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279, 10, 12252)


end

end})



Window:AddButton({text = "Redeem all Promo Codes", flag = "button", callback = function()
local args = {
    [1] = "400M"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))

task.wait(0.5)

local args = {
    [1] = "100m"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "Chad"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "10m"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "25k"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "1500likes"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "5000likes"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "10000"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))
task.wait(0.5)
local args = {
    [1] = "strongman"
}

game:GetService("ReplicatedStorage").PromoCodeRequest:InvokeServer(unpack(args))

end})

Window:AddFolder"Credits"

Window:AddLabel({text = "Made by Borntodie1 on v3rm"})


Library:Init()