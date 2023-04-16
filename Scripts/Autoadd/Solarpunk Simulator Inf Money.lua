local args = {
    [1] = math.huge,
    [2] = "Coins"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.2"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("TutorialService"):WaitForChild("RF"):WaitForChild("GiveRewards"):InvokeServer(unpack(args))

local args = {
    [1] = math.huge,
    [2] = "Diamonds"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.2"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("TutorialService"):WaitForChild("RF"):WaitForChild("GiveRewards"):InvokeServer(unpack(args))

local args = {
    [1] = "Zone1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.2"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ZoneService"):WaitForChild("RF"):WaitForChild("BuyZone"):InvokeServer(unpack(args))

local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.2"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("InfluencerDonationService"):WaitForChild("RF"):WaitForChild("JoinTeamWithSolarBeans"):InvokeServer(unpack(args))


for i=1,5 do
while true do
local args = {
    [1] = 5000000000000
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.2"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("CompetitionService"):WaitForChild("RF"):WaitForChild("DonateCurrency"):InvokeServer(unpack(args))
end
task.wait()
end