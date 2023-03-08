ToClickboard = true
LuaSeelScriptToDeobfuscate = [[

]]-- Put here LuaSeel 1.1 script!

-- DON'T CHANGE ANYTHING HERE
local Deobfuscate = LuaSeelScriptToDeobfuscate local v0 = string.gsub(string.find(Deobfuscate,"{")," ","");local v1 = string.gsub(string.find(Deobfuscate,"}")," ","");print('\n Run this and you\'ll get an deobfuscated script \nâ¼ â¼ â¼ â¼ â¼ â¼ â¼ â¼ â¼ \nprint( loadstring("'..string.gsub(string.gsub(string.sub(Deobfuscate,tonumber(v0)+2,tonumber(v1)-2),"'",""),",","")..'")() ) \nâ² â² â² â² â² â² â² â² â² \n Run this and you\'ll get an deobfuscated script'); if ToClickboard == true then setclipboard('print( loadstring("'..string.gsub(string.gsub(string.sub(Deobfuscate,tonumber(v0)+2,tonumber(v1)-2),"'",""),",","")..'")() )') end