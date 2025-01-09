local M = {}

local gloomdivision = {

    liver          = "#6A4941",
    columbia_blue  = "#ECE1FF",
    air_force_blue = "#A7A7DF",
    flame          = "#D95020",
    orange_crayola = "#FE7A28",
    ut_orange      = "#F6A03C",
    xanthous       = "#F7B436",
    licorice       = "#190F0F",
    misty_rose     = "#F0DFDE",
    lion           = "#AA9773",
    rosy_brown     = "#CE9C79",
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
        hide     = gloomdivision.graish,
        intense  = gloomdivision.flame,
    },

    editor = {
        background = gloomdivision.columbia_blue,
        activebg   = gloomdivision.air_force_blue,
        cursor     = gloomdivision.licorice,
        text       = gloomdivision.licorice,
        visual     = gloomdivision.ut_orange,
        menu       = gloomdivision.ut_orange,
        selection  = gloomdivision.flame,
        status     = gloomdivision.orange_crayola,
        statusnc   = gloomdivision.flame,
    },

    syntax = {
        keyword  = gloomdivision.lion,
        modifier = gloomdivision.ut_orange,
        type     = gloomdivision.orange_crayola,
        typedef  = gloomdivision.flame,
        constant = gloomdivision.flame,
        literal  = gloomdivision.rosy_brown,
        strings  = gloomdivision.rosy_brown,
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
    }
}

M.gloomdivision = gloomdivision

return M
