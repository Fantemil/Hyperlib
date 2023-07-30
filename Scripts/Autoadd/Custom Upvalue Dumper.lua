-- Made by Wyv#0001 on Discord
local function getUpvalues(value, prefix, depth)
  assert(type(value) == "function", "Input argument must be a function")
  prefix = prefix or ""
  depth = depth or 0
  local getupvalues = debug.getupvalues
  local upvalues = getupvalues(value)
  local result = {}
  for i, upvalue in ipairs(upvalues) do
    local upvaluePrefix = prefix .. "Upvalue " .. i .. ": "
    local upvalueType = type(upvalue)
    local upvalueValue = tostring(upvalue)
    local maxDepth = 10 -- maximum recursion depth
    if upvalueType == "function" then
      upvalueValue = "function"
      if depth < maxDepth then
        local subresult = getUpvalues(upvalue, prefix .. "  ", depth + 1)
        for _, subupvalue in ipairs(subresult) do
          result[#result + 1] = subupvalue
        end
      else
        result[#result + 1] = prefix .. "  (max depth reached)"
      end
    else
      local handlers = {
        ["function"] = function(v) return "function" end,
        ["userdata"] = tostring,
        ["table"] = function(v) return tostring(v):gsub("table: ", "") end,
        -- add more handlers here if u need it
      }
      local handler = handlers[upvalueType]
      upvalueValue = handler and handler(upvalue) or upvalueValue
    end
    result[#result + 1] = upvaluePrefix .. upvalueType .. " - " .. upvalueValue
  end
  return result
end

-- usage
local upvalues = getUpvalues(hashtable)
for _, upvalue in ipairs(upvalues) do
  print(upvalue)
end