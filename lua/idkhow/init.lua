local M = {}

M.name = "idkhow"

--TODO: add setup settings

function M.load(name)
    local themes = require("idkhow.themes")

    if name == "razzmatazz" then
        themes.apply(require("idkhow.themes.razzmatazz").razzmatazz.light)
    elseif name == "razzmatazzdark" then
        themes.apply(require("idkhow.themes.razzmatazz").razzmatazz.dark)
    elseif name == "razzmatazzdarker" then
        themes.apply(require("idkhow.themes.razzmatazz").razzmatazz.darker)

        return
    end
end

M.load("razzmatazzdarker")

return M
