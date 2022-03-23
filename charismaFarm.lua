local keys = {
    ["A"] = 0x41,
    ["B"] = 0x42,
    ["C"] = 0x43,
    ["D"] = 0x44,
    ["E"] = 0x45,
    ["F"] = 0x46,
    ["G"] = 0x47,
    ["H"] = 0x48,
    ["I"] = 0x49,
    ["J"] = 0x4A,
    ["K"] = 0x4B,
    ["L"] = 0x4C,
    ["M"] = 0x4D,
    ["N"] = 0x4E,
    ["O"] = 0x4F,
    ["P"] = 0x50,
    ["Q"] = 0x51,
    ["R"] = 0x52,
    ["S"] = 0x53,
    ["T"] = 0x54,
    ["U"] = 0x55,
    ["V"] = 0x56,
    ["W"] = 0x57,
    ["X"] = 0x58,
    ["Y"] = 0x59,
    ["Z"] = 0x5A,
    [" "] = 0x20,
    [","] = 0xBC,
    ["."] = 0xBE,
    ["?"] = 0xBF,
    ["-"] = 0xBD
}

_G.enable = true
game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
    if child.Name == "SimplePrompt" and _G.enable == true then
        local text = child.Prompt.Text
        local message = string.gsub(text, "Try some small talk on someone nearby.\n", "")
        local messageWithoutQuotes = string.gsub(message, "'", "")
        keypress(0x6F)
        keyrelease(0x6F)
        wait(.1)
        for a = 1, string.len(messageWithoutQuotes) do
            local letterUpper = string.upper(string.sub(messageWithoutQuotes,a,a))
            keypress(keys[letterUpper])
            keyrelease(keys[letterUpper])
        end
        wait(.1)
        keypress(0x0D)
        keyrelease(0x0D)
    end
end)
