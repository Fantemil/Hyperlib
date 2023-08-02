local w = getrenv().wait
local lplr = game.Players.LocalPlayer
local mouse = lplr:GetMouse()
local function ammo()
local valid, ammo = pcall(function()
    return lplr.PlayerGui.WeaponDisplay.Frame.Ammo.Text -- basically just checks if weapondisplay.frame.ammo is a valid member of playergui without a chain of findfirstchild or waitforchild
end)
if valid then
    return ammo
    else
    return
end
end
getrenv().wait = function(n)
    local calling = getcallingscript()
    if calling and calling.Parent.ClassName == "Tool" then --checks if the script is from a tool aka your weapon
        return task.wait() -- proceeds to wait the littlest time possible
    else
        return w(n)
    end
end
mouse.Button1Down:connect(function()
    local ammo = ammo()
    if ammo then
    local idk = ammo:split(" ")
    if idk[1] == "0" then -- your current ammo
        keypress(0x52) -- the R keycode
        keyrelease(0x52)
    end
    end
end)
print("haha funny script")