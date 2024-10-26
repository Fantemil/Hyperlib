local owned_printer_amount = 0
local buying_printers = false

rconsolewarn('Teleporting to autofarm location')

local function tw(target, changes, style, dir, tim)
    game:GetService('TweenService'):Create(target, TweenInfo.new(tim, Enum.EasingStyle[style], Enum.EasingDirection[dir]), changes):Play()
end

tw(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = CFrame.new(1172.96, 94.122, -878.75)}, 'Linear', 'InOut', 30)

task.wait(32)

rconsolewarn('Autofarm has started successfully')

workspace.Entities.ChildRemoved:Connect(function(ty)
    if string.find(tostring(ty.Name):lower(), 'printer') and tostring(ty.Properties.Owner.Value) == game.Players.LocalPlayer.Name then
        owned_printer_amount = owned_printer_amount - 1
    end
end)

while task.wait() do
    pcall(function()
        spawn(function()
            if owned_printer_amount < 3 and not buying_printers then
                rconsolewarn('Buying Printers')
                buying_printers = true
                repeat
                    game:GetService("ReplicatedStorage")["_CS.Events"].PurchaseTeamItem:FireServer("Hotwired Printer", "Single", Color3.new(0, 0, 0))
                    owned_printer_amount = owned_printer_amount + 1
                    task.wait(3)
                until owned_printer_amount == 3
                buying_printers = false
            end
        end)
        
        for i, v in next, workspace.Entities:GetChildren() do
            if string.find(tostring(v.Name):lower(), 'printer') and tostring(v.Properties.Owner.Value) == game.Players.LocalPlayer.Name and tonumber(v.Properties.CurrentPrinted.Value) >= 200 then
                game:GetService("ReplicatedStorage")["_CS.Events"].LockPrinter:FireServer(v)
                game:GetService("ReplicatedStorage")["_CS.Events"].UsePrinter:FireServer(v)
                game:GetService("ReplicatedStorage")["_CS.Events"].LockPrinter:FireServer(v)
            end
        end
    end)
end
