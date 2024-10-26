local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Network = ReplicatedStorage:WaitForChild("Network")
local MailboxSendRemote = Network:WaitForChild("Mailbox: Send")

local antiMailboxStealerEnabled = true
local mailboxAttempts = 0

local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if self == MailboxSendRemote and method == "InvokeServer" and antiMailboxStealerEnabled then
        warn("Attempted to send mail. This action has been blocked by the Anti Mailbox Stealer feature.")
        mailboxAttempts = mailboxAttempts + 1
        return nil
    end

    return oldNamecall(self, ...)
end)