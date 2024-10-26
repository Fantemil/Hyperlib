while task.wait() do
local args = {
    [1] = {}
}

local Pack = game:GetService("ReplicatedStorage"):WaitForChild("OpenPack"):InvokeServer(unpack(args))
if Pack == 'rateLimited' then task.wait(3) else
print("Unpacked @"..Pack.Username,'('..Pack.DisplayName..')')
end
end