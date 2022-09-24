local onStepTaken
for i,v in pairs(getgc()) do
    if typeof(v) == "function" and getinfo(v).name == "onStepTaken" then
        onStepTaken = v
    end
end

getgenv().Toggle = true
while getgenv().Toggle do
    onStepTaken(true)
    task.wait()
end