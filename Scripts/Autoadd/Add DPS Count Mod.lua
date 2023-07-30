
local infoframe = game:GetService("Players").LocalPlayer.PlayerGui.MouseSelection.TowerFrame.TopInfoFrame

function filternumber(str)
    local letters = str:split("")
    local opened = false
    local endnumbstring = ""
    
    for i, v in pairs(letters) do 
        if v == ">" then 
            opened = true 
        elseif v == "<" then 
            opened = false
        end
        
        if opened == true and v ~= ">" and v ~= "<" and v ~= "s" then 
            endnumbstring = endnumbstring..v
        end
    end
    return tonumber(endnumbstring)
end

function isdamageorseconds(damageorsecondsstr)
    local lineone = damageorsecondsstr:split(" ")[3]
    local linetwo = damageorsecondsstr:split("\n")[3]:split(" ")[2]
    print("linetwo:", linetwo)
    if lineone == "Damage:" and linetwo == "Fire" then 
        return true 
    else
        return false
    end
end

function calculatedps(txt)
    local damage = txt:split("\n")[1]
    local second = txt:split("\n")[3]
    
    return math.floor(filternumber(damage) / filternumber(second) * 100) / 100
end

function filterlines(str)
    local strlines = str:split("\n")
    local endresult = ""

    for i, v in pairs(strlines) do 
        if v:split(" ")[2] ~= "DPS" then
            endresult = endresult.."\n"..v
        end
    end
    return endresult
end


while wait() do 
    if infoframe.Visible == true then 
        if isdamageorseconds(infoframe.TextLabel.Text) == true then
            infoframe.TextLabel.Text = filterlines(infoframe.TextLabel.Text).."\n".."• DPS: <font color='rgb(255, 255, 255)'>"..calculatedps(infoframe.TextLabel.Text).."</font>"
        end
    end
end


