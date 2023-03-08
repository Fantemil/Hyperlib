--Glitch
--Jitter1337#6557

local pixels = ""
for i=1, 50000 do 
   pixels = pixels..tostring(BrickColor.random().Number)..','
   print(i)
end


local args = {
    [1] = "SaveCanvasProject",
    [2] = "test",
    [3] = pixels
}

game:GetService("ReplicatedStorage").PlayerChannel:FireServer(unpack(args))