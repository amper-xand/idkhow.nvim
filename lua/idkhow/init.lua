local M = {}

M.name = "idkhow"

--TODO: add setup settings

---load a theme by its name
---@param name any
function M.load(name)
    require("idkhow.themes").apply(M.get(name))
end

---get a theme by its name
---@param name Theme
---@return Theme
function M.get(name)
    if name == "razzmatazz" then
        return require("idkhow.themes.razzmatazz").razzmatazz.light
    end

    if name == "razzmatazzdark" then
        return require("idkhow.themes.razzmatazz").razzmatazz.dark
    end

    if name == "razzmatazzdarker" then
        return require("idkhow.themes.razzmatazz").razzmatazz.darker
    end

    return require("idkhow.themes.razzmatazz").razzmatazz.light
end

return M
