if game.PlaceId == 12004891930 then
 canContinue = true
end

repeat task.wait() until canContinue

local ignoresLayers, plr, layers, autofarm, mined, files, tpb = false, workspace:WaitForChild("Debris"):WaitForChild(game:GetService("Players").LocalPlayer.Name),  {
    "barrier",
    "the void.",
    "inner core",
    "outer core",
    "stone",
    "marble",
    "clay",
    "mantle",
    "obsidian"
}, false, "Mined Blocks: \n", 1, false

local function mine(block)
if tpb then
     plr.HumanoidRootPart.CFrame = block.CFrame
     end
     workspace.Debris[plr.Name].Pickaxe.ApplyTarget:InvokeServer(block,block.CFrame)
     workspace.Debris[plr.Name].Pickaxe.Activation:FireServer(true)
end

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." GUI", "Serpent")

local Main = Window:NewTab("Main")

local MainSection = Main:NewSection("Auto Farm")

local AutoFarm = MainSection:NewToggle("Auto Mine", "Auto dig blocks.", function()
    autofarm = not autofarm
end)

local IgnoreLayers = MainSection:NewToggle("Ignore layers", "Ignore layer-tier blocks.", function()
    ignoreLayers = not ignoreLayers
end)
local TpB = MainSection:NewToggle("Teleport to blocks", "Teleport to blocks while auto mining.", function()
    tpb = not tpb
end)
local S = MainSection:NewButton("Save mined blocks", "Saves all mined blocks into a file named UTM-Mined", function()
    if not isfolder("UTM") then 
      makefolder("UTM")
      writefile("UTM/UTM-Mined", mined)
    else
      for _, file in listfiles("UTM") do
        if not file == nil then
          files+=1
        end
      end
      local path = "UTM/UTM-Mined #"..files
      writefile(path, mined)
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    task.wait()
    if autofarm then
      for _, block in pairs(workspace:WaitForChild("Mine"):GetChildren()) do
        if ignoreLayers and not table.find(layers, block.Name:lower()) then
            mine(block)
            mined = mined.."\n"..block.Name
          elseif not ignoreLayers and table.find(layers, block.Name:lower()) then
            mine(block)
            mined = mined.."\n"..block.Name
          end
      end
      workspace:FindFirstChild("Mine").ChildAdded:Connect(function(block)
          if ignoreLayers and not table.find(layers, block.Name:lower()) then
            mine(block)
            mined = mined.."\n"..block.Name
          elseif not ignoreLayers then
            mine(block)
            mined = mined.."\n"..block.Name
          end
        end)
end
end)