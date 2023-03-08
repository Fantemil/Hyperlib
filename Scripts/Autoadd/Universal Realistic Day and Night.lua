--Script by Kokc  Ambience changes with time.

L = Game:GetService("Lighting") 


while true do 
 wait(1)
 T = L:GetMinutesAfterMidnight()
 L:SetMinutesAfterMidnight(T + 1)
 if T < 300 then --Night time, after midnight.
  Game.Lighting.OutdoorAmbient = Color3.new(30/255,30/255,30/255)
 elseif T > 300 and T < 390 then --Dawn, sun rise.
  Game.Lighting.OutdoorAmbient = Color3.new((30+(T-300)/1.5)/255,(30+(T-300)/1.5)/255,(30+(T-300)/1.5)/255)
 elseif T > 390 and T < 600 then --Morning.
  Game.Lighting.OutdoorAmbient = Color3.new((90+(T-390)/7)/255,(90+(T-390)/7)/255,(90+(T-390)/7)/255)
 elseif T > 600 and T < 840 then --Day time.
  Game.Lighting.OutdoorAmbient = Color3.new(120/255,120/255,120/255)
 elseif T > 840 and T < 1050 then --Afternoon.
  Game.Lighting.OutdoorAmbient = Color3.new((120-(T-840)/7)/255,(120-(T-840)/7)/255,(120-(T-840)/7)/255)
 elseif T > 1050 and T < 1140 then --Evening, sun set.
  Game.Lighting.OutdoorAmbient = Color3.new((90-(T-1050)/1.5)/255,(90-(T-1050)/1.5)/255,(90-(T-1050)/1.5)/255)
 elseif T > 1140 then --Night time, before midnight.
  Game.Lighting.OutdoorAmbient = Color3.new(30/255,30/255,30/255)
 end  
end