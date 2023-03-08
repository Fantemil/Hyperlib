--// Variables \\--
local Updated_On = "Updated on 21/12/2022";

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Tall Man Run")

local m = w:CreateFolder("Main")

local f = w:CreateFolder("Info")

--// Functions \\--


f:Label(Updated_On,{
    TextSize = 20; 
    TextColor = Color3.fromRGB(255,0,255);
    BgColor = Color3.fromRGB(40,40,40); 
    
})

f:Label("Made By: ronin#5376",{
    TextSize = 20; 
    TextColor = Color3.fromRGB(255,0,255);
    BgColor = Color3.fromRGB(40,40,40); 
    
})

--// Script \\--
getgenv().config = {
    Amount = nil;
}


--// Buttons \\--


m:Box("Amount of size","number",function(value)
    getgenv().config.Amount = (value)
end);

m:Button("Give Size",function(bool)
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame*CFrame.new(0,10,0)
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
game:GetService("ReplicatedStorage").Events.Props.PropRF:InvokeServer("ChangeHeight",getgenv().config.Amount,false) task.wait(.2)
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = false
end);