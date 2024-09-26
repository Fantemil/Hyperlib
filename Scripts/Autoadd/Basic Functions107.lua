local dbg = {}
function getcallingscript()
 local s = debug.info(1, 's')
 for i, v in next, game:GetDescendants() do
  if v:GetFullName() == s then return v end
 end
 return nil
end
function dbg.getinfo(thread)
 local CurrentLine = tonumber(debug.info(thread, 'l'))
 local Source = debug.info(thread, 's')
 local name = debug.info(thread, 'n')
 local numparams, isvrg = debug.info(thread, 'a')
 if #name == 0 then name = nil end
 local a, b = debug.info(thread, 'a')
 return {
  ['currentline'] = CurrentLine,
  ['Source'] = Source,
  ['name'] = tostring(name),
  ['numparams'] = tonumber(numparams),
  ['is_vararg'] = isvrg and 1 or 0,
  ['short_src'] = tostring(Source:sub(1, 60))
  }
end
return dbg