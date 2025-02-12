local M  = {}

---@alias Group table<string, vim.api.keyset.highlight>

M.editor = require("idkhow.groups.editor").editor
M.syntax = require("idkhow.groups.syntax").syntax

-- next are groups that don't require much tinkering

---fills the colors defined in :h diagnostic-highlights
---@param theme Theme
---@return Group
function M.diagnostic(theme)
    local pal = theme.palette

    local diagnostic = {
        DiagnosticError = { fg = pal.error },

        DiagnosticWarn  = { fg = pal.warning },

        DiagnosticInfo  = { fg = pal.info },

        DiagnosticHint  = { fg = pal.info },

        DiagnosticOk    = { fg = pal.good },
    }

    return diagnostic
end

---fills the colors defined in :h lsp-highlight
---@param theme Theme
---@return Group
function M.lsp(theme)
    local con = theme.contrast

    local lsp = {
        LspReferenceText  = { underline = true, bg = con.primary.main },
        LspReferenceRead  = { underline = true, bg = con.primary.main },
        LspReferenceWrite = { underline = true, bg = con.primary.main },
    }

    return lsp
end

---fills the colors defined in :h treesitter-highlight-groups
---@param theme Theme
---@return Group
function M.treesitter(theme)
    ---NOTE: I think the theme already looks good

    local treesitter = {
        ["@variable"] = -- various variable names
        { link = "Identifier" },
    }

    return treesitter
end

---@param theme Theme
---@return Group
function M.signs(theme)
    return {
        diffAdded   = { link = "DiffAdd" },
        diffChanged = { fg = theme.palette.info },
        diffRemoved = { link = "DiffAdd" },
    }
end

---@param theme Theme
---@return Group
function M.dapui(theme)
    return {
        DapUIScope                   = { fg = theme.palette.pop, },
        DapUIType                    = { fg = theme.palette.intense, },
        DapUIModifiedValue           = { fg = theme.palette.pop, bold = true },
        DapUIDecoration              = { fg = theme.palette.pop, },
        DapUIThread                  = { fg = theme.palette.shine, },
        DapUIStoppedThread           = { fg = theme.palette.pop, },
        DapUISource                  = { fg = theme.palette.intense, },
        DapUILineNumber              = { fg = theme.palette.pop, },
        DapUIFloatBorder             = { fg = theme.palette.pop, },
        DapUIWatchesEmpty            = { fg = theme.palette.yell, },
        DapUIWatchesValue            = { fg = theme.palette.shine, },
        DapUIWatchesError            = { fg = theme.palette.yell, },
        DapUIBreakpointsPath         = { fg = theme.palette.pop, },
        DapUIBreakpointsInfo         = { fg = theme.palette.shine, },
        DapUIBreakpointsCurrentLine  = { fg = theme.palette.shine, bold = true },
        DapUIBreakpointsDisabledLine = { fg = theme.palette.neutral, },
        DapUIStepOver                = { fg = theme.palette.pop, bg = "black" },
        DapUIStepInto                = { fg = theme.palette.pop, bg = "black" },
        DapUIStepBack                = { fg = theme.palette.pop, bg = "black" },
        DapUIStepOut                 = { fg = theme.palette.pop, bg = "black" },
        DapUIStop                    = { fg = theme.palette.yell, bg = "black" },
        DapUIPlayPause               = { fg = theme.palette.shine, bg = "black" },
        DapUIRestart                 = { fg = theme.palette.shine, bg = "black" },
        DapUIUnavailable             = { fg = theme.palette.neutral, bg = "black", },
        DapUIWinSelect               = { fg = theme.palette.pop, bold = true },
    }
end

return M
