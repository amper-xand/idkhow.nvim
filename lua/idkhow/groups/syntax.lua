local M = {}

---@class SyntaxSpec
---@field keyword  string
---@field modifier string --- like access or class modifiers
---@field type     string
---@field typedef  string --- keywords that define types, structs, classes...
---@field literal  string --- numbers, booleans...
---@field strings  string
---@field constant string

---fills the colors defined in :h group-name
---@param theme Theme
---@return Group
function M.syntax(theme)
    local pal = theme.palette
    local con = theme.contrast
    local ed = theme.editor
    local syn = theme.syntax

    ---@type Group
    local syntax = {
        Comment        = -- Any comment.
        { fg = pal.hide, italic = true },

        Constant       = -- Any constant.
        { fg = syn.constant, bold = true },
        String         = -- A string constant: "this is a string".
        { fg = syn.strings, italic = true },
        Character      = -- A character constant: 'c', '\n'.
        { link = "String" },
        Number         = -- A number constant: 234, 0xff.
        { fg = syn.literal },
        Boolean        = -- A boolean constant: TRUE, false.
        { link = "Number" },
        Float          = -- A floating point constant: 2.3e10.
        { link = "Number" },

        Identifier     = -- Any variable name.
        { fg = ed.text },
        Function       = -- Function name (also: methods for classes).
        { fg = pal.intense, bold = true, underdotted = true },

        Statement      = -- Any statement.
        { link = "Keyword" },
        Conditional    = -- if, then, else, endif, switch, etc.
        { link = "Keyword" },
        Repeat         = -- for, do, while, etc.
        { link = "Conditional" },
        Label          = -- case, default, etc.
        { link = "Conditional" },
        Operator       = -- "sizeof", "+", "*", etc.
        { link = "Keyword" },
        Keyword        = -- Any other keyword.
        { fg = syn.keyword, bold = true },
        Exception      = -- try, catch, throw.
        { fg = pal.danger, italic = true },

        PreProc        = -- Generic preprocessor.
        { link = "Define" },
        Include        = -- Preprocessor #include.
        { link = "Define" },
        Define         = -- Preprocessor #define.
        { link = "Conditional" },
        Macro          = -- Same as Define.
        { link = "Define" },
        PreCondit      = -- Preprocessor #if, #else, #endif, etc.
        { link = "Conditional" },

        Type           = -- int, long, char, etc.
        { fg = syn.type },
        StorageClass   = -- static, register, volatile, etc.
        { fg = syn.modifier },
        Structure      = -- struct, union, enum, etc.
        { fg = syn.typedef },
        Typedef        = -- A typedef.
        { link = "Structure" },

        Special        = -- Any special symbol.
        { fg = pal.pop },
        SpecialChar    = -- Special character in a constant.
        { link = "Conditional" },
        Tag            = -- You can use CTRL-] on this.
        { fg = con.primary.main },
        Delimiter      = -- Character that needs attention.
        { fg = pal.yell },
        SpecialComment = -- Special things inside a comment.
        { fg = con.contrast.alt },
        Debug          = -- Debugging statements.
        { fg = pal.danger },

        Underlined     = -- Text that stands out, HTML links.
        { fg = pal.shine, underline = true },

        Ignore         = -- Left blank, hidden |hl-Ignore|.
        { fg = con.contrast.alt },

        Error          = -- Any erroneous construct.
        { fg = pal.error, bold = true },

        Todo           = -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX.
        { fg = pal.warning, bg = con.primary.main, bold = true },

        Added          = -- Added line in a diff.
        { fg = pal.good, bg = con.primary.main },
        Changed        = -- Changed line in a diff.
        { fg = pal.benign, bg = con.primary.main },
        Removed        = -- Removed line in a diff.
        { fg = pal.bad, bg = con.primary.main },
    }

    return syntax
end

return M
