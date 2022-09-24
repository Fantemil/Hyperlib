game:GetService("RunService").RenderStepped:Connect(function()
 game:GetService("Players").LocalPlayer.Character.Scythe.Handle.Script.RemoteEvent:FireServer() -- Change Scythe.Handle to Scythe2.Handle to keep it clicking once you upgrade to the next scythe
 game:GetService("Players").LocalPlayer.Character.Scythe.Handle.dmg.RemoteEvent:FireServer() -- same thing to this one.
end)