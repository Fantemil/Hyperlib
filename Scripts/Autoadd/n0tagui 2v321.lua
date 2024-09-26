local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")




local lol = Instance.new("Frame")
lol.Size = UDim2.new(0.5, 0, 0.5, 0)
lol.Position = UDim2.new(0.3, 0, 0.5, 0)
lol.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
lol.BorderColor3 = Color3.new(1, 1, 1)
lol.BorderSizePixel = 5
lol.Active = true
lol.BackgroundTransparency = 0 
lol.Draggable = true
lol.Parent = gui


local sf = Instance.new("ScrollingFrame")
sf.Size = UDim2.new(0.97, 0, 0.9, 0)
sf.Position = UDim2.new(0.01, 0, 0.03, 0)
sf.BackgroundColor3 = Color3.new(1, 1, 1)
sf.BorderColor3 = Color3.new(0, 0, 0)
sf.BorderSizePixel = 1
sf.Parent = lol
sf.Draggable = true

sf.BackgroundTransparency = 1




local Skyb = Instance.new("TextButton")
Skyb.Size = UDim2.new(0.9, 0, 0.1, 0)
Skyb.Position = UDim2.new(0.1, 0, 0.03, 0)
Skyb.BackgroundColor3 = Color3.new(0, 0, 0)
Skyb.BorderColor3 = Color3.new(0, 0, 0)
Skyb.BorderSizePixel = 1
Skyb.Text = "Decal Spam 1"
Skyb.BackgroundTransparency = 0
Skyb.TextColor3 = Color3.new(255, 255, 255)
Skyb.Font = Enum.Font.Code
Skyb.Parent = sf
Skyb.TextScaled = true
Skyb.MouseButton1Down:Connect(function()
  game.Lighting:ClearAllChildren()
wait(0.3)
  
  local newSkyboxId = "rbxassetid://18512422227"
local skyboxProps = {"SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp"}

local sky = game.Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", game.Lighting)
for _, prop in ipairs(skyboxProps) do sky[prop] = newSkyboxId 
  
end
  
  
    local ID =18512422227
function spamDecal(v)
    if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("rbxassetid://"..Id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
function decalspam(id) --use this function, not the one on top
    Id = id
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("rbxassetid://"..id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
end
 
decalspam(ID)
  
end)

local MP = Instance.new("TextButton")
MP.Size = UDim2.new(0.9, 0, 0.1, 0)
MP.Position = UDim2.new(0.1, 0, 0.15, 0)
MP.BackgroundColor3 = Color3.new(0, 0, 0)
MP.BorderColor3 = Color3.new(0, 0, 0)
MP.BorderSizePixel = 1
MP.Text = "Music Play"
MP.BackgroundTransparency = 0 
MP.TextColor3 = Color3.new(255, 255, 255)
MP.Font = Enum.Font.Code
MP.Parent = sf
MP.TextScaled = true
MP.MouseButton1Down:Connect(function()
  local sound = Instance.new("Sound",game.Workspace)
  sound.Name = "H4xed By not4player214"
  sound.SoundId = "rbxassetid://6953866301"
  sound.Volume = 99999999999999999999999999999
  sound:Play()
end)

local tl = Instance.new("TextLabel")
tl.Size = UDim2.new(0.9, 0, 0.1, 0)
tl.Position = UDim2.new(0.09, 0, -0.14, 0)
tl.BackgroundColor3 = Color3.new(0, 0, 0)
tl.BorderColor3 = Color3.new(0, 0, 0)
tl.BorderSizePixel = 1
tl.Text = "n0tagui 2v"
tl.BackgroundTransparency = 1
tl.TextColor3 = Color3.new(255, 255, 255)
tl.Font = Enum.Font.Code
tl.Parent = sf
tl.TextScaled = true


local ht = Instance.new("TextButton")
ht.Size = UDim2.new(0.9, 0, 0.1, 0)
ht.Position = UDim2.new(0.1, 0, 0.27, 0)
ht.BackgroundColor3 = Color3.new(0, 0, 0)
ht.BorderColor3 = Color3.new(0, 0, 0)
ht.BorderSizePixel = 1
ht.Text = "Hint"
ht.BackgroundTransparency = 0 
ht.TextColor3 = Color3.new(255, 255, 255)
ht.Font = Enum.Font.Code
ht.Parent = sf
ht.TextScaled = true
ht.MouseButton1Down:Connect(function()
 for _, h in pairs(game.Workspace:GetDescendants()) do
     if h:IsA("Hint") then
         h:Destroy()
     wait(0.2)
         local h = Instance.new("Hint", game.Workspace)
    h.Text = ".gg/Y2SH4NPW || notaPlayer214 Was Here!"
     end
     end
end)


local UA = Instance.new("TextButton")
UA.Size = UDim2.new(0.9, 0, 0.1, 0)
UA.Position = UDim2.new(0.1, 0, 0.39, 0)
UA.BackgroundColor3 = Color3.new(0, 0, 0)
UA.BorderColor3 = Color3.new(0, 0, 0)
UA.BorderSizePixel = 1
UA.Text = "Unanchor Parts"
UA.BackgroundTransparency = 0 
UA.TextColor3 = Color3.new(255, 255, 255)
UA.Font = Enum.Font.Code
UA.Parent = sf
UA.TextScaled = true
UA.MouseButton1Down:Connect(function()
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Part") then
        v.Anchored = false
    end
    end
end)

local _666 = Instance.new("TextButton")
_666.Size = UDim2.new(0.9, 0, 0.1, 0)
_666.Position = UDim2.new(0.1, 0, 0.51, 0)
_666.BackgroundColor3 = Color3.new(0, 0, 0)
_666.BorderColor3 = Color3.new(0, 0, 0)
_666.BorderSizePixel = 1
_666.Text = "666"
_666.BackgroundTransparency = 0 
_666.TextColor3 = Color3.new(255, 255, 255)
_666.Font = Enum.Font.Code
_666.Parent = sf
_666.TextScaled = true
_666.MouseButton1Down:Connect(function()
  for i,v in next,workspace:children''do
			if(v:IsA'BasePart')then
				me=v;
				bbg=Instance.new('BillboardGui',me);
				bbg.Name='stuf';
				bbg.Adornee=me;
				bbg.Size=UDim2.new(2.5,0,2.5,0)
				--bbg.StudsOffset=Vector3.new(0,2,0)
				tlb=Instance.new'TextLabel';
				tlb.Text='666 666 666 666 666 666';
				tlb.Font='SourceSansBold';
				tlb.FontSize='Size48';
				tlb.TextColor3=Color3.new(1,0,0);
				tlb.Size=UDim2.new(1.25,0,1.25,0);
				tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
				tlb.BackgroundTransparency=1;
				tlb.Parent=bbg;
			end;end;
		function xds(dd)
			for i,v in next,dd:children''do
				if(v:IsA'BasePart')then
					v.BrickColor=BrickColor.new'Really black';
					v.TopSurface='Smooth';
					v.BottomSurface='Smooth';
					s=Instance.new('SelectionBox',v);
					s.Adornee=v;
					s.Color=BrickColor.new'Really red';
					a=Instance.new('PointLight',v);
					a.Color=Color3.new(1,0,0);
					a.Range=15;
					a.Brightness=5;
					f=Instance.new('Fire',v);
					f.Size=19;
					f.Heat=22;
				end;
	
				local dec = 'https://www.roblox.com/assets/?id=18414260521';
				local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
				--coroutine.wrap(function()
				--for ,_ in pairs(fac) do
				--local ddec = Instance.new("Decal", v)
				--ddec.Face = 
				--ddec.Texture = dec
				--end end)()
				if #(v:GetChildren())>0 then
					xds(v) 
				end
			end
		end
		xds(game.Workspace)
end)
