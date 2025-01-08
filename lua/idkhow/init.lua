local M = {}


M.config = {
    -- defaults

    -- makes text in non current windows less visible
    NChide = false,
}

M.name = "idkhow"

function M.setup(conf)
    for key, value in pairs(conf) do
        M.config[key] = value
    end
end

return M
