local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        diagnostics.pylint,
        diagnostics.revive,
        diagnostics.standardjs,
        diagnostics.ts_standard,
        formatting.blue.with({ extra_args = { "--line-length=100" } }),
        formatting.goimports,
        formatting.gofumpt,
        formatting.standardjs,
        formatting.ts_standard,
        formatting.prettier.with({
            filetypes = { "html", "css", "json" },
        }),
    },
})
