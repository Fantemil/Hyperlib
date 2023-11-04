--// Variables \\--

local loadedLevels = game:GetService("Workspace"):WaitForChild("LoadedLevels")
local deadlyParts = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("LoadLevel"):WaitForChild("EditorParts"):WaitForChild("Deadly")

--// Hooking Death Function \\--

for k, v in next, getgc() do
    if type(v) == "function" and getinfo(v).name == "Kill" then
        hookfunction(v, function(...) return end)
        break;
    end
end

--// Disabling Spike Colliders \\--

local function noclipObject(v)
    if v.Name == "Collider" and deadlyParts:FindFirstChild(v.Parent.Name) then
        v.CanCollide = false
    end
end

loadedLevels.DescendantAdded:Connect(noclipObject)

for _, v in next, loadedLevels:GetDescendants() do
    noclipObject(v)
end

-- Script by DylanIsAKing#2402 ;)