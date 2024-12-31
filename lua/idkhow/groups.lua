local M = {}

---@alias Group table<string, vim.api.keyset.highlight>

---fills the colors defined in :h highlight-groups
---@param theme Theme
---@return Group
function M.editor(theme)
    local pal = theme.palette or {}
    local con = theme.contrast or {}

    ---@type Group
    local editor = {
        CurSearch         = -- Used for highlighting a search pattern under the cursor.
        { fg = con.primary.main, bg = pal.pop },

        Cursor            = -- Character under the cursor.
        { fg = con.primary.main, bg = con.contrast.main },

        lCursor           = -- Character under the cursor when |language-mapping| is used (see 'guicursor').
        { link = "Cursor" },

        CursorIM          = -- Like Cursor, but used when in IME mode. *CursorIM*
        { link = "Cursor" },

        CursorColumn      = -- Screen-column at the cursor
        { link = "CursorLine" },

        CursorLine        = -- Screen-line at the cursor
        { bg = con.primary.shade },

        Directory         = -- Directory names (and other special names in listings).
        { fg = pal.pop },

        DiffAdd           = -- Diff mode: Added line. |diff.txt|
        { bg = pal.good },
        DiffChange        = -- Diff mode: Changed line. |diff.txt|
        { bg = pal.benign },
        DiffDelete        = -- Diff mode: Deleted line. |diff.txt|
        { bg = pal.bad },
        DiffText          = -- Diff mode: Changed text within a changed line. |diff.txt|
        { bg = pal.benign },

        EndOfBuffer       = -- Filler lines (~) after the end of the buffer.
        { bg = con.primary.main },

        -- TermCursor	Cursor in a focused terminal.
        -- TermCursorNC	Cursor in an unfocused terminal.

        ErrorMsg          = -- Error messages on the command line.
        { fg = pal.error },

        WinSeparator      = -- Separators between window splits.
        { fg = pal.pop },

        -- Folded		Line used for closed folds.
        -- FoldColumn	'foldcolumn'
        -- SignColumn	Column where |signs| are displayed.

        Substitute        = -- |:substitute| replacement text highlighting.
        { fg = con.primary.main, bg = pal.shine },

        LineNr            = -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        { fg = con.contrast.shade },

        CursorLineNr      = -- Like LineNr but for the current line when 'cursorline' is set.
        { fg = pal.yell, bold = true },

        MatchParen        = -- Character under the cursor or one of its pairs. |matchparen|
        { fg = pal.yell, bg = con.contrast.main, bold = true },

        ModeMsg           = -- 'showmode' message (e.g., "-- INSERT --").
        { fg = pal.pop },

        MoreMsg           = -- |more-prompt|
        { fg = pal.shine },

        -- MsgArea		Area for messages and command-line, see also 'cmdheight'.
        -- MsgSeparator	Separator for scrolled messages |msgsep|.

        NonText           = -- '@' at the end of the window, characters from 'showbreak', and other invisible characters.
        { fg = pal.shy },

        Normal            = -- Normal text.
        { fg = con.text.normal, bg = con.primary.main },

        NormalFloat       = -- Normal text in floating windows.
        { link = "Normal" },

        NormalNC          = -- Normal text in non-current windows.
        { fg = con.text.hide, bg = con.primary.main },

        FloatBorder       = -- Border of floating windows.
        { fg = pal.yell },

        Pmenu             = -- Popup menu: normal item.
        { fg = con.primary.main, bg = con.contrast.main },

        PmenuSel          = -- Popup menu: selected item.
        { fg = con.primary.main, bg = pal.pop },

        PmenuSbar         = -- Popup menu: scrollbar.
        { bg = con.primary.alt },

        PmenuThumb        = -- Popup menu: scrollbar thumb.
        { bg = pal.shine },

        Question          = -- |hit-enter| prompt and yes/no questions.
        { link = "MoreMsg" },

        QuickFixLine      = -- Current |quickfix| item in the quickfix window.
        { link = "CursorLine" },

        Search            = -- Last search pattern highlighting (see 'hlsearch').
        { fg = con.primary.main, bg = pal.pop },

        IncSearch         = -- 'incsearch' highlighting; highlight as you type.
        { fg = con.primary.main, bg = pal.shine },

        Visual            = -- Visual mode selection.
        { fg = con.primary.alt, bg = con.contrast.main },

        VisualNOS         = -- Visual mode when search is disabled.
        { link = "Visual" },

        SpecialKey        = -- Meta and special keys listed with "ga".
        { fg = con.contrast.shade },

        StatusLine        = -- Status line of the current window.
        { fg = con.primary.main, bg = pal.yell },

        StatusLineNC      = -- Status lines of not-current windows.
        { fg = con.primary.main, bg = pal.pop },

        TabLine           = -- Tab pages line, not active tab page label.
        { fg = con.primary.main, bg = con.contrast.main },

        TabLineSel        = -- Tab pages line, active tab page label.
        { fg = con.primary.main, bg = pal.pop },

        TabLineFill       = -- Tab pages line, where there are no labels.
        { bg = con.primary.main },

        Title             = -- Titles for output from ":set all", ":autocmd", etc.
        { fg = pal.shine, bold = true },

        WarningMsg        = -- Warning messages.
        { fg = pal.warning, bold = true },

        WildMenu          = -- Current match in 'wildmenu' completion.
        { fg = con.primary.main, bg = pal.pop },

        --- TODO:

        LspReferenceText  = { underline = true, bg = con.primary.main },
        LspReferenceRead  = { underline = true, bg = con.primary.main },
        LspReferenceWrite = { underline = true, bg = con.primary.main },
    }

    return editor
end

---fills the colors defined in :h group-name
---@param theme Theme
---@return Group
function M.syntax(theme)
    local pal = theme.palette or {}
    local con = theme.contrast or {}

    ---@type Group
    local syntax = {
        Comment        = -- Any comment.
        { fg = con.text.hide, italic = true },

        Constant       = -- Any constant.
        { fg = pal.deeper, bold = true },
        String         = -- A string constant: "this is a string".
        { fg = pal.subtle, italic = true },
        Character      = -- A character constant: 'c', '\n'.
        { link = "String" },
        Number         = -- A number constant: 234, 0xff.
        { fg = pal.softer },
        Boolean        = -- A boolean constant: TRUE, false.
        { link = "Number" },
        Float          = -- A floating point constant: 2.3e10.
        { link = "Number" },

        Identifier     = -- Any variable name.
        { fg = con.text.relevant },
        Function       = -- Function name (also: methods for classes).
        { fg = pal.intense, bold = true, underdotted = true },

        Statement      = -- Any statement.
        { fg = pal.intense },
        Conditional    = -- if, then, else, endif, switch, etc.
        { fg = pal.warning },
        Repeat         = -- for, do, while, etc.
        { fg = pal.success },
        Label          = -- case, default, etc.
        { fg = pal.pop },
        Operator       = -- "sizeof", "+", "*", etc.
        { fg = con.contrast.main },
        Keyword        = -- Any other keyword.
        { fg = pal.pop, bold = true },
        Exception      = -- try, catch, throw.
        { fg = pal.danger, italic = true },

        PreProc        = -- Generic preprocessor.
        { fg = con.primary.main },
        Include        = -- Preprocessor #include.
        { fg = pal.shine },
        Define         = -- Preprocessor #define.
        { fg = pal.warning },
        Macro          = -- Same as Define.
        { link = "Define" },
        PreCondit      = -- Preprocessor #if, #else, #endif, etc.
        { fg = pal.warning },

        Type           = -- int, long, char, etc.
        { fg = pal.yell },
        StorageClass   = -- static, register, volatile, etc.
        { fg = pal.pop },
        Structure      = -- struct, union, enum, etc.
        { fg = pal.shine },
        Typedef        = -- A typedef.
        { fg = pal.shine },

        Special        = -- Any special symbol.
        { fg = pal.pop },
        SpecialChar    = -- Special character in a constant.
        { fg = pal.warning },
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

        ["@variable"]  = { link = "Identifier" }, -- for treesitter
    }

    return syntax
end

---fills the colors defined in :h diagnostic-highlights
---@param theme Theme
---@return Group
function M.diagnostic(theme)
    local pal = theme.palette or {}

    local diagnostic = {
        DiagnosticError = { fg = pal.error },

        DiagnosticWarn  = { fg = pal.warning },

        DiagnosticInfo  = { fg = pal.info },

        DiagnosticHint  = { fg = pal.info },

        DiagnosticOk    = { fg = pal.good },
    }

    return diagnostic
end

return M
