local char = workspace:WaitForChild(game:GetService("Players").LocalPlayer.Name)
local plr = game:GetService("Players").LocalPlayer
if not isfolder("GM") then
makefolder("GM")
end
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local layers = {
  "stone";
  "dark stone";
  "granite";
  "obsidian";
  "diorite";
  "andesite",
  'sand';
}

local autofarm, tptb, ml, blocked, blocks = false, false, false, 0, ""

char.PrimaryPart = char["HumanoidRootPart"]

local Window = Library.CreateLib(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." GUI", "Serpent")

local Main = Window:NewTab("Main")

local MainSection = Main:NewSection("Auto")

local AutoFarm = MainSection:NewToggle("Auto Dig", "Auto mines blocks for you.", function()
    autofarm = not autofarm
end)
local MineL = MainSection:NewToggle("Mine layers", "If off, will not mine layers (stone, darkstone etc)", function()
    ml = not ml
end)
local TP = MainSection:NewToggle("TP to blocks", "Teleports to the blocks you're going to mine.", function()
    tptb = not tptb
end)
local g = MainSection:NewButton("Save mined blocks", "Saves all mined blocks in a folder named GM.", function()
files = #listfiles("GM")
if files == nil then
files = 0
end
    local path = "GM/Mined Blocks"..files
    blocks = "Total blocks: "..blocked.."\n"..blocks
    writefile(path, blocks)
end)
game:GetService("RunService").RenderStepped:Connect(function()
    
    for _, block in pairs(workspace:FindFirstChild("Blocks"):GetChildren()) do
      if autofarm then
      if not ml and not table.find(layers, block.Name:lower()) then
      task.wait()
      blocked+=1
      blocks = blocks.."\n"..block.Name.." CFrame Y: "..block.CFrame.Y
      game:GetService("ReplicatedStorage").Events["MineOre"]:FireServer(block)
      if tptb then char["HumanoidRootPart"].CFrame = block.CFrame 
      print("Mined "..block.Name..' at Y '..char["HumanoidRootPart"].CFrame.Y) end
      
        elseif ml then
        task.wait()
        blocked+=1
      blocks = blocks.."\n"..block.Name.." CFrame Y: "..block.CFrame.Y
          if tptb then
           char["HumanoidRootPart"].CFrame = block.CFrame
           print("Mined "..block.Name..' at Y '..char["HumanoidRootPart"].CFrame.Y)
            end
      game:GetService("ReplicatedStorage").Events["MineOre"]:FireServer(block)
        end
    end
    end
  end)