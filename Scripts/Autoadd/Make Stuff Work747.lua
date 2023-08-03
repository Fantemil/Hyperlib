if not syn then
    local executor = identifyexecutor() or "bad"
    hookfunc(identifyexecutor,function() return "Synapse X" end)
    if Krnl then
        Krnl.request = http_request
    end

    local compatible = Krnl or Fluxus or Oxygen or getgenv()[executor]
    getgenv().syn = compatible
end