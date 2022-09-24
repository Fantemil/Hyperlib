getgenv().Diamond = false
getgenv().Steel = false
getgenv().Gold = false
getgenv().Ruby = false
getgenv().Coal = false
getgenv().AX = false
--Functions
function Xray(V)
   local Blocks = game:GetService("Workspace").Blocks:GetDescendants()
   if V ~= "off" then
       for i, v in ipairs(Blocks) do
       if v.Name == "DiamondOre" then
           if Diamond == true then
               v.BoxHandleAdornment.Visible = true
           else
                v.BoxHandleAdornment.Visible = false
           end
       end
       if v.Name == "SteelOre" then
           if Steel == true then
               v.BoxHandleAdornment.Visible = true
           else
                v.BoxHandleAdornment.Visible = false
           end
       end
       if v.Name == "GoldOre" then
           if Gold == true then
               v.BoxHandleAdornment.Visible = true
           else
               v.BoxHandleAdornment.Visible = false
           end
       end
       if v.Name == "RubyOre" then
           if Ruby == true then
               v.BoxHandleAdornment.Visible = true
           else
               v.BoxHandleAdornment.Visible = false
           end
       end
       if v.Name == "CoalOre" then
           if Coal == true then
               v.BoxHandleAdornment.Visible = true
           else
               v.BoxHandleAdornment.Visible = false
           end
       end
   end
   else
       for i, v in ipairs(Blocks) do
       if v.Name == "DiamondOre" then
           v.BoxHandleAdornment.Visible = false
       end
       if v.Name == "SteelOre" then
           v.BoxHandleAdornment.Visible = false
       end
       if v.Name == "GoldOre" then
           v.BoxHandleAdornment.Visible = false
       end
       if v.Name == "RubyOre" then
           v.BoxHandleAdornment.Visible = false
       end
       if v.Name == "CoalOre" then
           v.BoxHandleAdornment.Visible = false
       end
       end
   end
end

--Gui
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("MinersCave") -- Creates the window

local b = w:CreateFolder("Actions")

local c =  w:CreateFolder("BlockFilters")

--Xray Toggle
b:Toggle("Xray",function(bool)
   if bool == true then
       Xray()
       getgenv().AX = true
   else
       Xray("off")
       getgenv().AX = false
   end
end)

--Ore Filters
c:Toggle("Diamond",function(bool)
   if bool == true then
       getgenv().Diamond = true
   else
       getgenv().Diamond = false
   end
   if getgenv().AX == true then
   Xray()
   end
end)

c:Toggle("Steel",function(bool)
   if bool == true then
       getgenv().Steel = true
   else
       getgenv().Steel = false
   end
   if getgenv().AX == true then
   Xray()
   end
end)

c:Toggle("Gold",function(bool)
   if bool == true then
       getgenv().Gold = true
   else
       getgenv().Gold = false
   end
  if getgenv().AX == true then
   Xray()
   end
end)

c:Toggle("Ruby",function(bool)
   if bool == true then
       getgenv().Ruby = true
   else
       getgenv().Ruby = false
   end
  if getgenv().AX == true then
   Xray()
   end
end)

c:Toggle("Coal",function(bool)
   if bool == true then
       getgenv().Coal = true
   else
       getgenv().Coal = false
   end
  if getgenv().AX == true then
   Xray()
   end
end)