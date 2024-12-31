local M = {}

M.name = "idkhow"

---@class IDKConfig
---@field theme string

function M.load(name)
    local themes = require("idkhow.themes")

    if name == "razzmatazzlight" then
        themes.apply(themes.razzmatazz_light)
    elseif name == "razzmatazzdark" then
        themes.apply(themes.razzmatazz_dark)
    end
end

M.load("razzmatazzdark")

return M
