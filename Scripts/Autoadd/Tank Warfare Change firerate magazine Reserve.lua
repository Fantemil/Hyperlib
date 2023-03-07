for _,t in pairs(getgc(true)) do
if type(t) == 'table' then
    if rawget(t, "ReloadTime") then
    rawset(t, "ReloadTime", 0)
    if rawget(t,'Reserve') then
    rawset(t,'Reserve', 1000000)
    if rawget(t,'Magazine') then
    rawset(t,'Magazine', 100000)
    if rawget(t,'FireRate') then
    rawset(t, 'FireRate', 0.2)
    if rawget(t,'SpreadGain') then
    rawset(t,'SpreadGain', 0)
    if rawget(t, 'SpreadRecovery') then
    rawset(t,'SpreadRecovery', 100000)
    if rawget(t,'VibrationScale') then
    rawset(t,'VibrationScale', 0)
    if rawget(t,'Acceleration') then
    rawset(t,'Acceleration', 200)
end
end
end
end
end
end
end
end
end
end