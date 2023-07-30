while true do
    wait()
    local args = {[1] = Vector3.new(-786.1152954101562, -5256.6484375, 8417.0732421875)}
    game:GetService("ReplicatedStorage").heavy:FireServer(unpack(args))
end