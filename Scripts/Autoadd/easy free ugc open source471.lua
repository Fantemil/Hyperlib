-- execute this first loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()

local function teleportToObject(object)
    if object and object:IsDescendantOf(game.Workspace) then
        local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        humanoidRootPart.CFrame = CFrame.new(object.Position)
    end
end
local function collectObjectsInFolder(folder)
    local objects = {}
    if folder and folder:IsA("Folder") then
        for _, obj in ipairs(folder:GetDescendants()) do
            if obj:IsA("BasePart") then
                table.insert(objects, obj)
            end
        end
    end
    return objects
end
local folderName = "Cheese"

while true do
    local folder = game.Workspace:FindFirstChild(folderName)
    if folder and folder:IsA("Folder") then
        local objects = collectObjectsInFolder(folder)
        for _, obj in ipairs(objects) do
            teleportToObject(obj)
            wait(0.1)
        end
    end
    wait(0.1)
end