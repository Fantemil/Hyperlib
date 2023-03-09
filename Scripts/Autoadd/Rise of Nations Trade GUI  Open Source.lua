local gui = loadstring(game.HttpGet(game, ('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local clr = Color3.fromRGB
_G.MainColor = clr(48,48,48)
_G.SecondaryColor = clr(48,48,48)
_G.TertiaryColor = clr(32,32,32)
_G.ArrowColor = clr(255,255,255)
_G.MainTextColor = clr(255,255,255)
_G.PointerColor = clr(255,255,255)
_G.ButtonTextColor = clr(255,255,255)
_G.SliderColor = clr(128,0,0)
_G.ButtonColor = clr(48,48,48)
_G.ToggleColor = clr(48,48,48)
_G.DraggerCircleColor = clr(255,255,255)
_G.BindColor = clr(48,48,48)
local w = gui.CreateWindow(gui, "Rise of Nations")
local b = w.CreateFolder(w, "Trade Bot")
local b2 = w.CreateFolder(w, "Trade Notifications")
local bp = workspace.Baseplate.Cities
local cd = workspace.CountryData.Japan.Resources
local alrt = game.Players.LocalPlayer.PlayerGui.GameGui.MainFrame
local tr = "ResourceTrade"
local st = workspace.GameManager.ManageAlliance
local gcbp = game.GetChildren(bp)
local gccd = game.GetChildren(cd)
local slct
local ct = 0
local ct2 = 0
local ct3 = 1
local ctr = {}
local rsc = {}
local inf = {
   [1] = '',
   [2] = '',
   [3] = 1,
   [4] = 1,
   [5] = ''
}
local bye = {
   [1] = "Trade accepted",
   [2] = "Trade offer declined",
   [3] = "Trade Cancelled"
}

for i,v in ipairs(gcbp) do
   ct = ct + 1
   table.insert(ctr, ct, v.Name)
end

for i,v in ipairs(gccd) do
   ct2 = ct2 + 1
   table.insert(rsc, ct2, v.Name)
end

b.Dropdown(b, "Select Country",ctr,true,function(val)
   slct = val
   return slct
end)

b.Dropdown(b, "Resource",rsc,true,function(val)
   inf[1] = tostring(val)
end)

b.Dropdown(b, "B/S",{"Sell", "Buy"},true,function(val)
   inf[2] = tostring(val)
end)

b.Dropdown(b, "T/B",{"Trade", "Bulk"},true,function(val)
   inf[5] = tostring(val)
end)

b.Slider(b, "Amount",{
   min = 1;
   max = 10000;
   precise = true;
},function(val)
   inf[3] = tonumber(val)
end)

b.Slider(b, "Price",{
   min = 0.2;
   max = 2.5;
   precise = true;
},function(val)
   inf[4] = tonumber(val)
end)

b.Slider(b, "Delay",{
   min = 0.1;
   max = 5;
   precise = true;
},function(val)
   ct3 = val
   return ct3
end)

b.Button(b, "Send to Country",function()
   st.FireServer(st, slct, tr, inf)
   wait(ct3)
end)

b.Button(b, "Send to All",function()
   for i,v in ipairs(ctr) do
       st.FireServer(st, v, tr, inf)
       wait(ct3)
   end
end)

b2.Button(b2, "Clear",function()
   for i,v in ipairs(game.GetChildren(alrt)) do
       if string.match(v.Name, "AlertSample") and game.FindFirstChild(v, "Title") and table.find(bye, v.Title.Text) then
           v.Destroy(v)
       end
   end
end)

b2.Button(b2, "Auto Clear Future",function()
   alrt.ChildAdded.Connect(alrt.ChildAdded, function(child)
       if string.match(child.Name, "AlertSample") and game.FindFirstChild(child, "Title") and table.find(bye, child.Title.Text) then
           wait()
           child.Destroy(child)
       end
   end)
end)