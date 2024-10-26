local branch, owner = "main", "NoobExploits"

local function load(url: string)
  if (type(url)) ~= "string" then
    return warn("Url must be a string to load it.")
  else
    xpcall(function()
      loadstring(game:HttpGet(url))()
    end, function(error_code)
      return warn(("Error: %s on line %s"):format(error_code, debug.traceback()))
    end)
  end
end

load(("https://raw.githubusercontent.com/%s/Impact/%s/Load.lua"):format(owner, branch))