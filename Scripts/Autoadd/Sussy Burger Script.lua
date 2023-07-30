local chezburger = game:GetObjects("rbxassetid://12985260882")[1]

enabled = true

function onActivated()
	if not enabled  then
		return
	end

	enabled = false
	chezburger.GripForward = Vector3.new(-.981, 0.196, 0)
	chezburger.GripPos = Vector3.new(-.5, 1.7, -1.5)
	chezburger.GripRight = Vector3.new(0, -0, -1)
	chezburger.GripUp = Vector3.new(0.196, .981, 0)

	chezburger.Handle.DrinkSound:Play()
	wait(.8)

	chezburger.GripForward = Vector3.new(-1, 0, 0)
	chezburger.GripPos = Vector3.new(-.5, -.1, 0)
	chezburger.GripRight = Vector3.new(0, 0, 1)
	chezburger.GripUp = Vector3.new(0,1,0)

	enabled = true
end

function onEquipped()
	chezburger.Handle.OpenSound:play()
end

chezburger.Parent = game.Players.LocalPlayer.Backpack

chezburger.Activated:connect(onActivated)
chezburger.Equipped:connect(onEquipped)
