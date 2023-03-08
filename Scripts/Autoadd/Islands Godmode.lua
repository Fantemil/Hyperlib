local clientrequest = require(game:GetService("ReplicatedStorage").TS.event["client-request-id"]).ClientRequestId
local network = require(game:GetService("ReplicatedStorage").TS.network["network-service"]).NetworkService
network:sendClientRequest(clientrequest.ACK_DAMAGE, {
   damage = 0/0,
})