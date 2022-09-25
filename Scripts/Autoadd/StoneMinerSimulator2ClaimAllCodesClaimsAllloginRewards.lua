-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
for x = 1, 7 do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_1 = "get_seven_day_reward"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_2 = {["1"] = x}
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local Event = game:GetService("ReplicatedStorage").RemoteFunction
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    Event:InvokeServer(A_1, A_2)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    wait()
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
for _, v in pairs(game:GetService("Workspace").Code:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_1 = "redeem_code"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_2 = {
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        ["1"] = v.SurfaceGui.TextLabel.Text
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    }
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local Event = game:GetService("ReplicatedStorage").RemoteFunction
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    Event:InvokeServer(A_1, A_2)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
for _, v in pairs(game:GetService("Workspace").Code2:GetChildren()) do
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_1 = "redeem_code"
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local A_2 = {
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
        ["1"] = v.SurfaceGui.TextLabel.Text
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    }
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    local Event = game:GetService("ReplicatedStorage").RemoteFunction
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
    Event:InvokeServer(A_1, A_2)
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 
end
-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 

-- [[ dsc.gg/grimcity | Copyright © 2022 Grims Community™ ]] -- 