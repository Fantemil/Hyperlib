getgenv().autoclicker = true -- true/false
-- Bac0nH1ckOff
while game:GetService("RunService").RenderStepped:wait() do
	if not autoclicker then break end
	game:GetService("ReplicatedStorage"):WaitForChild("Library"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClicksService"):WaitForChild("RE"):WaitForChild("Click"):FireServer()
end