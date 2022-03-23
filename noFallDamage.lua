local game_metatable = getrawmetatable(game)
local namecall_original = game_metatable.__namecall
setreadonly(game_metatable, false)

game_metatable.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local script = getcallingscript()
    if self.Name == "FallDamage" then
        return
    end
    return namecall_original(self, ...)
end)
