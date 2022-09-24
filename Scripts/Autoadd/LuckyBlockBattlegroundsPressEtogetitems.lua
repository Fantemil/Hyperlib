--[[
    this script was made by me so enjoy it use it in anyway you want

    i was bored, press E to get some items
]]


local UIS = game:GetService("UserInputService")
local how_many_Items = 5 -- this is doubled because the event gives two items
UIS.InputBegan:Connect(function(Input, gpe)
    if gpe then return end
    if Input.KeyCode == Enum.KeyCode.E then
        for i = 1, how_many_Items do
            game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        end
    end
end)