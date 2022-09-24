local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local args = {
    [1] = Vector3.new(0,0,0),
    [2] = Vector3.new(0,0,0)
}

local doa = true
game:GetService("RunService").Stepped:Connect(function()
    if UserInputService:IsKeyDown(Enum.KeyCode.B) then
        if doa then
            doa = false
            for i,v in pairs(game.Workspace.Map:GetDescendants()) do
                pcall(function() -- apologies for being lazy
                    local seat = ""
                    local chassi = ""
                    if v.Name == "DriverSeat" then
                        seat = v.Seat
                        chassi = v.Parent.Parent
                    elseif v.Name == "GunnerSeat" then
                        seat = v.Seat
                        chassi = v.Parent.Parent
                    elseif v.Name == "CommSeat" then
                        chassi = v.Parent
                        seat = v
                    end
                    if seat ~= "" and seat.Occupant ~= nil then
                        if seat.Occupant.Parent.Name == LocalPlayer.Name then
                            chassi.Turret.Cannon.CannonFired:FireServer(unpack(args))
                        end
                    end
                end)
            end
            wait(0.2)
            doa = true
        end
    end
end)