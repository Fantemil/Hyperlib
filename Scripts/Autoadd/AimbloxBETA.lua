 for i,v in pairs(getgc(true)) do
   if type(v) == "table" then
       if rawget(v,"Ammo") then
           rawset(v,"Ammo",9e+99)
           rawset(v,"MaxAmmo",9e+99)
           rawset(v,"FiringMode","Auto")
           rawset(v,"MaxSpread",0)
           rawset(v,"RPM",50000)
           rawset(v,"Recoil",nil)
           rawset(v,"Spread",0)
           rawset(v,"VerticalRecoil",0)
           rawset(v,"HorizontalRecoil",nil)
       end
   end
end