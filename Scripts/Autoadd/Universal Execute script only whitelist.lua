function thread(func) coroutine.resume(coroutine.create(function() pcall(func) end))  end

local whitelist = {
   "https://raw.githubusercontent.com",
   "https://pastebin.com",
   "https://hastebin.com",
   -- add more trusted websites here in " "
}

function checkWebsiteWhitelist(website)
   for _, v in pairs(whitelist) do
       if (website:sub(1, #v):lower() == v:lower()) then
           return true
       end
   end
   return false;
end

thread(function()
   local glbmt = getrawmetatable(game);
   setreadonly(glbmt, false);

   local oldIndex = glbmt.__index;
   local oldNamecall = glbmt.__namecall;

   glbmt.__index = function(self, ...)
       local args = {...};
       if (args[1] and type(args[1]) == "string" and args[1]:lower():find("http") and args[2]) then
           if (checkWebsiteWhitelist(args[2])) then
               print("Granted connection to", args[2])
           else
                   error("Refused to connect to ".. args[2].. ", it is not a whitelisted url!");
           end
       end
       return oldIndex(self, ...)
   end
   glbmt.__namecall = function(self, ...)
       local args = {...};
       local method = getnamecallmethod();
       if (method and type(method) == "string" and method:lower():find("http") and args[1]) then
           if (checkWebsiteWhitelist(args[1])) then
                print("Granted connection to", args[1])
           else
               error("Refused to connect to ".. args[1].. ", it is not a whitelisted url!");
           end
       end
       return oldNamecall(self, ...)
   end

   setreadonly(glbmt, true);
end)

thread(function()
   local oldSynHttp = syn.request or http_request;
   local oldSynWs = syn.websocket.connect or WebSocket.new;
   function hookedFunction(RequestData)
       if (RequestData and RequestData.Url) then
           if (checkWebsiteWhitelist(RequestData.Url)) then
               print("Granted connection to", RequestData.Url)
               return oldSynHttp(RequestData);
           else
               error("Refused to connect to ".. RequestData.Url .. ", it is not a whitelisted url!");
           end
       end
   end
   function websocketHook(Url)
       if (Url) then
           if (checkWebsiteWhitelist(Url)) then
               print("Granted [websocket] connection to", Url)
               return oldSynWs(Url);
           else
               error("Refused to connect [websocket] to ".. Url .. ", it is not a whitelisted url!");
           end
       end
   end
   if (not getfenv(0).WebSocket) then getfenv(0).WebSocket = {} end
   if (not getfenv(0).syn) then getfenv(0).syn = {} end
   if (not getfenv(0).syn.websocket) then getfenv(0).syn.websocket = {} end
   getfenv(0).http_request = hookedFunction;
   getfenv(0).WebSocket.new = websocketHook;
   hookfunction(syn.request, hookedFunction)
   hookfunction(syn.websocket.connect, websocketHook)
end)

print(syn.request({Url = "https://google.com"}))