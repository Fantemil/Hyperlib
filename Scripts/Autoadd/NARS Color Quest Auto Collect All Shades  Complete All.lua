local dontrerollenchants = {} --format: {"enchanthere", "otherenchanthere"}

error()
function getenchants()
    local myitem = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].Enchanter.Item.Value
    local e1, e2, e3 = myitem.Config.Enchant1.Value, myitem.Config.Enchant2.Value, myitem.Config.Enchant3.Value
    function getrealenchant(enchant)
        --[[ this errors because of the [ (why, i tried putting it in '' and "" still errors someone please explain thanks)
        local split1 = string.split(enchant, ",")[1]
        local sub1 = string.gsub(split1, '"', "")
        return string.gsub(sub1, '[', "")
        ]]
        local decoded = game:GetService("HttpService"):JSONDecode(enchant)
        return decoded[1] --this is arguably easier tbh
    end
    e1 = getrealenchant(e1)
    e2 = getrealenchant(e2)
    e3 = getrealenchant(e3)
    return {e1, e2, e3}
end
function reroll()
    game:GetService("ReplicatedStorage").Framework.RemoteFunction:InvokeServer(0, "EnchanterServer", "Buy", {})
end
while task.wait(0.1) do
    for i, v in pairs(getenchants()) do
        if table.find(dontrerollenchants, v) then
            error()
        end
    end
    reroll()
end