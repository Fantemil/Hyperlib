loadstring(game:HttpGet(('https://raw.githubusercontent.com/GlitterLov3r/EliteScripts/main/Notification'),true))()

local throwKey = Enum.KeyCode.E -- change this to any keybind
local throwForce = 0 -- change this to adjust the force you want

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

mouse.Button1Down:connect(function()
    if mouse.Target then
        local mesh = Instance.new("SpecialMesh")
        mesh.MeshId = "rbxassetid://1484148960" -- change this to the MeshId of the mesh you want to throw
        mesh.TextureId = "rbxassetid://1484148974" -- change this to the TextureId of the mesh you want to throw
        mesh.Scale = Vector3.new(2, 2, 2)
        local part = Instance.new("Part")
        part.Size = Vector3.new(1, 1, 1)
        part.CFrame = CFrame.new(mouse.Hit.p)
        part.Anchored = true
        part.CanCollide = true
        part.Parent = workspace
        mesh.Parent = part
        local direction = (mouse.Hit.p - player.Character.Head.Position).unit
        part.Velocity = direction * throwForce
        wait(3)
        part:Destroy()
    end
end)