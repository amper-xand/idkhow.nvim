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

return M
