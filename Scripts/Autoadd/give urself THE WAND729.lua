local scriptsneeded = 3
local color = Color3.fromRGB(98,37,209)
local name = "Click"

local found

for i, v in next, workspace:GetChildren() do
    local scripts = 0
    for index, scripter in next, v:GetChildren() do
        if scripter:IsA("Script") then
            scripts = scripts + 1
        end
    end
    if scripts == scriptsneeded then
        print("pass1")
        if v.Name == name then
            print("pass2")
            if v.Color == color then
                print("giving the wand...")
                fireclickdetector(v.ClickDetector)
            end
        end
    end
end