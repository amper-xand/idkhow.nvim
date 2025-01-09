local M = {}

---base color palette
local razzmatazz = {
    -- picked from cover
    eggshell      = "#E9E7D5",
    gold          = "#FEA030",
    safety_orange = "#F7812A",
    red_cmyk      = "#EE2E2B",
    jet           = "#312F32",
    -- alt colors
    antique_white = "#E9E7D5",
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
    blue          = "#2f47AA",
    black         = "#0c0c0f",
    -- softer colors
    silver        = "#E5E3CF",
    coral         = "#FF6F61",
    rust          = "#B7410E",
}

---@type Theme
---darker version of the razzmatazz theme (the first I made, the others are derived from this one)
razzmatazz.darker = {
    name = "razzmatazzdarker",
    palette = {
        -- informational
        info     = razzmatazz.blue,
        error    = razzmatazz.red_cmyk,
        danger   = razzmatazz.safety_orange,
        warning  = razzmatazz.gold,
        success  = razzmatazz.green,
        neutral  = razzmatazz.white,
        -- status
        bad      = razzmatazz.ivory,
        good     = razzmatazz.green,
        benign   = razzmatazz.dark_slate,
        -- accents
        standout = razzmatazz.ivory,
        yell     = razzmatazz.red_cmyk,
        pop      = razzmatazz.safety_orange,
        shine    = razzmatazz.gold,
        shy      = razzmatazz.dark_slate,
        hide     = razzmatazz.graish,
        intense  = razzmatazz.gold,
    },

    editor = {
        background = razzmatazz.dark_jet,
        activebg   = razzmatazz.jet,
        text       = razzmatazz.eggshell,
        cursor     = razzmatazz.eggshell,
        visual     = razzmatazz.red_cmyk,
        menu       = razzmatazz.jet,
        selection  = razzmatazz.safety_orange,
        status     = razzmatazz.red_cmyk,
        statusnc   = razzmatazz.safety_orange,
    },

    syntax = {
        keyword  = razzmatazz.red_cmyk,
        modifier = razzmatazz.gold,
        type     = razzmatazz.gold,
        typedef  = razzmatazz.safety_orange,
        literal  = razzmatazz.rust,
        strings  = razzmatazz.coral,
        constant = razzmatazz.rust,
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
    }
}

---@type Theme
---light version of the razzmatazz theme
razzmatazz.light = {
    name = "razzmatazz",
    palette = {
        -- informational
        info    = razzmatazz.blue,
        error   = razzmatazz.red_cmyk,
        danger  = razzmatazz.safety_orange,
        warning = razzmatazz.gold,
        success = razzmatazz.green,
        neutral = razzmatazz.graish,
        -- status
        bad     = razzmatazz.ivory,
        good    = razzmatazz.green,
        benign  = razzmatazz.blue,
        -- accents
        yell    = razzmatazz.red_cmyk,
        pop     = razzmatazz.safety_orange,
        shine   = razzmatazz.gold,
        shy     = razzmatazz.dark_slate,
        hide    = razzmatazz.graish,
        intense = razzmatazz.red_cmyk,
    },

    editor = {
        background = razzmatazz.silver,
        activebg   = razzmatazz.white,
        text       = razzmatazz.jet,
        cursor     = razzmatazz.dark_jet,
        visual     = razzmatazz.red_cmyk,
        menu       = razzmatazz.red_cmyk,
        selection  = razzmatazz.safety_orange,
        status     = razzmatazz.red_cmyk,
        statusnc   = razzmatazz.safety_orange,
    },

    syntax = {
        keyword  = razzmatazz.red_cmyk,
        modifier = razzmatazz.gold,
        type     = razzmatazz.gold,
        typedef  = razzmatazz.safety_orange,
        literal  = razzmatazz.rust,
        strings  = razzmatazz.coral,
        constant = razzmatazz.rust,
    },

    contrast = {
        primary  = vim.deepcopy(razzmatazz.darker.contrast.primary),
        contrast = razzmatazz.darker.contrast.primary,
    }
}

razzmatazz.light.contrast.primary.main = razzmatazz
.silver                                                    -- use a less lighter color for the background for better contrast with light colors

---razzmatazz themes
M.razzmatazz = razzmatazz

return M
