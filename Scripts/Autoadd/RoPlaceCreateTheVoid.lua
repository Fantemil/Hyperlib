local currenttentacle = Vector3.new(-228, 0, -238)
while true do
    wait()
    local x2 = math.random(1, 3) - 2
    local y2 = math.random(1, 3) - 2
    if game.Workspace.Pixels:FindFirstChild("x" .. tostring(currenttentacle.x + (x2 * 2)) .. "y" .. tostring(currenttentacle.z + (y2 * 2))) then
       if game.Workspace.Pixels["x" .. tostring(currenttentacle.x + (x2 * 2)) .. "y" .. tostring(currenttentacle.z + (y2 * 2))].Color == Color3.new(0,0,0) then
           currenttentacle = Vector3.new(currenttentacle.x + (x2 * 2), 0, currenttentacle.z + (y2 * 2))
       else
           local doa = true
           while doa do
               local args = {
                   [1] = Vector3.new(currenttentacle.x + (x2 * 2), 0, currenttentacle.z + (y2 * 2)),
                   [2] = Color3.new(0, 0, 0)
               }
               game:GetService("ReplicatedStorage").Events.EditPixel:FireServer(unpack(args))
               wait(0.5)
               if game.Workspace.Pixels["x" .. tostring(currenttentacle.x + (x2 * 2)) .. "y" .. tostring(currenttentacle.z + (y2 * 2))].Color == Color3.new(0,0,0) then
                   doa = false
                   print("x" .. tostring(currenttentacle.x + (x2 * 2)) .. "y" .. tostring(currenttentacle.z + (y2 * 2)))
               end
           end
           wait(9)
       end
    end
end