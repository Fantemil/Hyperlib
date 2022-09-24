local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("A") -- Creates the window

local b = w:CreateFolder("B") -- Creates the folder(U will put here your buttons,etc)

b:Bind("On",Enum.KeyCode.Z,function() --Default bind
getgenv().Ks = true
while Ks == true do
    wait()
spawn(function()
local localPlayer = game:GetService("Players").LocalPlayer

local function booga()
    local closestPlayer = nil
  local shortestDistance = math.huge
    for i, v in pairs(workspace.Ignore.Zombies:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0  and v:FindFirstChild("Head") then
            local magnitude = (v.Head.Position - localPlayer.Character.Head.Position).magnitude

            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end

    return closestPlayer
end

local args = {
    [1] = booga().Humanoid
}

game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(unpack(args))
end)
end

end)

b:Bind("Off",Enum.KeyCode.X,function() --Default bind
getgenv().Ks = false
end)