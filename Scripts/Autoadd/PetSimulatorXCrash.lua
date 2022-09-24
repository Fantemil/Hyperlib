local t, spawn, _, __ = {'Spawn'}, task.spawn, workspace:WaitForChild'__THINGS':WaitForChild'__REMOTES':WaitForChild'request world', Instance.new'RemoteEvent'.FireServer
for i = 1, 5e3 do
   spawn(__, _, t)
end