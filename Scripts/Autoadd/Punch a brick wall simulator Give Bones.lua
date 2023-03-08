bones = false
game:GetService('RunService').Stepped:connect(function()
if bones then
workspace.AddBones:FireServer(5,5) --CHANGE THE SECOND NUMBER TO THE MAX AMOUNT OF BONES YOU CAN HAVE AT THE TIME
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then --CHANGE TO WHATEVER KEY YOU WANT
bones = not bones
workspace.AddBones:FireServer(5,5) --CHANGE THE SECOND NUMBER TO THE MAX AMOUNT OF BONES YOU CAN HAVE AT THE TIME
end
end)
print('Press "E" to COOM')