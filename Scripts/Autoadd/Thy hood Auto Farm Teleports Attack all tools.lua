local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cute Thy Hood Gui", "Synapse")

local plr = game.Players.LocalPlayer.Character


function Find(String, Table)
    local Lower = String:lower()
    for _, v in next, Table do
        if string.find(Lower, v:lower()) then
            return true
        end
    end
    return false
end




local a = game:GetService("Workspace").WorkbenchA.Part

local b = game:GetService("Workspace").WorkbenchB.Part

local c = game:GetService("Workspace").WorkbenchC.Part

local d = game:GetService("Workspace").WorkbenchD.Part

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    fireproximityprompt(prompt)
end)

for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v.Name == "anticheatcooldown" then
        v:Destroy()
    elseif not game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
    end
end

game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(
    function()
        local tbp = game:GetService("Players").LocalPlayer.Character:WaitForChild("anticheatcooldown")
        tbp:Destroy()
    end
)


local firsttab = Window:NewTab("Main")

local secondtab = Window:NewTab("Finance")

local thirttab = Window:NewTab("Miscellaneous")

local fivetab = Window:NewTab("buy")

local fourthtab = Window:NewTab("Credit")

local armory = fivetab:NewSection("armory")

local goofyteleports = firsttab:NewSection("Teleports") 

local omg = firsttab:NewSection("Excalibur")

local Autocolect = firsttab:NewSection("Auto Collect")

local autocraft = secondtab:NewSection("Auto Craft")

local Convertss = secondtab:NewSection("Converters")

local Misc = thirttab:NewSection("Misc")

local Playr = thirttab:NewSection("Player")

armory:NewButton("Bomb", "buy bomb uwu", function() -- bomb buy button
    if game:GetService("Players").LocalPlayer.Character.shillings.Value >= 5 then
        repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["cart shop"].buypromptF.ProximityPrompt)
        until game:GetService("Players").LocalPlayer.Character.shillings.Value <= 4 or
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            game:GetService("Workspace")["cart shop"].buypromptD.Position).Magnitude > 40
 end
end)
armory:NewButton("Oil can", "buy oil cans", function() -- oil can buy button
 if game:GetService("Players").LocalPlayer.Character.pence.Value >= 11 then
  repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["cart shop"].buypromptG.ProximityPrompt)
        until game:GetService("Players").LocalPlayer.Character.pence.Value <= 10 or
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            game:GetService("Workspace")["cart shop"].buypromptD.Position).Magnitude > 40
 end
end)
armory:NewButton("Torch", "buy Torch", function() -- torch can buy button
 if game:GetService("Players").LocalPlayer.Character.pence.Value >= 6 then
  repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["cart shop"].buypromptI.ProximityPrompt)
        until game:GetService("Players").LocalPlayer.Character.pence.Value <= 5 or
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            game:GetService("Workspace")["cart shop"].buypromptI.Position).Magnitude > 40
 end
end)
armory:NewButton("ManTrap", "buy Mantrap", function() -- mantrap can buy button
 if game:GetService("Players").LocalPlayer.Character.pence.Value >= 11 then
  repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["cart shop"].buypromptK.ProximityPrompt)
        until game:GetService("Players").LocalPlayer.Character.pence.Value <= 10 or
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            game:GetService("Workspace")["cart shop"].buypromptK.Position).Magnitude > 40
 end
end)



omg:NewButton("Excalibur", "get excalibur fast", function() --excalibur teleport 
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-412, -37, -67)}
        ):Play()
   if game:GetService("Players").LocalPlayer.Character.healthcalculator.leftarm then
        repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["golden trash pile"].trashcore.ProximityPrompt)
  until game.Players.LocalPlayer.Character:FindFirstChild("Excalibur") wait()
  end
  



end)




goofyteleports:NewDropdown("Teleports", "DropdownInf", {"Bank", "Museum", "Apothecary", "Itemstore", "Armoury", "Dresser", "Blackmarket", "Secret", "Excalibur"}, function(Value)
    if Value == "Bank" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-616.971435546875, 7.141429424285889, -121.87908935546875)}
        ):Play()
    elseif Value == "Museum" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-99.7638931274414, 7.141429424285889, -95.86727905273438)}
        ):Play()
    elseif Value == "Apothecary" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-678.368896484375, 7.141429424285889, -242.48605346679688)}
        ):Play()
    elseif Value == "Itemstore" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-399.8467102050781, 7.141429424285889, 10.609606742858887)}
        ):Play()
    elseif Value == "Armoury" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-385.8722229003906, 7.141429424285889, -268.3694152832031)}
        ):Play()
    elseif Value == "Dresser" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-957.7818603515625, 6.641377925872803, -41.06182861328125)}
        ):Play()
    elseif Value == "Blackmarket" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-1035.5421142578125, 6.641210556030273, -232.89401245117188)}
        ):Play()
    elseif Value == "Secret" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-187, 198, 225)}
        ):Play()
    elseif Value == "Excalibur" then
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            {CFrame = CFrame.new(-412, -37, -67)}
        ):Play()
    end
end
)



Autocolect:NewToggle("Money Bags", "ToggleInfo", function(state) -- auto collect money bags
    if state then
        getgenv().Moneybags = state
        while getgenv().Moneybags do
            task.wait()
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == "moneybag" then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
        end
    else
        getgenv().Moneybags = false
        while getgenv().Moneybags == true do wait()
            print('big bitch ass nigga')
        end
    end
end)

Autocolect:NewToggle("Tools", "ToggleInfo", function(state) -- auto grab tools
    if state then
        getgenv().Tools = state
        while getgenv().Tools do
            task.wait()
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if
                    game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and
                    v:FindFirstChild("Handle") and
                    v.Name ~= "leech" and
                    v.Name ~= "Broom"
                then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end
        end
    else
        getgenv().Tools = false
        while getgenv().Tools == true do
            wait()
            print('i like boys')
        end
    end
end)





autocraft:NewButton("Buy", "ButtonInfo", function() -- spam buy unfinished flint locks or shortswords 
    if game:GetService("Players").LocalPlayer.Character.shillings.Value >= 5 then
        repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["economy shop"].buypromptD.ProximityPrompt)
        until game:GetService("Players").LocalPlayer.Character.shillings.Value <= 4 or
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            game:GetService("Workspace")["economy shop"].buypromptD.Position).Magnitude > 20
    else
        repeat
            task.wait()
            fireproximityprompt(game:GetService("Workspace")["economy shop"].buypromptC.ProximityPrompt)
        until game:GetService("Players").LocalPlayer.Character.shillings.Value <= 0 or
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            game:GetService("Workspace")["economy shop"].buypromptC.Position).Magnitude > 20
    end
end)

autocraft:NewButton("Craft", "ButtonInfo", function() -- craft all of unfinished things
    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if Find(v.Name, {"unfinished"}) then
            v.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end

    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if Find(v.Name, {"unfinished"}) then
            repeat
                task.wait()

                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if Find(v.Name, {"unfin"}) then
                        firetouchinterest(a, v.Handle, 0)
                        firetouchinterest(a, v.Handle, 1)
                        firetouchinterest(b, v.Handle, 0)
                        firetouchinterest(b, v.Handle, 1)
                        firetouchinterest(c, v.Handle, 0)
                        firetouchinterest(c, v.Handle, 1)
                        firetouchinterest(d, v.Handle, 0)
                        firetouchinterest(d, v.Handle, 1)
                    end
                end
            until not v:IsDescendantOf(game:GetService("Players").LocalPlayer.Character)
        end
    end
end)



autocraft:NewButton("Sell", "ButtonInfo", function() -- sell all of shortswords/flintlocks (doesnt work for knife)
    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if    v:IsA("Tool") and Find(v.Name, {"flint", "shortsword"}) and not Find(v.Name, {"unfinished"}) and
            not Find(v.Name, {"ammo"}) and
            (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
            Vector3.new(-576.5, 5, -147)).Magnitude <= 20
        then
            v.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end

    for _, z in pairs(game:GetService("Workspace"):GetDescendants()) do
        if
            z:IsA("ProximityPrompt") and z.Parent.Name == "sellweapon" and
            z.Parent.Rotation == Vector3.new(0, 0, 0)
        then
            repeat
                task.wait()
                fireproximityprompt(z)
            until not game.Players.LocalPlayer.Character:FindFirstChild("flintlock pistol") and
                not game.Players.LocalPlayer.Character:FindFirstChild("Shortsword") or
                (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                z.Parent.Position).Magnitude > 20
            task.wait()
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") and Find(v.Name, {"flint", "sword"}) then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools(v)
                end
            end
        end
    end
end)




Convertss:NewButton("Pounds to Shillings", "ButtonInfo", function()
    repeat
        task.wait()
        fireproximityprompt(game:GetService("Workspace")["bank converters"].bankpromptA.ProximityPrompt)
    until game:GetService("Players").LocalPlayer.Character.pounds.Value <= 0 or
        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
        game:GetService("Workspace")["bank converters"].bankpromptA.Position).Magnitude > 20
end)

Convertss:NewButton("Shillings to Pounds", "ButtonInfo", function()
    repeat
        task.wait()
        fireproximityprompt(game:GetService("Workspace")["bank converters"].bankpromptB.ProximityPrompt)
    until game:GetService("Players").LocalPlayer.Character.shillings.Value <= 11 or
        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
        game:GetService("Workspace")["bank converters"].bankpromptB.Position).Magnitude > 20
end)
Convertss:NewButton("Shillings to Pennies", "ButtonInfo", function()
    repeat
        task.wait()
        fireproximityprompt(game:GetService("Workspace")["bank converters"].bankpromptC.ProximityPrompt)
    until game:GetService("Players").LocalPlayer.Character.shillings.Value <= 0 or
        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
        game:GetService("Workspace")["bank converters"].bankpromptC.Position).Magnitude > 20
end)
Convertss:NewButton("Pennies to Shillings", "ButtonInfo", function()
    repeat
        task.wait()
        fireproximityprompt(game:GetService("Workspace")["bank converters"].bankpromptD.ProximityPrompt)
    until game:GetService("Players").LocalPlayer.Character.pence.Value <= 11 or
        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
        game:GetService("Workspace")["bank converters"].bankpromptD.Position).Magnitude > 20
end)
Convertss:NewButton("Pennies to Farthings", "ButtonInfo", function()
    repeat
        task.wait()
        fireproximityprompt(game:GetService("Workspace")["bank converters"].bankpromptE.ProximityPrompt)
    until game:GetService("Players").LocalPlayer.Character.pence.Value <= 0 or
        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
        game:GetService("Workspace")["bank converters"].bankpromptE.Position).Magnitude > 20
end)
Convertss:NewButton("Farthings to Pennies", "ButtonInfo", function()
    repeat
        task.wait()
        fireproximityprompt(game:GetService("Workspace")["bank converters"].bankpromptF.ProximityPrompt)
    until game:GetService("Players").LocalPlayer.Character.farthings.Value <= 3 or
        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
        game:GetService("Workspace")["bank converters"].bankpromptF.Position).Magnitude > 20
end)




Misc:NewTextBox("Kick Player", "sussy amogus", function(txt) -- kick player if works then only on synapse, you drop coin and then put player's name
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if txt:lower() == (player.DisplayName:lower()):sub(1, #txt) then
            toKick = player
        elseif txt:lower() == (player.Name:lower()):sub(1, #txt) then
            toKick = player
        end
    end

    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:IsA("Part") and Find(v.Name, {"pound", "shilling", "penny", "farthing"}) then
            firetouchinterest(toKick.Character.UpperTorso, v, 0)
            task.wait()
            firetouchinterest(toKick.Character.UpperTorso, v, 1)
        end
    end
end)




Playr:NewButton("God", "e", function() -- become god (reset if you want to remove it) you can still die to punch tool and fall damage (after you drop like 20 money coins or something you wont be able to drop money)
    if game.Players.LocalPlayer.Character.healthcalculator:FindFirstChild("armor") then
        game.Players.LocalPlayer.Character.healthcalculator.armor:Destroy()
        game.Players.LocalPlayer.Character.pounds.Changed:Connect(function(new)
            game:GetService("Players").LocalPlayer.PlayerGui.money.pounds.Text = new.." Pounds"
        end)

        game.Players.LocalPlayer.Character.pence.Changed:Connect(function(new)
            game:GetService("Players").LocalPlayer.PlayerGui.money.pence.Text = new.." Pence"
        end)

        game.Players.LocalPlayer.Character.shillings.Changed:Connect(function(new)
            game:GetService("Players").LocalPlayer.PlayerGui.money.shillings.Text = new.." Shillings"
        end)

        game.Players.LocalPlayer.Character.farthings.Changed:Connect(function(new)
            game:GetService("Players").LocalPlayer.PlayerGui.money.farthings.Text = new.." Farthings"
        end)
    end
end)


Playr:NewButton("No Jump Cooldown", "ButtonInfo", function() -- no jump cooldown
    while task.wait() do
        game:GetService("Players").LocalPlayer.Character.Humanoid:SetStateEnabled(
            Enum.HumanoidStateType.Jumping,
            true
        )
    end
end)


Playr:NewButton("No Screen Effects", "ButtonInfo", function() -- no screen efects and most of sicknesses
    if
        game:GetService("Players").LocalPlayer.PlayerGui.healthgui:FindFirstChild("chills") and
        game:GetService("Players").LocalPlayer.PlayerGui.healthgui:FindFirstChild("poopoo")
    then
        game:GetService("Players").LocalPlayer.PlayerGui.healthgui.chills:Destroy()
        game:GetService("Players").LocalPlayer.PlayerGui.healthgui.poopoo:Destroy()
    end
end)


local uwu = fourthtab:NewSection("some not important things") -- ignore this tab


uwu:NewKeybind("Close gui", "Click F to close gui", Enum.KeyCode.F, function()
 Library:ToggleUI()
end)

uwu:NewLabel("Syee")

uwu:NewKeybind("Equip/attack all tools", "click T to equip/attack all tools", Enum.KeyCode.T, function()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())do
if v.ClassName == "Tool" then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren())do
 if v.ClassName == "Tool" then
  v:Activate()
 end
end
end)