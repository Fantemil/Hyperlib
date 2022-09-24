--no recoil

local a;a=replaceclosure(spawn,function(b,...)if getcallingscript().name=="Core"and getconstant(b,2)=="math"then setupvalue(b,1,{Recoil=0})end;return a(b,...)end)