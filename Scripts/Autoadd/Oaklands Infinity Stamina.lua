for _,t in pairs(getgc(true)) do
if type(t) == 'table' then
    if rawget(t, "BaselineStamina") then
     rawset(t, "BaselineStamina", 10000)
    if rawget(t,'RechargeRate') then
    rawset(t,'RechargeRate', 40)
    end
end
end
end