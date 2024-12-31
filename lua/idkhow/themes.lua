local groups = require("idkhow.groups")

local M = {}

---@class Theme
---@field name string
---@field palette ThemePalette?  A palette that shows the intention of each color.
---@field contrast ContrastSpec? A palette revolving around contrast, helps to make dark and light versions.

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
local razzmatazz = {
    -- picked from cover
    eggshell      = "#E9E7D5",
    gold          = "#FEB030",
    safety_orange = "#F7812A",
    red_cmyk      = "#EE2E2B",
    jet           = "#312F32",
    -- alt colors
    antique_white = "#E9E7D5",
    golden_rod    = "#E3B406",
    ivory         = "#D60817",
    dark_jet      = "#0F0B09",
    -- alt lighter colors
    white         = "#FFFFFF",
    khaki         = "#FFE480",
    orange_red    = "#E35806",
    dark_slate    = "#535055",
    -- misc colors
    graish        = "#7f7b62",
    green         = "#419950",
    blue          = "#2f37FF",
    black         = "#0c0c0f",
    -- additional colors related to the palette
    silver        = "#E5E3CF",
    coral         = "#FF6F61",
    peach         = "#FFDAB9",
    rust          = "#B7410E",
    persimmon     = "#F8290D",
    cinnamon      = "#B87333",
    carrot        = "#ED9121",
}

---@type Theme
M.razzmatazz_dark = {
    name = "razzmatazzdark",
    palette = {
        -- informational
        info       = razzmatazz.blue,
        error      = razzmatazz.red_cmyk,
        danger     = razzmatazz.safety_orange,
        warning    = razzmatazz.gold,
        success    = razzmatazz.green,
        neutral    = razzmatazz.apricot,
        -- status
        bad        = razzmatazz.ivory,
        good       = razzmatazz.green,
        benign     = razzmatazz.blue,
        -- accents
        standout   = razzmatazz.ivory,
        yell       = razzmatazz.red_cmyk,
        pop        = razzmatazz.safety_orange,
        shine      = razzmatazz.gold,
        shy        = razzmatazz.dark_slate,

        deeper     = razzmatazz.rust,
        subtle     = razzmatazz.peach,
        softer     = razzmatazz.coral,
        vibrant    = razzmatazz.carrot,
        intense    = razzmatazz.gold,
        muted      = razzmatazz.cinnamon,
    },

    contrast = {
        primary  = {
            main  = razzmatazz.dark_jet,
            shade = razzmatazz.jet,
            alt   = razzmatazz.dark_slate,
        },
        contrast = {
            main  = razzmatazz.eggshell,
            shade = razzmatazz.white,
            alt   = razzmatazz.khaki,
        },
        text     = {
            normal   = razzmatazz.eggshell,
            hide     = razzmatazz.graish,
            relevant = razzmatazz.khaki,
        },
    }
}

---@type Theme
M.razzmatazz_light = {
    name = "razzmatazzlight",
    palette = {
        -- informational
        info       = razzmatazz.blue,
        error      = razzmatazz.red_cmyk,
        danger     = razzmatazz.safety_orange,
        warning    = razzmatazz.gold,
        success    = razzmatazz.green,
        neutral    = razzmatazz.apricot,
        -- status
        bad        = razzmatazz.ivory,
        good       = razzmatazz.green,
        benign     = razzmatazz.blue,
        -- accents
        standout   = razzmatazz.ivory,
        yell       = razzmatazz.safety_orange,
        pop        = razzmatazz.red_cmyk,
        shine      = razzmatazz.gold,
        shy        = razzmatazz.dark_slate,

        deeper     = razzmatazz.rust,
        subtle     = razzmatazz.rust,
        softer     = razzmatazz.coral,
        vibrant    = razzmatazz.carrot,
        intense    = razzmatazz.persimmon,
        muted      = razzmatazz.cinnamon,
    },

    contrast = {
        primary  = M.razzmatazz_dark.contrast.contrast,
        contrast = M.razzmatazz_dark.contrast.primary,
        text     = {
            normal   = razzmatazz.dark_slate,
            hide     = razzmatazz.graish,
            relevant = razzmatazz.dark_jet,
        },
    }
}

M.razzmatazz_light.contrast.primary.main = razzmatazz.silver

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
