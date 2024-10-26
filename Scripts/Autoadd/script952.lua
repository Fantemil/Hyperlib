local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local PhantomForcesWindow = Library:NewWindow("Game Name")
local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateButton("Name", function()
  game:GetService("ReplicatedStorage").Events.SelfEmbodimentOfPerfection:FireServer()
end)

KillingCheats:CreateButton("Name", function()
  game:GetService("ReplicatedStorage").KJ.Remote.Rushh:FireServer()
end)

KillingCheats:CreateButton("Name", function()
  game:GetService("ReplicatedStorage").Remotes.Purple:FireServer()
end)

KillingCheats:CreateButton("Name", function()
  game:GetService("ReplicatedStorage").Remotes.ImaginaryPurple
end)