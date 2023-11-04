plr = game:GetService("Players").LocalPlayer
local name = plr.Name
local display = plr.DisplayName
function IsA(...)
local Args = {...}
if table.find(Args, Args[1].ClassName) then
return true
end
end
function e()
for i, v in next, workspace:GetDescendants() do
if v:IsA("Model") and game:GetService("Players"):GetPlayerFromCharacter(v) == plr then
return v
end
end
end
local cha = e()

function changeText(n)
   plr.Name, plr.DisplayName = "???", "???"
    if n:IsA("TextLabel") or n:IsA("TextButton") or n:IsA("TextBox") then
        if n.Text:lower():find(display:lower()) and not n.Text:find("???") then
            n.Text = n.Text:lower():gsub(display:lower(), "???")
        end
        if n.Text:lower():find(name:lower()) and not n.Text:find("???") then
            n.Text = n.Text:gsub(name:lower(), "???")
        end
    end
end
task.spawn(function()
            plr.Name, plr.DisplayName = "???", "???"
            while task.wait(5) do
            for i, v in next, game:GetDescendants() do
                changeText(v)
            end end
end)
game.DescendantAdded:Connect(changeText)

for _, part in next, cha:GetDescendants() do
if part:IsA("Part") then
part.Color = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
end
if IsA(part, "Shirt", "Pants", "ShirtGraphic", "Accessory") then
part:Destroy()
end
end 