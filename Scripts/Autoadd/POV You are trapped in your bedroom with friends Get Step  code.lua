local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Some shit game")

local b = w:CreateFolder("Main")

b:Button("Get Step 9 code",function()
local a = {}
for _,v in next, game:GetService("Players").LocalPlayer.PlayerScripts.Step9.code:GetChildren() do
table.insert(a,v.Value)
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Step9",Text = tostring(a[1]..a[2]..a[3]..a[4]..a[5]..a[6]..a[7]..a[8].."."..9),Duration = 30})
end)

b:Button("Show Click Detectors",function()
    for i,v in pairs(game:GetDescendants()) do
    if v.Name == "ClickDetector" then
        if not v.Parent:FindFirstChild("Highlight") then
            Instance.new("Highlight",v.Parent)
        end
    end
end
end)