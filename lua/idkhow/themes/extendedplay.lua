local M = {}

local extendedplay = {
    -- picked from cover
    spanish_orange = "#E47035ff",
    cinnabar       = "#E7573Cff",
    imperial_red   = "#E63036ff",
    violet_blue    = "#3351AFff",
    midnight_blue  = "#322D74ff",
    dark_purple    = "#251C37ff",
    alabaster      = "#EAE4D7ff",
    night          = "#161517ff",
    -- misc colors
    graish         = "#7f7b62",
    green          = "#419950",
    blue           = "#2f47AA",
    black          = "#0c0c0f",
}

---@type Theme
extendedplay.dark = {
    name = "extendedplay",
    palette =  {
        info     = extendedplay.blue,
        error    = extendedplay.imperial_red,
        danger   = extendedplay.cinnabar,
        warning  = extendedplay.spanish_orange,
        success  = extendedplay.green,
        neutral  = extendedplay.apricot,
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
}

M.extendedplay = extendedplay

return M
