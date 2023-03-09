for nodeIndex, node in pairs (workspace.jobInstances.police.ticketCarsNodes:GetChildren()) do
   
   game:GetService("ReplicatedStorage").remoteInterface.jobs.action:InvokeServer(node)
   
end