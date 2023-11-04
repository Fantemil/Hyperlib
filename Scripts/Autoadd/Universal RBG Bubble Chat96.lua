--RGB CHAT COLOR


textcolour = Color3.new(0,0,0)

game:GetService("Chat").BubbleChatEnabled = true

coroutine.wrap(function()
    while wait() do
        for i = 0,255,10 do
            textcolour = Color3.new(255/255,i/255,0/255)
            wait()
        end
        for i = 255,0,-10 do
            textcolour = Color3.new(i/255,255/255,0/255)
            wait()
        end
        for i = 0,255,10 do
            textcolour = Color3.new(0/255,255/255,i/255)
            wait()
        end
        for i = 255,0,-10 do
            textcolour = Color3.new(0/255,i/255,255/255)
            wait()
        end
        for i = 0,255,10 do
            textcolour = Color3.new(i/255,0/255,255/255)
            wait()
        end
        for i = 255,0,-10 do
            textcolour = Color3.new(255/255,0/255,i/255)
            wait()
        end
    end
end)()

local settings = {
    
}

while wait() do
    pcall(function()
        game:GetService("Chat"):SetBubbleChatSettings({
            TextColor3 = textcolour,
            -- The amount of time, in seconds, to wait before a bubble fades out.
            BubbleDuration = 20,
            -- The amount of messages to be displayed, before old ones disappear
            -- immediately when a new message comes in.
            MaxBubbles = 20,

            -- Styling for the bubbles. These settings will change various visual aspects.
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            TextSize = 16,
            Font = Enum.Font.Ubuntu, --Enum.Font.GothamSemibold
            Transparency = .1,
            CornerRadius = UDim.new(0, 30),
            TailVisible = true,
            Padding = 8, -- in pixels
            MaxWidth = 500, --in pixels

            -- Extra space between the head and the billboard (useful if you want to
            -- leave some space for other character billboard UIs)
            VerticalStudsOffset = 0,
        
            -- Space in pixels between two bubbles
            BubblesSpacing = 3,
        
            -- The distance (from the camera) that bubbles turn into a single bubble
            -- with ellipses (...) to indicate chatter.
            MinimizeDistance = 250,
            -- The max distance (from the camera) that bubbles are shown at
            MaxDistance = 1000,
        })
    end)
end