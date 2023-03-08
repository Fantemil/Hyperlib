repeat task.wait() until game:IsLoaded()

local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game.Players.LocalPlayer
Player.CharacterAdded:Wait(); task.wait()
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")

game:GetService("ReplicatedStorage").Bricks.PreRunShop:FireServer({})
task.wait(0.5)
game:GetService("ReplicatedStorage").Bricks.PreRunShop:FireServer({})

task.wait(3)

Character.Collision:Destroy()

local function goaway()
    Humanoid.Health = 0
    task.wait(1)
    game:GetService("ReplicatedStorage").Bricks.PlayAgain:FireServer()
    getgenv().stop = true
end

Humanoid.Died:Connect(goaway)

local function getRoom(num)
    local timeout = 10
    local found = workspace.CurrentRooms:FindFirstChild(num)
    if not found then
        repeat task.wait(0.1)
            found = workspace.CurrentRooms:FindFirstChild(num)
            timeout = timeout - 0.1
            
            if timeout == 0 then
                print('timed out... serverhopping')
                goaway()
                break
            end
        until found
    end
    return found
end

local CurrentRoom = 0

local function getCurrentRoom()
    return CurrentRoom
end

local function TweenCharacter(cf)
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local Tween = TweenService:Create(RootPart, TweenInfo.new(1), {CFrame = cf})
    Tween:Play()
    Tween.Completed:Wait()
end

while true do
    if getgenv().stop then break end
    
    local room = getRoom(getCurrentRoom() + 1)
    local door = room:WaitForChild("Door")
    
    if door:FindFirstChild("Lock") then
        room = getRoom(getCurrentRoom() + 1)
    end
    
    if getCurrentRoom() + 1 == 50 then
        goaway()
    end
    
    door = room.Door
    local Door = door:WaitForChild("Door")
    
    TweenCharacter(Door.CFrame)
    door.ClientOpen:FireServer()
    CurrentRoom = CurrentRoom + 1
end