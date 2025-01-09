local M = {}

local groups = require("idkhow.groups")

---@class Theme
---@field name     string
---@field palette  ThemePalette  A palette that shows the intention of each color.
---@field contrast ContrastSpec A palette that helps selecting contrasting colors
---@field editor   EditorSpec
---@field syntax   SyntaxSpec

---@class ThemePalette
-- informational
---@field info       string
---@field error      string
---@field danger     string
---@field warning    string
---@field success    string
---@field neutral    string
-- status
---@field bad        string
---@field good       string
---@field benign     string
-- accents
---@field yell       string
---@field pop        string
---@field shine      string
---@field shy        string
---@field hide       string
---@field intense    string

---@class ContrastSpec
---@field primary string|{main: string, shade: string, alt: string}
---@field contrast   string|{main: string, shade: string, alt: string}


---get a theme by its name
---@param name string
---@return Theme
function M.get(name)
    if name == "razzmatazz" then
        return require("idkhow.themes.razzmatazz").razzmatazz.light
    end

    if name == "razzmatazzdarker" then
        return require("idkhow.themes.razzmatazz").razzmatazz.darker
    end

    if name == "extendedplay" then
        return require("idkhow.themes.extendedplay").extendedplay.dark
    end

    if name == "gloomdivision" then
        return require("idkhow.themes.gloomdivision").gloomdivision.light
    end

    -- if name == "extendedplaylight"  then
    --     return require("idkhow.themes.extendedplay").extendedplay.light
    -- end

    return require("idkhow.themes.razzmatazz").razzmatazz.light
end

---load a theme by its name
---@param name string
function M.load(name)
    M.apply(M.get(name))
end

--- color palette
---@param theme Theme
function M.apply(theme)
    vim.g.colors_name = theme.name

    ---@param group_df Group
    local function set_groups(group_df)
        for group, conf in pairs(group_df) do
            vim.api.nvim_set_hl(0, group, conf)
        end
    end

    local editor     = groups.editor(theme)
    local syntax     = groups.syntax(theme)
    local diagnostic = groups.diagnostic(theme)
    local treesitter = groups.treesitter(theme)
    local lsp        = groups.lsp(theme)
    local signs      = groups.signs(theme)

    set_groups(editor)
    set_groups(syntax)
    set_groups(diagnostic)
    set_groups(treesitter)
    set_groups(lsp)
    set_groups(signs)
end

return M
