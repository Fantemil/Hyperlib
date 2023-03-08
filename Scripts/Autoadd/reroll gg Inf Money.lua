getgenv().Config = {
   Enabled = true, --[Master Toggle]--
   Legit = false, --[Opens Slower to Seem Legit]--
   Case = "breakout_case", --[Case You Want to Open]--
   Blacklist = {"Melee", "Bronze", "Silver", "Gold", "Diamond", "Unobtainable"}, --[Items You Don't Want to Sell]--
}

local LocalPlayer = game:GetService("Players").LocalPlayer
local Data = LocalPlayer.Data
local Remotes = game:GetService("ReplicatedStorage").Remotes

while Config.Enabled do
   if Config.Legit then
       task.wait(3)
   else
       task.wait()
   end
   
   Remotes.BuyCase:FireServer(Config.Case)
   Remotes.BuyKey:FireServer(Config.Case)
   Remotes.OpenCase:InvokeServer(Config.Case, 3)
   
   for _,v in next, Data.Inventory.Skins:GetDescendants() do
       if not table.find(Config.Blacklist, v.Parent.Name) then
           Remotes.SellSkin:FireServer(v.Name, "Factory New")
       end
   end
end