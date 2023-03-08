local ReSt = game:GetService("ReplicatedStorage")

local ModuleScripts = {
    ModuleEvents = require(ReSt.ClientModules.Module_Events),
}

local function connectClosetJack(wardrobes, room, bool)
    for _, wardrobe in pairs(wardrobes) do
        if not game:GetService("ReplicatedStorage"):FindFirstChild("closetAnim") then 
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://9460435404"
            anim.Name="closetAnim"
            anim.Parent=game:GetService("ReplicatedStorage")
        end
        if not game:GetService("ReplicatedStorage"):FindFirstChild("RickModel") then
            if not isfile("rick.txt") then writefile("rick.txt", game:HttpGet("https://github.com/sponguss/storage/raw/real/rick.rbxm?raw=true")) end
            local a=game:GetObjects((getcustomasset or getsynasset)("rick.txt"))[1]
            a.Name="RickModel"
            a.Parent=game:GetService("ReplicatedStorage")
        end
        local prompt = wardrobe:WaitForChild("HidePrompt", 1)
        if not prompt and wardrobe:FindFirstChild("fakePrompt") then return end
    
        if prompt then
            -- Fake prompt
    
            local fakePrompt = prompt:Clone()
            
            if bool then prompt:Destroy() else prompt.Enabled=false end
            fakePrompt.Parent = wardrobe
            fakePrompt.Name="fakePrompt"
            
            local connection; connection = fakePrompt.Triggered:Connect(function()
                if not bool then connection:Disconnect() end
                local model=game:GetService("ReplicatedStorage").RickModel:Clone()
    
                if model and not wardrobe:FindFirstChild(model.Name) then
                    model:SetPrimaryPartCFrame(wardrobe.Main.CFrame)
                    model.Parent = workspace
    
                    -- Animation setup
                    local anim = wardrobe.AnimationController:LoadAnimation(game:GetService("ReplicatedStorage").closetAnim)
    
                    -- Scare
                    
                    ModuleScripts.ModuleEvents.flickerLights(room, 1)
                    anim:Play()
                    model.Sound:Play()
    
                    -- Destroy
    
                    task.wait(1)
                    
                    model:Destroy()
                    if not bool then prompt.Enabled = true end
                    if not bool then fakePrompt:Destroy() end
    
                    if not bool then connection:Disconnect() end
                end
            end)
        end
    end
end

local wardrobes = {}
for _, wardrobe in pairs(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")].Assets:GetChildren()) do
    if wardrobe.Name=="Wardrobe" then
        table.insert(wardrobes, wardrobe)
    end
end

if wardrobes[1] then
    connectClosetJack(wardrobes, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], true) -- 'true' for jack to appear every time
end