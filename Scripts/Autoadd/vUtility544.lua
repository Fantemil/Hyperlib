local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/cerberus.lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local decompile = loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-SimpleDecompile-10228"))()
local window = ui.new("vUtility")
window:LockScreenBoundaries(true)
local tab = window:Tab("Decompiler")
local sec1 = tab:Section("ModuleScripts")
local sec2 = tab:Section("LocalScripts")
for i, v in game:GetDescendants() do
 local name;
 if v.Parent ~= nil then
  name = v.Parent.Name .. "/" .. v.Name
 else
  name = "getnilinstances()['" .. v.Name .. "']"
 end
 if v:IsA("ModuleScript") then
  sec1:Button(name, function()
   print(decompile(v))
  end)
 elseif v:IsA("LocalScript") then
  sec2:Button(name, function()
   print(decompile(v))
  end)
 end
end