--// Global Variables \\--
_G.LimitedSniper = true

--// Local Variables \\--
local Items = game:GetService("ReplicatedStorage"):WaitForChild("Items")
local NewLimited = game:GetService("ReplicatedStorage"):WaitForChild("Limitteds")
local LocalPlayer = game.Players.LocalPlayer
local Robux = LocalPlayer:WaitForChild("Robux")

--// Math Module \\--
function Module(x, n, m)
    if n == 0 then
        return 1
    end
    if n % 2 == 0 then
        local y = Module(x, n / 2, m)
        return y * y % m
    end
    return x % m * Module(x, n - 1, m) % m
end

--// Chat Function \\--
function chat(msg)
local args = {
    [1] = msg
}
game:GetService("ReplicatedStorage"):WaitForChild("CHAT"):FireServer(unpack(args))
end


--// Notification Library \\--
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;


--// Limited Auto Buyer \\--
NewLimited.ChildAdded:Connect(function(Item)
    if Item:IsA("Folder") then
        local AssetID = Item:WaitForChild("AssetID")
        local Price = Item:WaitForChild("Price")
        if Robux.Value >= Price.Value then
            local Success, Result = pcall(function()
                task.wait(0.5)
                return Items:InvokeServer(Price.Value, AssetID.Value, Item.Name, Module(#NewLimited:GetChildren(), 5, 6059))
            end)
            
            if Success then
                Notify({
                Title = "Limited Sniper";
                Description = "Successfully Bought: " .. Item.Name;
                Duration = 10;
                });
                chat("Successfully Bought: " .. Item.Name)
            else
                Notify({
                Title = "Limited Sniper";
                Description = "Failed to Buy: " .. item.Name;
                Duration = 10;
                });
                chat("Failed to Buy: " .. Item.Name)
            end
        else
            Notify({
            Title = "Limited Sniper";
            Description = "Not Enough R$ to Buy: " .. Item.Name;
            Duration = 10;
            });
            chat("Not Enough R$ to Buy: " .. Item.Name)
        end
    end
end)