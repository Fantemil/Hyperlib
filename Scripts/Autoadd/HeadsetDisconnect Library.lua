function headsetLib(title, description, button, callback, closewhenclicked, textscaled)
    --[[
        The function needs several parameters, these includes:
            > title: The title text for the dialog box.
            > description: The description text for the dialog box.
            > button: The text to display on the button.
            > callback: A function to execute when the button is clicked.
            > closewhenclicked: A boolean indicating whether the dialog box should close when the button is clicked.
            > textscaled: A string specifying which elements should have scaled text.
    ]]--

    local Players = game:GetService("Players")
    local CoreGui = game:GetService("CoreGui")
    local TeleportService = game:GetService("TeleportService")

    local dialog = CoreGui.HeadsetDisconnectedDialog:Clone()
    dialog.Parent = CoreGui
    dialog.Name = math.random(1,1600)
    dialog.Enabled = true

    local textscaledElements = {}

    --[[
        The `textscaled` parameter determines which elements should have scaled text.
        The elements are added to the `textscaledElements` table for later processing.
    ]]--
    if textscaled == "title, description" then
        table.insert(textscaledElements, "title")
        table.insert(textscaledElements, "description")
    elseif textscaled == "description, button" then
        table.insert(textscaledElements, "description")
        table.insert(textscaledElements, "button")
    elseif textscaled == "all" then
        table.insert(textscaledElements, "title")
        table.insert(textscaledElements, "description")
        table.insert(textscaledElements, "button")
    end

    -- Setting the title, description, and button text of the dialog box.
    dialog.Overlay.Alert.AlertContents.TitleContainer.TitleArea.Title.Text = title
    dialog.Overlay.Alert.AlertContents.MiddleContent.Content.BodyText.Text = description
    dialog.Overlay.Alert.AlertContents.Footer.Buttons["1"].ButtonContent.ButtonMiddleContent.Text.Text = button
    dialog.Overlay.Alert.AlertContents.Footer.Buttons["1"].ButtonContent.ButtonMiddleContent.Text.Size = UDim2.new(1, 0, 0, 21)

    -- Scaling the text for the specified elements.
    for _, element in ipairs(textscaledElements) do
        if element == "title" then
            dialog.Overlay.Alert.AlertContents.TitleContainer.TitleArea.Title.TextScaled = true
        elseif element == "description" then
            dialog.Overlay.Alert.AlertContents.MiddleContent.Content.BodyText.TextScaled = true
        elseif element == "button" then
            dialog.Overlay.Alert.AlertContents.Footer.Buttons["1"].ButtonContent.ButtonMiddleContent.Text.TextScaled = true
        end
    end

    local function handleClick()
        callback()
        if closewhenclicked then
            dialog.Enabled = false
        end
        dialog:Destroy() -- Destroying the dialog box to prevent stacking up.
    end

    dialog.Overlay.Alert.AlertContents.Footer.Buttons["1"].MouseButton1Click:Connect(handleClick)
end


headsetLib("Title", "Description", "Button", function() -- # title, description (description, button), callback
    print("Button Pressed!")
end, true, false) -- # closewhenclicked, textscaled