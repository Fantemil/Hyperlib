--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end

--// Service \\--
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Variables \\--
local Action = ReplicatedStorage:WaitForChild("Events"):WaitForChild("GamesActions")
local LossCounter = 0
local LossMult = 1
local Bias = {
    true,
    false
}
local Loss_Total = 0
local Win_Total = 0

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("CoinFlip by Ezpi")
Window:AddLabel({
    text = "This is not guaranteed profit"
})

--// CoinFlip \\--
Window:AddToggle({
    text = "Enabled",
    callback = function()
        while Library.flags.Enabled == true do
            -- Side to flip
            local Side = Library.flags.Flip_Side == "Heads"
            if Library.flags.Flip_Side == "Random" then
                Side = math.random(1, 2) == 1
            elseif Library.flags.Flip_Side == "Bias" then
                Side = Bias[math.random(1, #Bias)]
            end
            -- Amount to flip
            local Amount = tonumber(Library.flags.Flip_Amount) * LossMult
            local Max = tonumber(Library.flags.Max_Amount)
            if Amount > Max then
                Amount = Max
            end
            -- Flip
            local Result = game:GetService("ReplicatedStorage").Events.GamesActions:InvokeServer("Coinflip", Amount, Side)
            if Result then
                if Result[1]:find("lost") then
                    LossMult *= 2
                    LossCounter += 1
                    table.insert(Bias, not Side)
                    Loss_Total += 1
                    Loss_Statistic.Text = "Losses: " .. tostring(Loss_Total)
                else
                    LossMult = 1
                    LossCounter = 0
                    table.insert(Bias, Side)
                    Win_Total += 1
                    Win_Statistic.Text = "Wins: " .. tostring(Win_Total)
                end
                -- Update Info
                local Amount = tonumber(Library.flags.Flip_Amount) * LossMult
                local Max = tonumber(Library.flags.Max_Amount)
                if Amount > Max then
                    Amount = Max
                end
                LossCounter_Window.Text = "Loss Counter: " .. tostring(LossCounter)
                Betting_Window.Text = "Betting Amount: " .. Amount
            end
            task.wait()
        end
    end
})
Window:AddBox({
    text = "Bet Amount",
    flag = "Flip_Amount",
    value = "1",
    callback = function(A_1)
        Betting_Window.Text = "Betting Amount: " .. Library.flags.Flip_Amount * LossMult
    end
})
Window:AddBox({
    text = "Max Bet",
    flag = "Max_Amount",
    value = "16",
    callback = function(A_1)
        Betting_Window.Text = "Betting Amount: " .. Library.flags.Flip_Amount * LossMult
    end
})
Window:AddList({
    text = "Bet",
    values = {
        "Heads",
        "Tails",
        "Random",
        "Bias"
    },
    flag = "Flip_Side",
    callback = function()
        Win_Statistic.Text = "Wins: 0"
        Loss_Statistic.Text = "Losses: 0"
        Win_Total = 0
        Loss_Total = 0
    end
})
LossCounter_Window = Window:AddLabel({
    text = "Loss Counter: 0"
})
Betting_Window = Window:AddLabel({
    text = "Betting Amount: " .. Library.flags.Flip_Amount * LossMult
})
Window:AddButton({
    text = "Reset Loss Counter",
    callback = function()
        LossCounter_Window.Text = "Loss Counter: 0"
        Betting_Window.Text = "Betting Amount: " .. Library.flags.Flip_Amount
        LossMult = 1
        LossCounter = 0
    end
})
Win_Statistic = Window:AddLabel({
    text = "Wins: 0"
})
Loss_Statistic = Window:AddLabel({
    text = "Losses: 0"
})
Library:Init()