-- https://discord.com/invite/hdzABPrPjb --
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
wait(0.1)
Notification:Notify(
    {Title = "Hard Time - Projeto LKA x F Hub", Description = "Status Script: Working (Beta)"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(0.1)
Notification:Notify(
    {Title = "Not Recommend Chance CountdownRob !", Description = "Loading..."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
Notification:Notify(
    {Title = "Discord Invite", Description = "pls join close in 60s https://discord.com/invite/hdzABPrPjb"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 60, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(2.5)
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rain-Design/Unnamed/main/Library.lua'))()
Library.Theme = "Dark"
local Flags = Library.Flags

-- Countdown --
_G.CountdownRob = 0.25-- CountdownRob
_G.ProximityPromptCountdown = 1 -- Collect Auto ProximityPromptCountdown

-- Cash --
_G.AutoFarmCash = false
local CashFarm = false

-- Dumpster --
_G.Dumpster = false
local Dumpsterlocal = false

-- Melee --
_G.Melee = false
local Meleelocal = false

-- DroppedItems --
_G.DroppedItems = false
_G.DroppedItemslocal = false

-- ATM --
_G.Atm = false
_G.Atmlocal = false

-- Register --
_G.Register = false
_G.Registerlocal = false

-- Proximity --
_G.AutoProximityPrompt = false

local Window = Library:Window({
   Text = "Hard Time"
})

local Tab = Window:Tab({
   Text = "Main"
})

local Tab2 = Window:Tab({
   Text = "Teleport"
})

local Tab3 = Window:Tab({
   Text = "Misc"
})

local Section = Tab:Section({
   Text = "Farm Methods"
})

local Section2 = Tab2:Section({
   Text = "Teleports"
})


local Section3 = Tab3:Section({
   Text = "Misc"
})

local function CashFarmScript()
    if CashFarm then return end -- Verifica se o script jÃ¡ estÃ¡ rodando
    CashFarm = true
    
    local player = game.Players.LocalPlayer
    local workspace = game:GetService("Workspace")

    local cashSpawn = workspace:FindFirstChild("CashSpawn")

    if cashSpawn then
        local cashModels = {}

        for _, v in pairs(cashSpawn:GetChildren()) do
            if v:IsA("Model") and v.Name == "Cash" then
                table.insert(cashModels, v)
            end
        end

        if #cashModels > 0 then
            while _G.AutoFarmCash do
                local randomCashModel = cashModels[math.random(1, #cashModels)]

                if randomCashModel:FindFirstChild("PrimaryPart") then
                    player.Character.HumanoidRootPart.CFrame = randomCashModel.PrimaryPart.CFrame
                else
                    local primaryPart = randomCashModel:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame
                    else
                        print("Nenhuma parte encontrada no modelo 'Cash'")
                    end
                end

                wait(_G.CountdownRob)
            end
        else
            print("Nenhum modelo 'Cash' encontrado na pasta 'CashSpawn'")
        end
    else
        print("Pasta 'CashSpawn' nÃ£o encontrada")
    end

    CashFarm = false -- Finaliza a execuÃ§Ã£o do script
end

local function DumpsterScript()
    if Dumpsterlocal then return end -- Verifica se o script jÃ¡ estÃ¡ rodando
    Dumpsterlocal = true
    
    local player = game.Players.LocalPlayer
    local workspace = game:GetService("Workspace")

    local dumpsterSpawn = workspace:FindFirstChild("Dumpsters")

    if dumpsterSpawn then
        local dumpsterModels = {}

        for _, v in pairs(dumpsterSpawn:GetChildren()) do
            if v:IsA("Model") and v.Name == "ItemSearchableDumpster" then
                table.insert(dumpsterModels, v)
            end
        end

        if #dumpsterModels > 0 then
            while _G.Dumpster do
                local randomCashModel = dumpsterModels[math.random(1, #dumpsterModels)]

                if randomCashModel:FindFirstChild("PrimaryPart") then
                    player.Character.HumanoidRootPart.CFrame = randomCashModel.PrimaryPart.CFrame
                else
                    local primaryPart = randomCashModel:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame
                    else
                        print("Nenhuma parte encontrada no modelo 'Cash'")
                    end
                end

                wait(_G.CountdownRob)
            end
        else
            print("Nenhum modelo 'ItemSearchableDumpster' encontrado na pasta 'Dumpsters'")
        end
    else
        print("Pasta 'Dumpsters' nÃ£o encontrada")
    end

    Dumpsterlocal = false -- Finaliza a execuÃ§Ã£o do script
end

local function MeleeScript()
    if Meleelocal then return end -- Verifica se o script jÃ¡ estÃ¡ rodando
    Meleelocal = true
    
    local player = game.Players.LocalPlayer
    local workspace = game:GetService("Workspace")

    local dumpsterSpawn = workspace:FindFirstChild("MeleeSpawns")

    if dumpsterSpawn then
        local dumpsterModels = {}

        for _, v in pairs(dumpsterSpawn:GetChildren()) do
            if v:IsA("Model") and v.Name == "MeleeSpawn" then
                table.insert(dumpsterModels, v)
            end
        end

        if #dumpsterModels > 0 then
            while _G.Melee do
                local randomCashModel = dumpsterModels[math.random(1, #dumpsterModels)]

                if randomCashModel:FindFirstChild("PrimaryPart") then
                    player.Character.HumanoidRootPart.CFrame = randomCashModel.PrimaryPart.CFrame
                else
                    local primaryPart = randomCashModel:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame
                    else
                        print("Nenhuma parte encontrada no modelo 'Cash'")
                    end
                end

                wait(_G.CountdownRob)
            end
        else
            print("Nenhum modelo 'ItemSearchableDumpster' encontrado na pasta 'Dumpsters'")
        end
    else
        print("Pasta 'Dumpsters' nÃ£o encontrada")
    end

    Meleelocal = false -- Finaliza a execuÃ§Ã£o do script
end

local function DroppedItemsScript()
    if DroppedItemslocal then return end -- Verifica se o script jÃ¡ estÃ¡ rodando
    DroppedItemslocal = true
    
    local player = game.Players.LocalPlayer
    local workspace = game:GetService("Workspace")

    local dumpsterSpawn = workspace:FindFirstChild("DroppedItems")

    if dumpsterSpawn then
        local dumpsterModels = {}

        for _, v in pairs(dumpsterSpawn:GetChildren()) do
            if v:IsA("Model") and v.Name == "Model" then
                table.insert(dumpsterModels, v)
            end
        end

        if #dumpsterModels > 0 then
            while _G.DroppedItems do
                local randomCashModel = dumpsterModels[math.random(1, #dumpsterModels)]

                if randomCashModel:FindFirstChild("PrimaryPart") then
                    player.Character.HumanoidRootPart.CFrame = randomCashModel.PrimaryPart.CFrame
                else
                    local primaryPart = randomCashModel:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame
                    else
                        print("Nenhuma parte encontrada no modelo 'Cash'")
                    end
                end

                wait(_G.CountdownRob)
            end
        else
            print("Nenhum modelo 'ItemSearchableDumpster' encontrado na pasta 'Dumpsters'")
        end
    else
        print("Pasta 'Dumpsters' nÃ£o encontrada")
    end

    DroppedItemslocal = false -- Finaliza a execuÃ§Ã£o do script
end

local function ATMS()
    if Atmlocal then return end -- Verifica se o script jÃ¡ estÃ¡ rodando
    Atmlocal = true
    
    local player = game.Players.LocalPlayer
    local workspace = game:GetService("Workspace")

    local dumpsterSpawn = workspace:FindFirstChild("ATMS")

    if dumpsterSpawn then
        local dumpsterModels = {}

        for _, v in pairs(dumpsterSpawn:GetChildren()) do
            if v:IsA("Model") and v.Name == "ATM" then
                table.insert(dumpsterModels, v)
            end
        end

        if #dumpsterModels > 0 then
            while _G.Atm do
                local randomCashModel = dumpsterModels[math.random(1, #dumpsterModels)]

                if randomCashModel:FindFirstChild("PrimaryPart") then
                    player.Character.HumanoidRootPart.CFrame = randomCashModel.PrimaryPart.CFrame
                else
                    local primaryPart = randomCashModel:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame
                    else
                        print("Nenhuma parte encontrada no modelo 'Cash'")
                    end
                end

                wait(_G.CountdownRob)
            end
        else
            print("Nenhum modelo 'ItemSearchableDumpster' encontrado na pasta 'Dumpsters'")
        end
    else
        print("Pasta 'Dumpsters' nÃ£o encontrada")
    end

    Atmlocal = false -- Finaliza a execuÃ§Ã£o do script
end

local function RegisterScript()
    if Registerlocal then return end -- Verifica se o script jÃ¡ estÃ¡ rodando
    Registerlocal = true
    
    local player = game.Players.LocalPlayer
    local workspace = game:GetService("Workspace")

    local dumpsterSpawn = workspace:FindFirstChild("Registers")

    if dumpsterSpawn then
        local dumpsterModels = {}

        for _, v in pairs(dumpsterSpawn:GetChildren()) do
            if v:IsA("Model") and v.Name == "Cash Register" then
                table.insert(dumpsterModels, v)
            end
        end

        if #dumpsterModels > 0 then
            while _G.Register do
                local randomCashModel = dumpsterModels[math.random(1, #dumpsterModels)]

                if randomCashModel:FindFirstChild("PrimaryPart") then
                    player.Character.HumanoidRootPart.CFrame = randomCashModel.PrimaryPart.CFrame
                else
                    local primaryPart = randomCashModel:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        player.Character.HumanoidRootPart.CFrame = primaryPart.CFrame
                    else
                        print("Nenhuma parte encontrada no modelo 'Cash'")
                    end
                end

                wait(_G.CountdownRob)
            end
        else
            print("Nenhum modelo 'ItemSearchableDumpster' encontrado na pasta 'Dumpsters'")
        end
    else
        print("Pasta 'Dumpsters' nÃ£o encontrada")
    end

    Registerlocal = false -- Finaliza a execuÃ§Ã£o do script
end

local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end

local function ProximityPromptCountdown()
   while _G.AutoProximityPrompt do
    wait(_G.ProximityPromptCountdown)
        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then 
                fireproximityprompt(v, 1, true)
            end 
        end  -- Espera o tempo definido em _G.ProximityPromptCountdown antes de repetir
    end
end

Section:Toggle({
   Text = "Farm Cash",
   Callback = function(value)
        _G.AutoFarmCash = value
        if _G.AutoFarmCash then
            CashFarmScript()
        end
   end
})

Section:Toggle({
   Text = "Farm Dumpsters",
   Callback = function(value)
        _G.Dumpster = value
        if _G.Dumpster then
            DumpsterScript()
        end
   end
})

Section:Toggle({
   Text = "Farm Melee",
   Callback = function(value)
        _G.Melee = value
        if _G.Melee then
            MeleeScript()
        end
   end
})

Section:Toggle({
   Text = "Farm DroppedItems",
   Callback = function(value)
        _G.DroppedItems = value
        if _G.DroppedItems then
            DroppedItemsScript()
        end
   end
})

Section:Toggle({
   Text = "Farm ATMS (Patched)",
   Callback = function(value)
        _G.Atm = value
        if _G.Atm then
            ATMS()
        end
   end
})

Section:Toggle({
   Text = "Farm Register",
   Callback = function(value)
        _G.Register = value
        if _G.Register then
            RegisterScript()
        end
   end
})


Section:Toggle({
   Text = "Auto ProximityPrompt",
   Callback = function(value)
        _G.AutoProximityPrompt = value
        if _G.AutoProximityPrompt then
            ProximityPromptCountdown()
        end
   end
})

Section:Slider({
   Text = "Countdown - Rob",
   Default = 0.25,
   Minimum = 0.22,
   Maximum = 5,
   Callback = function(value)
        _G.CountdownRob = value
   end
})

Section:Slider({
   Text = "Countdown - Auto Collect",
   Default = 1,
   Minimum = 0,
   Maximum = 5,
   Callback = function(value)
        _G.ProximityPromptCountdown = value
   end
})

Section2:Button({
   Text = "Teleport - Sell Tools Npc",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1302.125244140625, 2.1944732666015625, -844.5882568359375)
   end
})

Section2:Button({
   Text = "Teleport - Race",
   Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1334.72998046875, 2.1176445484161377, -396.8571472167969)
   end
})

Section2:Button({
   Text = "Teleport - End Race",
   Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
-458.3763732910156, 1.8975141048431396, -595.8923950195312)
   end
})

Section2:Button({
   Text = "Teleport - Safe local",
   Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1306.42041015625, 2.0409750938415527, -498.37921142578125)
   end
})

Section3:Button({
   Text = "Crtl + click (TP)",
   Callback = function()
  local UIS = game:GetService("UserInputService")

        local Player = game.Players.LocalPlayer
        local Mouse = Player:GetMouse()


        function GetCharacter()
           return game.Players.LocalPlayer.Character
        end

        function Teleport(pos)
           local Char = GetCharacter()
           if Char then
               Char:MoveTo(pos)
           end
        end


        UIS.InputBegan:Connect(function(input)
           if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
               Teleport(Mouse.Hit.p)
           end
        end)
   end
})

Section3:Button({
   Text = "Esp",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/UILibs/main/ESP/Cornerbox/Example"))()
   end
})

Section3:Button({
   Text = "Infinity Yield (IY)",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end
})

Section3:Button({
   Text = "Rainbow (Client)",
   Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- FunÃ§Ã£o para gerar uma cor aleatÃ³ria com valores mais altos
local function randomColor()
    return Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
end

-- FunÃ§Ã£o para aplicar uma cor suavemente
local function lerpColor(startColor, endColor, alpha)
    return startColor:Lerp(endColor, alpha)
end

-- Tempo de transiÃ§Ã£o (em segundos)
local transitionTime = 0.5

-- Remover camisa e calÃ§a do jogador
character.Shirt:Destroy()
character.Pants:Destroy()

-- Loop infinito para alterar as cores do corpo
while true do
    local startTime = tick()
    local endTime = startTime + transitionTime
    
    local startColor = randomColor()
    local endColor = randomColor()
    
    while tick() < endTime do
        local elapsedTime = tick() - startTime
        local alpha = elapsedTime / transitionTime
        
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = lerpColor(startColor, endColor, alpha)
                part.Transparency = 0.25
                part.Material = Enum.Material.ForceField -- Aqui estÃ¡ a linha que adiciona o material ForceField
            end
        end
        
        wait()
    end
end
   end
})


Section3:Button({
   Text = "Aim",
   Callback = function()
-- Credit Dollynho --

local fov = 36
local maxDistance = 350
local maxTransparency = 0.1
local teamCheck = false
local wallCheck = true
local aimPart = "Head"  -- "Torso"

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    FOVring.Position = Cam.ViewportSize / 2
end

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    return (1 - (distance / fov)) * maxTransparency
end

local function isPlayerAlive(player)
    local character = player.Character
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function isPlayerVisibleThroughWalls(player, trg_part)
    if not wallCheck then
        return true
    end

    local localPlayerCharacter = Players.LocalPlayer.Character
    if not localPlayerCharacter then
        return false
    end

    local part = player.Character and player.Character:FindFirstChild(trg_part)
    if not part then
        return false
    end

    local ray = Ray.new(Cam.CFrame.Position, part.Position - Cam.CFrame.Position)
    local hit, _ = workspace:FindPartOnRayWithIgnoreList(ray, {localPlayerCharacter})

    if hit and hit:IsDescendantOf(player.Character) then
        return true
    end

    -- Fallback to a nearby position if the direct ray doesn't hit
    local direction = (part.Position - Cam.CFrame.Position).unit
    local nearRay = Ray.new(Cam.CFrame.Position + direction * 2, direction * maxDistance)
    local nearHit, _ = workspace:FindPartOnRayWithIgnoreList(nearRay, {localPlayerCharacter})

    return nearHit and nearHit:IsDescendantOf(player.Character)
end

local function getClosestPlayerInFOV()
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) and isPlayerAlive(player) then
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            local part = player.Character and player.Character:FindFirstChild(aimPart)
            if humanoid and part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                if distance < last and isVisible and distance < fov and distance < maxDistance and isPlayerVisibleThroughWalls(player, aimPart) then
                    last = distance
                    nearest = player
                end
            end
        end
    end

    return nearest
end

RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV()
    if closest and closest.Character:FindFirstChild(aimPart) then
        lookAt(closest.Character[aimPart].Position)
    end
    
    if closest then
        local part = closest.Character[aimPart]
        local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
        local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
        FOVring.Transparency = calculateTransparency(distance)
    else
        FOVring.Transparency = maxTransparency
    end
end)
        end
})

Tab:Select() -- DONT REMOVE !
