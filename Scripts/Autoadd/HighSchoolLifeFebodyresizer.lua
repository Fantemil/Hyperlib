local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("script by")

local c = w:CreateFolder("oooga booga")
c:Box("Overrall size","number",function(value) -- "number" or "string"


local args = {
   [1] = {
       ["BodyTypeScale"] = value,
       ["DepthScale"] = value,
       ["HeadScale"] = value,
       ["HeightScale"] = value,
       ["ProportionScale"] = value,
       ["WidthScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Box("WidthScale","number",function(value) -- "number" or "string"
local args = {
   [1] = {

       ["WidthScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Box("HeightScale","number",function(value) -- "number" or "string"
local args = {
   [1] = {

       ["HeightScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Box("HeadScale","number",function(value) -- "number" or "string"
local args = {
   [1] = {

       ["HeadScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Box("DepthScale","number",function(value) -- "number" or "string"
local args = {
   [1] = {

       ["DepthScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Box("BodyTypeScale","number",function(value) -- "number" or "string"
local args = {
   [1] = {

       ["BodyTypeScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Box("ProportionScale","number",function(value) -- "number" or "string"
local args = {
   [1] = {

       ["ProportionScale"] = value
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)
c:Button("Becum buff",function()

local args = {
   [1] = {
       ["BodyTypeScale"] = 1.5,
       ["DepthScale"] = 1.7,
       ["HeadScale"] = 1.5,
       ["HeightScale"] = 1.5,
       ["ProportionScale"] = 1.5,
       ["WidthScale"] = 1.7
   }
}

game:GetService("ReplicatedStorage").AvatarEditorConnections.UpdateScale:InvokeServer(unpack(args))
end)