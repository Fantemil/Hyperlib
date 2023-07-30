getgenv(). train = not train -- run it twice to stop

while wait() do
	if not train then break end
	workspace.Main.RemoteEvent:FireServer(9e9)
	workspace.Main2.RemoteEvent:FireServer(9e9)
	workspace.Main3.RemoteEvent:FireServer(9e9)
end