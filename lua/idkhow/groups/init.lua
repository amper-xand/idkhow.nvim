local M = {}

---@alias Group table<string, vim.api.keyset.highlight>

M.editor = require("idkhow.groups.editor").editor
M.syntax = require("idkhow.groups.syntax").syntax

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

return M
