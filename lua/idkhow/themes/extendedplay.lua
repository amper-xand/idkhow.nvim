local M = {}

local extendedplay = {
    -- picked from cover
    spanish_orange = "#E49535",
    cinnabar       = "#FF573C",
    imperial_red   = "#E63036",
    violet_blue    = "#3351AF",
    midnight_blue  = "#322D74",
    dark_purple    = "#251C37",
    alabaster      = "#EAE4D7",
    night          = "#161517",
    -- misc colors
    gold           = "#FEB030",
    green          = "#419950",
    white          = "#FFFFFF",
    silver         = "#E5E3CF",
    dark_slate     = "#535055",
    graish         = "#7f7b62",
    jet            = "#312F32",
    black          = "#0c0c0f",
}

---@type Theme
extendedplay.dark = {
    name = "extendedplay",
    palette = {
        info     = extendedplay.blue,
        error    = extendedplay.imperial_red,
        danger   = extendedplay.cinnabar,
        warning  = extendedplay.gold,
        success  = extendedplay.green,
        neutral  = extendedplay.graish,
        -- status
        bad      = extendedplay.imperial_red,
        good     = extendedplay.green,
        benign   = extendedplay.violet_blue,
        -- accents
        standout = extendedplay.cinnabar,
        yell     = extendedplay.violet_blue,
        pop      = extendedplay.imperial_red,
        shine    = extendedplay.spanish_orange,
        shy      = extendedplay.graish,

        deeper   = extendedplay.midnight_blue,
        subtle   = extendedplay.graish,
        softer   = extendedplay.cinnabar,
        vibrant  = extendedplay.spanish_orange,
        intense  = extendedplay.cinnabar,
        muted    = extendedplay.dark_purple,
    },
    contrast = {
        primary  = {
            main  = extendedplay.black,
            shade = extendedplay.night,
            alt   = extendedplay.dark_purple,
        },
        contrast = {
            main  = extendedplay.alabaster,
            shade = extendedplay.white,
            alt   = extendedplay.silver,
        },
        text     = {
            normal   = extendedplay.alabaster,
            hide     = extendedplay.dark_slate,
            relevant = extendedplay.alabaster,
        },
    },
}

-- WIP
-- ---@type Theme
-- extendedplay.light = {
--     name = "extendedplaylight",
--     palette = extendedplay.dark.palette,
--     contrast = {
--         primary  = extendedplay.dark.contrast.contrast,
--         contrast = extendedplay.dark.contrast.primary,
--         text     = {
--             normal   = extendedplay.dark_purple,
--             hide     = extendedplay.graish,
--             relevant = extendedplay.dark_purple,
--         },
--     },
-- }

M.extendedplay = extendedplay

return M
