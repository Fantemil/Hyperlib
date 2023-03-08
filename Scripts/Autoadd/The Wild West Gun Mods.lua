--[[
    Default value for faster reload is 1,
    Spam firing when the value is over 2 can result in invalid shots.
        
    The No Spread can result in your shotgun always getting invalids at specific ranges.
        
    Modify The Values as you'd like (You modify it by changing the number if you can't understand how)
]]

for _,v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "BaseRecoil") then
        --// Faster Reload (The Higher The Number The Faster It Reloads)
        v.ReloadSpeed = 1 
        v.LoadSpeed = 1
        v.LoadEndSpeed = 1

        --// No Spread
        v.FanAccuracy = 1
        v.ProjectileAccuracy = 1
        --// No Recoil
        v.BaseRecoil = 0
    end
end