local M = {}

local groups = require("idkhow.groups.init")

---@class Theme
---@field name string
---@field palette ThemePalette  A palette that shows the intention of each color.
---@field contrast ContrastSpec A palette revolving around contrast, helps to make dark and light versions.

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
---@field standout   string
---@field yell       string
---@field pop        string
---@field shine      string
---@field shy        string
---@field deeper     string
---@field subtle     string
---@field softer     string
---@field vibrant    string
---@field intense    string
---@field muted      string

---@class ContrastSpec
---@field primary string|{main: string, shade: string, alt: string}
---@field contrast   string|{main: string, shade: string, alt: string}
---@field text       string|{normal: string, hide: string, relevant: string}


--- color palette
---@param theme Theme
function M.apply(theme)
    vim.cmd [[hi clear]]
    vim.g.colors_name = theme.name

    local editor = groups.editor(theme)

    for group, conf in pairs(editor) do
        vim.api.nvim_set_hl(0, group, conf)
    end

    local syntax = groups.syntax(theme)

    for group, conf in pairs(syntax) do
        vim.api.nvim_set_hl(0, group, conf)
    end

    local diagnostic = groups.diagnostic(theme)

    for group, conf in pairs(diagnostic) do
        vim.api.nvim_set_hl(0, group, conf)
    end
end

return M
