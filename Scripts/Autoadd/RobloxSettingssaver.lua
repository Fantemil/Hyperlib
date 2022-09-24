local ugs = UserSettings():GetService("UserGameSettings")
local whitelist = {
-- "RCCProfilerRecordFrameRate",
-- "RCCProfilerRecordTimeFrame",
-- "RotationType",
"CameraYInverted",
"ComputerCameraMovementMode",
"ComputerMovementMode",
"ControlMode",
"GamepadCameraSensitivity",
"MasterVolume",
"MouseSensitivity",
-- "MouseSensitivityFirstPerson",
-- "MouseSensitivityThirdPerson",
"OnScreenProfilerEnabled",
"PerformanceStatsVisible",
"SavedQualityLevel",
"TouchCameraMovementMode",
"TouchMovementMode",
}
local readresult
if pcall(function()
readresult = loadstring("return" .. readfile("robloxSettings.txt"))()
end) then
for Setting, Value in next, readresult do
if ugs[Setting] ~= nil then
ugs[Setting] = Value
end
end
end

for _, WhilistSetting in ipairs(whitelist) do
ugs:GetPropertyChangedSignal(WhilistSetting):Connect(function()
local str = "{"
for i, v in ipairs(whitelist) do
if ugs[tostring(v)] then
str = str .. tostring(v) .. "=" .. tostring(ugs[v]) .. (i == #whitelist and "" or ",")
end
end
str = str .. "}"
writefile("robloxSettings.txt", str)
end)
end