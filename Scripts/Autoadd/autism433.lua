local howmuch = 1000000000000000000000

local tomult = false
local mult = 2

local sex = workspace.Balls:GetChildren()
for i,v in sex do
    if tomult then
            local thing = v:GetAttribute("Value")
            v:SetAttribute("Value", thing * mult)
    else
        v:SetAttribute("Value", howmuch)
    end
end