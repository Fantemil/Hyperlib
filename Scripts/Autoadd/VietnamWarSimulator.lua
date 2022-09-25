if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Grenade") == nil then
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Grenade") == nil then
    local string_1 = "Grenade";
    local table_1 = {
        ["Price"] = 200,
        ["GP"] = false,
        ["Image"] = 'rbxassetid://4315210570'
    };
local bool_1 = false;
local Target = game:GetService("ReplicatedStorage").ShopBuy;
Target:FireServer(string_1, table_1, bool_1);
end
end
local function crash()
local a = game:GetService("Players").LocalPlayer.Backpack.Grenade.Throw
a:FireServer(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position)
end
game:GetService('Players').LocalPlayer.Backpack.Grenade.Parent = game:GetService('Players').LocalPlayer.Character
while wait() do
crash()
end