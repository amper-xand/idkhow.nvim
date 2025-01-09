local M = {}

local extendedplay = {
    -- picked from cover
    alabaster      = "#E9E9DB",
    spanish_orange = "#E68F35",
    cinnabar       = "#E55439",
    imperial_red   = "#E53038",
    sapphire       = "#3254AB",
    tekhelet       = "#37317B",
    dark_purple    = "#251B36",
    night          = "#111111",
    -- misc colors
    gold           = "#FEB030",
    green          = "#419950",
    silver         = "#E5E3CF",
    graish         = "#7f7b62",
    jet            = "#312F32",
    black          = "#0c0c0f",
}

---@type Theme
extendedplay.dark = {
    name = "extendedplay",
    palette = {
        info     = extendedplay.sapphire,
        error    = extendedplay.imperial_red,
        danger   = extendedplay.cinnabar,
        warning  = extendedplay.gold,
        success  = extendedplay.green,
        neutral  = extendedplay.graish,
        -- status
        bad      = extendedplay.imperial_red,
        good     = extendedplay.green,
        benign   = extendedplay.sapphire,
        -- accents
        standout = extendedplay.cinnabar,
        yell     = extendedplay.sapphire,
        pop      = extendedplay.imperial_red,
        shine    = extendedplay.spanish_orange,
        hide     = extendedplay.graish,
        shy      = extendedplay.graish,
        intense  = extendedplay.imperial_red,
    },

    editor = {
        background = extendedplay.night,
        activebg   = extendedplay.jet,
        text       = extendedplay.alabaster,
        cursor     = extendedplay.sapphire,
        visual     = extendedplay.tekhelet,
        menu       = extendedplay.jet,
        selection  = extendedplay.imperial_red,
        status     = extendedplay.cinnabar,
        statusnc   = extendedplay.spanish_orange,
    },

    syntax = {
        constant = extendedplay.tekhelet,
        modifier = extendedplay.cinnabar,
        type     = extendedplay.cinnabar,
        typedef  = extendedplay.imperial_red,
        keyword  = extendedplay.spanish_orange,
        literal  = extendedplay.cinnabar,
        strings  = extendedplay.tekhelet,
    },

    contrast = {
        primary  = {
            main  = extendedplay.black,
            shade = extendedplay.night,
            alt   = extendedplay.dark_purple,
        },
        contrast = {
            main  = extendedplay.alabaster,
            shade = extendedplay.silver,
            alt   = extendedplay.silver,
        },
    },
}

M.extendedplay = extendedplay

return M
