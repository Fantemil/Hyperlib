-- Define the ManFace function
function ManFace()
    local message = "man face man"
    local recipient = "All"
    for i = 1, 3 do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, recipient)
        wait(1)
    end
end

-- Get the Worlds folder
local worlds = game.Workspace.Worlds

-- Check if Lobby or TradingPlaza exists
local eggHuntLocation = worlds:FindFirstChild("Lobby") or worlds:FindFirstChild("TradingPlaza")

if not eggHuntLocation then
    error("Neither Lobby nor TradingPlaza was found in Workspace > Worlds.")
end

-- If TradingPlaza is found, send a message in the chat
if eggHuntLocation.Name == "TradingPlaza" then
    ManFace()
end

-- Get the EggHuntEggs folder
local eggHuntEggs = eggHuntLocation.EggHuntEggs

-- Function to fire all ClickDetectors of an object
local function fireClickDetectors(object)
    for _, child in ipairs(object:GetChildren()) do
        if child:IsA("ClickDetector") then
            fireclickdetector(child)
        end
        -- Recursively fire ClickDetectors for children of the object
        fireClickDetectors(child)
    end
end

-- Function to iterate over all items and fire their ClickDetectors
local function fireAllClickDetectors()
    for _, item in ipairs(eggHuntEggs:GetChildren()) do
        fireClickDetectors(item)
        wait(1) -- Wait for 1 second
    end
end

-- Fire all ClickDetectors and show notification when done
fireAllClickDetectors()

-- Send the appropriate notification
if eggHuntLocation.Name == "TradingPlaza" then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Egg Hunt";
        Text = "Finished collecting all the eggs, now you only need to complete a trade to get the golden egg!";
    })
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Egg Hunt";
        Text = "Finished grabbing all the eggs!";
    })
end
