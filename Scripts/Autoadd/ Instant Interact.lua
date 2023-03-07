if not funcs then
loadstring(game:HttpGet("https://raw.githubusercontent.com/6yNuiC9/scr/main/funcs.lua"))()
end
local vv;local scr=funcs.lplr:FindFirstChildOfClass'PlayerScripts'.ClientModule.InputControl;vv=hookfunction(TweenInfo.new,newcclosure(function(a,...)
if a and type(a)=='number' and getcallingscript()==scr then a=0 end
return vv(a,...)
end))