game:GetService"RunService".RenderStepped:Connect(function()
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.GuiHolder.Death.MouseButton1Click)

local function click(a)
   game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,true,a,1)
   game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,false,a,1)
end
click(game.Players.LocalPlayer.PlayerGui.GuiHolder.Respawn)
end)