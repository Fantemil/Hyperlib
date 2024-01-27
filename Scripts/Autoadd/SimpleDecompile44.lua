function processTableDescendants(tbl, indent)
  indent = indent or 0
  local result = ""
  for key, value in pairs(tbl) do
      if type(value) == "table" then
          if type(key) == "number" then
              result = result .. string.rep("  ", indent) .. "[" .. tostring(key) .. "] = {\n"
          else
              result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = {\n"
          end
          result = result .. processTableDescendants(value, indent + 1)
          result = result .. string.rep("  ", indent) .. "}\n"
      elseif type(value) == "function" then
          result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = function()\n" .. string.rep("  ", indent + 1) .. "funcInfo = {\n"
          local info = debug.getinfo(value)
          if tostring(info.is_vargar) == "1" then isvrg = "true" else isvrg = "false" end
          result = result .. string.rep("  ", indent + 2) .. ("Lines = %d, Name = %s, Parameters = %d, Is_Vargar = %s}"):format(info.currentline, tostring(info.name), info.numparams, isvrg)
          result = result .. "\n" .. string.rep("  ", indent) .. "end;\n"
      elseif typeof(value):lower() == "vector3" then
          result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = Vector3.new(" .. tostring(value.X) .. ", " .. tostring(value.Y) .. ", " .. tostring(value.Z) .. ");\n"
      elseif typeof(value):lower() == "vector2" then
          result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = Vector2.new(" .. tostring(value.X) .. ", " .. tostring(value.Y) .. ");\n"
      elseif typeof(value):lower() == "udim" then
          result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = UDim.new(" .. tostring(value.Scale) .. ", " .. tostring(value.Offset) .. ");\n"
      elseif typeof(value):lower() == "udim2" then
          result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = UDim2.new(" .. tostring(value.X.Scale) .. ", " .. tostring(value.X.Offset) .. ", " .. tostring(value.Y.Scale) .. ", " .. tostring(value.Y.Offset) .. ");\n"
      elseif typeof(value):lower() == "instance" then
        result = result .. string.rep("  ", indent) .. "['"..tostring(key).."'] = game." .. value:GetFullName() .. ";\n"
     else
          result = result .. string.rep("  ", indent) .. "['" .. tostring(key) .. "'] = " .. tostring(value) .. ";\n"
      end
  end

  return result
end
function DecompileFunction(func, excludename)
 local count = 1
 local inf, String = debug.getinfo(func), "function " .. tostring(debug.getinfo(func).name) .. "("
 if excludename then String = "function(" end
 if tostring(inf.is_vararg) == "1" then
  String = String .. "...)\n"
 else
  local ab = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
  if inf.numparams > 0 then
  for i = 1, inf.numparams, 1 do
    String = String .. ab[i]
    if i < inf.numparams then String = String .. ", " else String = String .. ")\n" end
  end
  elseif inf.numparams == 0 then
    String = String .. ")\n"
  end
  end
 StringHolder = String
 String = ""
 for i, v in getupvalues(func) do
  if type(v) == "table" then
   String = String .. string.format("\nlocal v%s = {%s}", tostring(count), processTableDescendants(v, 1))
  elseif typeof(v):lower() == "vector2" then String = String.. ("\nlocal v%s = Vector2.new(%d, %d)"):format(tostring(count), v.X, v.Y) elseif typeof(v):lower() == "vector3" then String = String .. ("\nlocal v%s = Vector3.new(%d, %d, %d)"):format(tostring(count), v.X, v.Y, v.Z) elseif typeof(v):lower() == "udim" then String = String .. ("\nlocal v%s = UDim.new(%d, %d)"):format(tostring(count), v.Scale, v.Offset) elseif typeof(v):lower() == "udim2" then String = String .. ("\nlocal v%s = UDim2.new(%d, %d, %d, %d)"):format(tostring(count), v.X.Scale, v.X.Offset, v.Y.Scale, v.Y.Offset) elseif typeof(v):lower() == "number" then String = String .. ("\nlocal v%s = %s"):format(tostring(count), tostring(v)) elseif typeof(v):lower() == 'instance' then String = String .. ("\nlocal v%s = game.%s"):format(tostring(count), v:GetFullName())
    end
    count+=1
  end
 if #getupvalues(func) == 0 then String = StringHolder else
 String = "--upvalues:" .. String .. "\n" .. StringHolder end
 for i, v in getconstants(func) do
  if typeof(v) == "table" then
    String = String .. string.format(" local v%s = {\n%s}\n", tostring(count), processTableDescendants(v, 1))
    elseif typeof(v) == "string" then String = String .. string.format(" local v%s = '%s'\n", tostring(count), tostring(v)) else String = String .. string.format(" local v%s = %s\n", tostring(count), tostring(v)) end
   count+=1
 end
 for i, v in getprotos(func) do
  String = String .. ("\n local %s\n end"):format(DecompileFunction(v, false))
 end
 return String
end
function DecompileScript(Script)
 if Script.ClassName == "ModuleScript" then Script = require(Script) end
 local Decompiled = ""
 for i, v in getsenv(Script) do
  if type(v) == "table" then
   if #v == 0 then Decompiled = Decompiled .. ("local %s = {}"):format(tostring(i)) else
    Decompiled = Decompiled .. ("local %s = {\n%s\n}"):format(tostring(i), processTableDescendants(v, 1)) end
   elseif type(v) == "function" then Decompiled = Decompiled .. ("local %s = %s\nend\n"):format(tostring(i), DecompileFunction(v, true)) end
 end
 return Decompiled
end
getgenv().decompile = DecompileScript