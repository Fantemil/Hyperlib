local Modules = {
    Colors = {
        ["Green"] = "0,255,0",
        ["White"] = "255,255,255"
    },
    Services = {
        RunService = game:GetService("RunService"),
        CoreGui = game:GetService("CoreGui")
    }
}

for i = 1,20 do 
    print("\n")
end 

Modules.ChangeColor = function()
    local Loop
    Loop = Modules.Services.RunService.Heartbeat:Connect(function()
        local success, err = pcall(function()
            for _, label in pairs(Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster"):GetDescendants()) do
                if label:IsA("TextLabel") then
                    label.RichText = true
                end
            end
        end)

        if not success then
            warn(`An error occurred: {err}`)
            Loop:Disconnect()
        end
    end)
end

Modules.SpinningDonut = function(watermark, color, delay)
    delay = delay or 0.05

    local Text = watermark .. tostring(math.random(500, 20000))
    print(Text)

    local donutLabel = nil
    repeat
        task.wait()
        for _, label in pairs(Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster"):GetDescendants()) do
            if label:IsA("TextLabel") and string.find(label.Text:lower(), Text:lower()) then
                donutLabel = label
                break
            end
        end
    until donutLabel

    local theta_spacing = 0.07
    local phi_spacing = 0.02
    local R1 = 1
    local R2 = 2
    local K2 = 5
    local K1 = 40

    local A, B = 0, 0

    while true do
        local output = {}
        local zbuffer = {}

        for i = 1, 80 do
            output[i] = {}
            zbuffer[i] = {}
            for j = 1, 40 do
                output[i][j] = ' '
                zbuffer[i][j] = 0
            end
        end

        for theta = 0, 2 * math.pi, theta_spacing do
            local costheta = math.cos(theta)
            local sintheta = math.sin(theta)

            for phi = 0, 2 * math.pi, phi_spacing do
                local cosphi = math.cos(phi)
                local sinphi = math.sin(phi)

                local circlex = R2 + R1 * costheta
                local circley = R1 * sintheta

                local x = circlex * (math.cos(B) * cosphi + math.sin(A) * math.sin(B) * sinphi) - circley * math.cos(A) * math.sin(B)
                local y = circlex * (math.sin(B) * cosphi - math.sin(A) * math.cos(B) * sinphi) + circley * math.cos(A) * math.cos(B)
                local z = K2 + math.cos(A) * circlex * sinphi + circley * math.sin(A)
                local ooz = 1 / z

                local xp = math.floor(40 + K1 * ooz * x)
                local yp = math.floor(20 - K1 * ooz * y)

                if xp >= 1 and xp <= 80 and yp >= 1 and yp <= 40 then
                    local L = cosphi * costheta * math.sin(B) - math.cos(A) * costheta * sinphi - math.sin(A) * sintheta + math.cos(B) * (math.cos(A) * sintheta - costheta * math.sin(A) * sinphi)

                    if L > 0 then
                        if ooz > (zbuffer[xp][yp] or 0) then
                            zbuffer[xp][yp] = ooz
                            local luminance_index = math.floor(L * 8)
                            local chars = ".,-~:;=!*#$@"
                            output[xp][yp] = chars:sub(luminance_index + 1, luminance_index + 1)
                        end
                    end
                end
            end
        end

        local displayText = ""
        for j = 1, 40 do
            for i = 1, 80 do
                displayText = displayText .. (output[i][j] or ' ')
            end
            displayText = displayText .. "\n"
        end

        donutLabel.Text = string.format("<font color='rgb(%s)' size='12'>%s</font>", Modules.Colors[color], displayText)
        A = A + 0.05
        B = B + 0.03
        task.wait(delay)
    end
end



Modules.ChangeColor()

Modules.SpinningDonut("Donut", "Green", 0.05)