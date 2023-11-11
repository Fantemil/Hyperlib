c=game.workspace["Collect $1000"]
c.Head.CanCollide = false
c.Head.Size =  Vector3.new(0.1, 0.1, 0.1)
c.Humanoid:Destroy()
c.Brick.Transparency = 1
c.Head.Transparency = 1
t=game.Players.LocalPlayer.Name
p=game.workspace[t]
while task.wait() do
    task.wait()
    c.Head.CFrame = p["Right Leg"].CFrame
    task.wait()
    c.Head.CFrame = p["Left Leg"].CFrame
end