local M = {}

local gloomdivision = {

    liver          = "#6A4941",
    columbia_blue  = "#EFEDFA",
    air_force_blue = "#A7A7DF",
    flame          = "#D95020",
    orange_crayola = "#EE7A28",
    ut_orange      = "#F6A03C",
    xanthous       = "#F7B436",
    licorice       = "#190F0F",
    misty_rose     = "#F0DFDE",
    lion           = "#AA9773",
    rosy_brown     = "#CE9C99",
    -- misc colors
    gold           = "#FEB030",
    green          = "#419950",
    imperial_red   = "#E63036",
    graish         = "#7f7b62",
    black          = "#0c0c0f",
}

---@type Theme
gloomdivision.light = {
    name = "gloomdivision",
    palette = {
        info     = gloomdivision.misty_rose,
        error    = gloomdivision.imperial_red,
        danger   = gloomdivision.orange_crayola,
        warning  = gloomdivision.ut_orange,
        success  = gloomdivision.green,
        neutral  = gloomdivision.misty_rose,
        -- status
        bad      = gloomdivision.imperial_red,
        good     = gloomdivision.green,
        benign   = gloomdivision.rosy_brown,
        -- accents
        standout = gloomdivision.flame,
        yell     = gloomdivision.orange_crayola,
        pop      = gloomdivision.liver,
        shine    = gloomdivision.ut_orange,
        shy      = gloomdivision.rosy_brown,

        deeper   = gloomdivision.flame,
        subtle   = gloomdivision.orange_crayola,
        softer   = gloomdivision.ut_orange,
        vibrant  = gloomdivision.imperial_red,
        intense  = gloomdivision.flame,
        muted    = gloomdivision.liver,
    },
    contrast = {
        primary = {
            main  = gloomdivision.columbia_blue,
            shade = gloomdivision.air_force_blue,
            alt   = gloomdivision.licorice,
        },
        contrast = {
            main  = gloomdivision.orange_crayola,
            shade = gloomdivision.flame,
            alt   = gloomdivision.liver,
        },
        text = {
            normal = gloomdivision.licorice,
            hide = gloomdivision.graish,
            relevant = gloomdivision.licorice,
        },
    }
}

M.gloomdivision = gloomdivision

return M
