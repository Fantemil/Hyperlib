 game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "any button to bind it to here" then
local args = {
    [1] = 60, -- Damage you want to deal with your fat body (Only 50% will be dealt to the player you wanna kill, dont go overboard with the damage, they added a damage cap, as long its small like 60 or 30, your fine)
    [2] = Vector3.new(-44.46540451049805, 1, 75.81928253173828)  -- Ignore this
}

workspace.Events.Character.Damage.FallDamage:FireServer(unpack(args))
 end
end)