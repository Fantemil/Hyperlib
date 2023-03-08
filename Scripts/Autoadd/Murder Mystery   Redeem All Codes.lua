-- https://scriptblox.com/u/crimewave

local codes = game:GetService("ReplicatedStorage").Codes
local remote = game:GetService("ReplicatedStorage").Interactions.Server:FindFirstChild("RedeemCode")

local function redeem(code)
 local args = {[1] = code}
 remote:InvokeServer(unpack(args))
end

for _, v in ipairs(codes:GetDescendants()) do
 if v:IsA("Folder") then
  redeem(v.Name)
 end
end