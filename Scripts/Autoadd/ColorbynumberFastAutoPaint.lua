local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

local knit = ReplicatedStorage:WaitForChild("Knit")
local services = knit:WaitForChild("Services")
local pixelGenService = services:WaitForChild("PixelGeneratorService"):WaitForChild("RF")

local drawPixel = pixelGenService:WaitForChild("DrawPixel")

local function getPlot()
 for _, plot in ipairs(workspace.Map.Blocks:GetChildren()) do
  local drawModel = plot:FindFirstChild("Draw")

  if drawModel and drawModel:GetAttribute("PlayerId") == localPlayer.UserId then
   return plot
  end
 end
 return nil
end

local function drawPlot(plot)
 if plot then
  for _, pixel in ipairs(plot.Draw:GetChildren()) do
   coroutine.wrap(function()
    if pixel:IsA("BasePart") and pixel.Transparency ~= 1 and not pixel:GetAttribute("colored") then
     task.wait(math.random(0, 100) / 33)
     drawPixel:InvokeServer(pixel)
    end
   end)()
  end
 end
end

local autoPaintHook
autoPaintHook = hookmetamethod(game, "__namecall", function(this, ...)
 if this.Name == "GetPaletteCompleted" and getnamecallmethod() == "InvokeServer" then
  drawPlot(getPlot())
 end

 return autoPaintHook(this, ...)
end)