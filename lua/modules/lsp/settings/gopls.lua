local M = {}

M.settings = {
    gopls = {
        gofumpt = true,
        analyses = {
            unusedparams = true,
        },
        staticcheck = true,
    },
}

return M
