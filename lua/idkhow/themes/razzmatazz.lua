local M = {}

---base color palette
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
    blue          = "#2f47AA",
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

        deeper   = razzmatazz.rust,
        subtle   = razzmatazz.peach,
        softer   = razzmatazz.coral,
        vibrant  = razzmatazz.carrot,
        intense  = razzmatazz.gold,
        muted    = razzmatazz.cinnamon,
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
---dark version of the razzmatazz theme
razzmatazz.dark = {
    name = "razzmatazzdark",
    palette = razzmatazz.darker.palette,
    contrast = {
        primary = {
            main = razzmatazz.jet, -- use the picked color from the album for the background
            shade = razzmatazz.darker.contrast.primary.shade,
            alt = razzmatazz.darker.contrast.primary.alt,
        },
        contrast = razzmatazz.darker.contrast.contrast,
        text = razzmatazz.darker.contrast.text,
    },
}

---@type Theme
---light version of the razzmatazz theme
razzmatazz.light = {
    name = "razzmatazz",
    palette = {
        -- informational
        info     = razzmatazz.blue,
        error    = razzmatazz.red_cmyk,
        danger   = razzmatazz.safety_orange,
        warning  = razzmatazz.gold,
        success  = razzmatazz.green,
        neutral  = razzmatazz.graish,
        -- status
        bad      = razzmatazz.ivory,
        good     = razzmatazz.green,
        benign   = razzmatazz.blue,
        -- accents
        standout = razzmatazz.ivory,
        yell     = razzmatazz.safety_orange,
        pop      = razzmatazz.red_cmyk,
        shine    = razzmatazz.gold,
        shy      = razzmatazz.dark_slate,

        deeper   = razzmatazz.rust,
        subtle   = razzmatazz.rust,
        softer   = razzmatazz.coral,
        vibrant  = razzmatazz.carrot,
        intense  = razzmatazz.persimmon,
        muted    = razzmatazz.cinnamon,
    },

    contrast = {
        primary  = {
            main = razzmatazz.silver, -- use a less lighter color for the background for better contrast with light colors
            shade = razzmatazz.darker.contrast.contrast.shade,
            alt = razzmatazz.darker.contrast.contrast.alt,
        },
        contrast = razzmatazz.darker.contrast.primary,
        text     = {
            normal   = razzmatazz.dark_slate,
            hide     = razzmatazz.graish,
            relevant = razzmatazz.dark_jet,
        },
    }
}

---razzmatazz themes
M.razzmatazz = razzmatazz

return M
