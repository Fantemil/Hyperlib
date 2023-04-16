-- They send "[Your user here] imported a build" to the console if you successfuly
-- Imported a build, you can use that to check (if you are not using "Stop" ofc).

getgenv().Guesser = true -- Set to false to disable the script
getgenv().Speed = 0.2 -- How much time it will wait before guessing another code
getgenv().Stop = true -- Automatically stops when a new build is added - re-execute to guess another code

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local Guessed = {}
local Values = {"abcdefghijklmnopqrstuvwxyz", "1234567890"}
local Out = ""

local function _(...) if not game.Players.LocalPlayer.Character:FindFirstChild("Building Tools") then game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("Building Tools")) end game.Players.LocalPlayer.Character:FindFirstChild("Building Tools").SyncAPI.ServerEndpoint:InvokeServer("Import", (...)) end
local function __() for i = 1,4 do local Selected = Values[math.random(1, #Values)] local Randomized = math.random(1, string.len(Selected)) Out = (Out .. string.sub(Selected, Randomized, Randomized)) end end

getgenv().___ = workspace.ChildAdded:Connect(function(v)
    if Stop then
        Guesser = false
        if v:IsA("BasePart") or v:IsA("Model") then
            game.Players.LocalPlayer.Character:PivotTo(v:GetPivot())
        end
        Notification.new("success", "Stopped", "Stopped at: " .. Out)
        ___:Disconnect()
    end
end)

while task.wait(Speed) and Guesser do
    __()
    task.wait()
    if not table.find(Guessed, Out) then
        table.insert(Guessed, Out)
        _(Out)
        print("Attempted to import: " .. Out)
    end
    Out = "" -- Clear for next code.
end