--just a simple script, btw if you change true to false it wont do sh
_G.AutoReb = true
    while _G.AutoReb == true do wait()
    game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()
end