local codes = {
   "christmas",
   "tipjar",
   "hallowart",
   "frankenpablo",
   "art300",
   "colors300",
   "brush250",
   "paint300",
   "starvingart",
   "100million",
   "paintbrush250",
   "pixelart",
   "fartist",
   "pablo250",
   "monalisa200",
   "easterart",
   "picasso250",
   "pablo300",
   "bobux",
   "artcoin100",
   "starving"
}

local remotes = game:GetService("ReplicatedStorage").Remotes.Codes

local function executeCode(code)
   local args = {[1] = code}
   remotes:InvokeServer(unpack(args))
end

local function run()
   for i = 1, #codes do
       executeCode(codes[i])
   end
end

for j = 1, 21 do
   coroutine.wrap(run)()
   wait(2.75)
end