-- Autofarm Toggle Key is: H
-- Updated as of 07/14/22

if ran then return end

local isInSession = false
local noItsMyTurn = false
local fullNoClip = false
local autoFarmToggle = true

local badParts = {}
local badPartsCollide = {}

getgenv().ran = true

local virtualInput = game:GetService("VirtualInputManager")
local player = game:GetService("Players").LocalPlayer
local hardObbyWin = workspace.Obbies.HardObby.Win
local easyObbyWin = workspace.Obbies.EasyObby.Win
local moneyValue = player.leaderstats.Money
local print = printconsole or consoleprint or print

local ownedTycoon = player.TycoonOwned.Value
local toOwn
local currentMoney

local function hasChar()
    if player.Character and player.Character.Parent and player.Character.Parent.Parent and player.Character:FindFirstChild("HumanoidRootPart") then 
        return true
    end
    return false
end

local function setMoney()
    local value = moneyValue.Value
    if string.find(value, ".") then
        local M, B, T = 1000000, 1000000000, 1000000000000
        if string.find(value, "M") then
            local realValue = string.sub(value, 1, string.find(value, "M") - 1)
            
            currentMoney = tonumber(realValue) * M

            return
        elseif string.find(value, "B") then
            local realValue = string.sub(value, 1, string.find(value, "B") - 1)
            
            currentMoney = tonumber(realValue) * B
            
            return
        elseif string.find(value, "T") then
            local realValue = string.sub(value, 1, string.find(value, "T") - 1)
            
            currentMoney = tonumber(realValue) * T
            
            return
        end
    end
    
    currentMoney = string.gsub(moneyValue.Value, ",", "")
    currentMoney = tonumber(currentMoney)
end

if hasChar() then
    for i,v in next, player.Character:GetChildren() do
        if v:IsA("MeshPart") then
            v.Touched:Connect(function(touchedPart)
                if fullNoClip then
                    if not table.find(badParts, touchedPart) then
                        table.insert(badParts, touchedPart)
                        badPartsCollide[badParts] = touchedPart.CanCollide
                    end
                    
                    touchedPart.CanCollide = false
                end
            end)
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gp)
    if not gp and input.KeyCode == Enum.KeyCode.H then
        autoFarmToggle = not autoFarmToggle
    end
end)

player.CharacterAdded:Connect(function(character)
    for i,v in next, character:GetChildren() do
        if v:IsA("MeshPart") then
            v.Touched:Connect(function(touchedPart)
                if fullNoClip then
                    if not table.find(badParts, touchedPart) then
                        table.insert(badParts, touchedPart)
                        badPartsCollide[touchedPart] = touchedPart.CanCollide
                    end
                    
                    touchedPart.CanCollide = false
                end
            end)
        end
    end
end)

repeat task.wait()
until hasChar()

local function fireinterest(toTouch)
    if not hasChar() then return end
    return firetouchinterest(player.Character.LeftFoot, toTouch, 0) 
end

if not ownedTycoon then
    for _,tycoon in next, workspace.Tycoons:GetChildren() do
        if tycoon.Owner.Value == nil then
            fireinterest(tycoon.TycoonDoor)
            ownedTycoon = tycoon
            break
        end
    end
end

task.spawn(function()
    xpcall(function()
        while true do
            fullNoClip = true
            if not autoFarmToggle then
                fullNoClip = false
                
                repeat task.wait() 
                until autoFarmToggle
            end
        
            -- Auto TP to Buttons
            if not noItsMyTurn and hasChar() then
                player.Character:SetPrimaryPartCFrame(ownedTycoon.Interact.Factory.Click.Part.CFrame * CFrame.new(0, -5, 0))
                if not isInSession then
                    isInSession = true
                    
                    task.delay(.25, function()
                        isInSession = false
                        noItsMyTurn = true
                    end)
                end
            elseif noItsMyTurn and hasChar() then
                player.Character:SetPrimaryPartCFrame(ownedTycoon.Interact.Guminator.Click.Part.CFrame * CFrame.new(0, -5, 0))
                if not isInSession then
                    isInSession = true
                    
                    task.spawn(function()
                        while true do
                            local a = false
                            for i,v in next, ownedTycoon.Interact.Factory.Click.Model:GetChildren() do
                                if v.BrickColor == BrickColor.new("Bright green") then
                                    a = true
                                    break 
                                end
                            end
                            if a then break end
                            task.wait()
                        end
                        isInSession = false
                        noItsMyTurn = false
                    end)
                end
            end
            task.wait()
        end
    end, function(...)
        print(...)
    end)
end)

xpcall(function()
    while true do
        fullNoClip = true
        if not autoFarmToggle then
            fullNoClip = false
            
            for i,v in next, badParts do
                v.CanCollide = badPartsCollide[v] or true
                badParts[i] = nil
            end
            
            repeat task.wait() 
            until autoFarmToggle
        end
        
        -- Auto Click Near Proximities
        virtualInput:SendKeyEvent(true, "E", false, nil)
        task.wait()
        virtualInput:SendKeyEvent(false, "E", false, nil)
        
        -- Auto Collect Fruits
        local gumballTree = ownedTycoon:FindFirstChild("GumballTree")

        if gumballTree then
            for _,gum in next, gumballTree:GetChildren() do
                fireinterest(gum)
            end
        end
        
        -- Auto Complete Hard Obby
        if not hardObbyWin.Parent.WaitTime.CanCollide then
            fireinterest(hardObbyWin)
        end
        
        -- Auto Complete Easy Obby
        if not easyObbyWin.Parent.WaitTime.CanCollide then
            fireinterest(easyObbyWin)
        end
        
        -- Auto Buy Upgrades
        for _,btn in next, ownedTycoon.Buttons:GetChildren() do
            setMoney()
            if btn:IsA("Folder") then
                for _,BTN in next, btn:GetChildren() do
                    if BTN:FindFirstChild("Value") and BTN.Value.Value <= currentMoney and not BTN:FindFirstChild("Robux") then
                        fireinterest(BTN.Button, true)
                    end
                end
            elseif btn:FindFirstChild("Value") and btn.Value.Value <= currentMoney and not btn:FindFirstChild("Robux") then
                fireinterest(btn.Button, true)
            end
        end
        
        task.wait(0.05)
    end
end, function(...)
    print("An error occured: ".. ...)
    getgenv().ran = nil
end)