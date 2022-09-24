local function assemblePayload(targetEasel)
   local cells = {}
   local name = targetEasel.ArtInfo.Frame.Info.ArtName.Text
   local frameColor = targetEasel.ArtInfo.Frame.Info.Frame.BackgroundColor3:ToHex()
   
   local grid = targetEasel.Canvas.SurfaceGui.Grid
   for i = 1, 1024 do
       cells[i] = grid[i].BackgroundColor3:ToHex()
   end
   
   local payload = {}
   payload["FrameColor"] = frameColor
   payload["Name"] = name
   payload["Cells"] = cells
   
   return(payload)
end

local function clonePainting(targetEasel)
   local payload = assemblePayload(targetEasel)
   local remote = game.ReplicatedStorage.Remotes.CreateArt
   remote:InvokeServer(payload)
end

local mouse = game.Players.LocalPlayer:GetMouse()
local debounce = false

mouse.Button1Down:Connect(function()
if (mouse.Target) then
   if (mouse.Target.Name == "Canvas" and not debounce) then
       clonePainting(mouse.Target.Parent)
       debounce = true
   end
end
end)

mouse.Button1Up:Connect(function()
if (debounce) then
   debounce = false
end
end)