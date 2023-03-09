local args = {
   [1] = 99999
}

game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.4").knit.Services.WeaponService.RE.WeaponUsed:FireServer(unpack(args))

--Rebirth
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.4").knit.Services.LevelSystemService.RF.AttemptRebirth:InvokeServer()