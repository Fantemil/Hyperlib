--[[
       << Disclaimer >>
    this script make for people that can read and edit the script
    If you want to use this script please leave a credit if you can
    
    Credit - CatExe
    My Discord : catxd_exe
    Join My Discord : https://discord.gg/zxNwa2bTRa
    
]]--

-- Get Powers :
local args = {[1] = "power",[2] = 20000000000000000000000000}
game:GetService("ReplicatedStorage").Remote.Event.NewPlayerGuide:FindFirstChild("[C-S]GivePlayerRewards"):FireServer(unpack(args))

-- Get Gems :
local args = {[1] = 20000000000000000000000000}
game:GetService("ReplicatedStorage").Remote.Function.MiniGame:FindFirstChild("[C-S]GetRewards"):InvokeServer(unpack(args))

-- Get Wins (A little bit) :
for i = 1,35 do task.wait()
	game:GetService("ReplicatedStorage").Remote.Event.SurpriseGift:FindFirstChild("[C-S]GetSurpriseGift"):FireServer()
end


-- Get OP Pets : {
-- Get Medals (For Open Event Egg) :
for i = 1,1000 do
    local args = {[1] = true}
    game:GetService("ReplicatedStorage").Actives.Active_1:FindFirstChild("[C-S]PlayerEnd"):FireServer(unpack(args))
end
-- Open OP Pet }
local args = {
    [1] = "Active1_3",
    [2] = 10 -- amount of egg open
}
game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

-- Get Relics (Open Relic) :
for i = 1,25 do
    local args = {
        [1] = "6",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").Remote.Function.Ornaments:FindFirstChild("[C-S]PlayerTryDoLuck"):InvokeServer(unpack(args))
end

-- Get All Titles :
for i = 1,20 do
    local args = {[1] = "Beginner",[2] = ""..i..""}
    game:GetService("ReplicatedStorage").Remote.Event.Titles:FindFirstChild("[C-S]UnlockTitle"):FireServer(unpack(args))
    local args = {[1] = "Expert",[2] = ""..i..""}
    game:GetService("ReplicatedStorage").Remote.Event.Titles:FindFirstChild("[C-S]UnlockTitle"):FireServer(unpack(args))
    local args = {[1] = "Master",[2] = ""..i..""}
    game:GetService("ReplicatedStorage").Remote.Event.Titles:FindFirstChild("[C-S]UnlockTitle"):FireServer(unpack(args))
end

-- Instant Win (Still Have Some bug) :
_G.InstantWin = true
local InstantWin
InstantWin = hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    if getnamecallmethod() == "FireServer" and tostring(self) == "[C-S]RaceStartOrEnd" then
        if args[1] == true and _G.InstantWin then
            game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerEnd"):FireServer(true,1)
            args[1] = false
        end
    end
    return InstantWin(self,...)
end)
