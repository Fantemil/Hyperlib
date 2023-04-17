repeat wait() until game.Loaded or game:IsLoaded();

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local w = library:CreateWindow("by dizy#5334")

local tab1 = w:CreateFolder("Farming")

local dont_enable_stream = false;
getgenv().AutoStream = false;
getgenv().RefillEnergy = false;
getgenv().AutoSellFollowers = false;
getgenv().DupeCodes = false;

tab1:Toggle("Auto Stream",function(bool)
    shared.toggle = bool;
    getgenv().AutoStream = bool;
end)

tab1:Toggle("Refill Energy",function(bool)
    shared.toggle = bool;
    getgenv().RefillEnergy = bool;
end)

tab1:Toggle("Auto Sell Followers",function(bool)
    shared.toggle = bool;
    getgenv().AutoSellFollowers = bool;
end)

tab1:Toggle("Dupe Codes",function(bool)
    shared.toggle = bool;
    getgenv().DupeCodes = bool;
end)

spawn(function()
    for i=1,math.huge do    
        wait()
        if getgenv().AutoStream then
            if game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("Streaming").Value == false then
                if not dont_enable_stream then
                    game:GetService("ReplicatedStorage").StreamChange:FireServer("On");
                end
            elseif game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("Streaming").Value == true then
                if getgenv().RefillEnergy then if game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("Energy").Value <= (game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("MaxEnergy").Value/5) then dont_enable_stream = true; game:GetService("ReplicatedStorage").StreamChange:FireServer("Off"); game:GetService("ReplicatedStorage").RewardEnergy:FireServer(game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("MaxEnergy").Value); game:GetService("ReplicatedStorage").StreamChange:FireServer("On"); dont_enable_stream = false; end end
                if getgenv().AutoSellFollowers then game:GetService("ReplicatedStorage").StreamChange:FireServer("Off"); firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game:GetService("Workspace"):FindFirstChild("MedievalSell"):FindFirstChild("SellHB"), 0); firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), game:GetService("Workspace"):FindFirstChild("MedievalSell"):FindFirstChild("SellHB"), 1); game:GetService("ReplicatedStorage").StreamChange:FireServer("On"); end
                if game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("ButtonTimer").Value ~= 0 then game:GetService("Players").LocalPlayer:FindFirstChild("values"):FindFirstChild("ButtonTimer").Value = 0; end
                game:GetService("ReplicatedStorage").BubbleReward:FireServer();
                wait(0.5);
                game:GetService("ReplicatedStorage").EReward:FireServer();
            end
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    spawn(function()
        if getgenv().DupeCodes then
            for _,v in pairs(game:GetService("Players").LocalPlayer:FindFirstChild("codes"):GetChildren()) do
                if v:IsA("BoolValue") then
                    game:GetService("ReplicatedStorage").AddCode:FireServer(tostring(v.Name));
                end
            end
        end
    end)
end)