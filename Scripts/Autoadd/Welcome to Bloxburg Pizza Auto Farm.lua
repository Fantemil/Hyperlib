local player = game:GetService("Players").LocalPlayer
local jobHandler = require(player.PlayerScripts.Modules.JobHandler)
local guiHandler = require(player.PlayerScripts.Modules._Utilities.GUIHandler)
local networkModule = getupvalue(jobHandler.GoToWork, 1)

if not network then
    local spoofed = getfenv(jobHandler.GoToWork);
    hookfunction(getrenv().getfenv, function()
        return spoofed
    end)
    getgenv().network = networkModule.net
end

jobHandler.StopWorking = function(...)
    return
end

guiHandler.AlertBox = function() end

function character()
  return player.Character or player.CharacterAdded:Wait()
end

function tp(cf)
    local character = character()
    local cloned = character.Humanoid:Clone()
    character.Humanoid.Parent = nil
    task.wait()
    cloned.Parent = character
    task.wait(.5)
    if cf then character:PivotTo(cf) end
end

function getPizza()
    return workspace.Environment.Locations:WaitForChild("PizzaPlanet").Conveyor.MovingBoxes:FindFirstChildOfClass("UnionOperation")
end

function getMoped()
    network:InvokeServer({ Type = "UsePizzaMoped" }) 
end

function doOrder()
    if game:GetService("ReplicatedStorage").Stats[player.Name].Job.Value == "" then
        task.spawn(function() network:InvokeServer({ Type = "ToWork", Name = "PizzaPlanetDelivery" }) end)
        task.wait(3)
    end
    repeat task.wait() getMoped() until character():FindFirstChild("Vehicle_Delivery Moped")
    repeat task.wait() character().Humanoid.Jump = true until character().Humanoid.Sit == false
    task.wait(0.15)
    for i=1, 20 do
        character():PivotTo(CFrame.new(1173,13,271))
        task.wait()
    end
    task.wait(0.15)
    local pizza
    repeat pizza = getPizza() task.wait() until pizza
    task.wait(1)
    local customer = network:InvokeServer({ Type = "TakePizzaBox", Box = pizza })
    if not customer then repeat customer = network:InvokeServer({ Type = "TakePizzaBox", Box = pizza }) task.wait(1) until customer end
    pcall(function()
        if customer:FindFirstChild("HumanoidRootPart") then
            tp(customer.HumanoidRootPart.CFrame) 
            task.wait(0.2)
            repeat network:FireServer({ Type = "DeliverPizza", Customer = customer}) task.wait(0.1) until not character():FindFirstChild("Pizza Box")
            character():Destroy()
        end
    end)
    repeat task.wait() until character()
    task.wait(5)
end

repeat
    doOrder() 
until nil