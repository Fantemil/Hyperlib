
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local function lag_all()
        while _G.lag_all == true do
                local args = {
                        [1] = Vector3.new(999999,99999,99999)
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Nebula Kamehameha").Event:FireServer(unpack(args))
                    
        task.wait()
end
end

local function inf()
        while _G.inf do
        local args = {
                [1] = "Power",
                [2] = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClaimReward"):FireServer(unpack(args))
            task.wait()
        end
end

local function inf_posion()
   while _G.inf_posion do
        local args = {
                [1] = "x5 Power",
                [2] = 999
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
            
            task.wait()
   end
end

local function inf_spin()
        while _G.inf_spin do
        local args = {
                [1] = "Spins",
                [2] = 999
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AddWheelSpinValue"):FireServer(unpack(args))
            task.wait()
        end 
end
local ui = Library:NewWindow("idk name of game")

local auto = ui:NewSection("rich")

auto:CreateToggle("Lag All", function(value)
        _G.lag_all = value
        lag_all()
end)

auto:CreateToggle("inf power", function(value)
        _G.inf = value
        inf()
end)

auto:CreateToggle("inf posion", function(value)
        _G.inf_posion = value
        inf_posion()
end)

auto:CreateToggle("inf spins", function(value)
        _G.inf_spin = value
        inf_spin()
end)