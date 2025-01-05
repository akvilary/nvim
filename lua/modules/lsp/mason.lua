require("mason").setup()
local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local servers = {
    "pyright",
    "lua_ls",
    "gopls",
    "tsserver",
    "rust_analyzer",
    "jsonls",
}

mason_lspconfig.setup({
    ensure_installed = servers,
})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("modules.lsp.handlers").on_attach,
        capabilities = require("modules.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "modules.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspconfig[server].setup(opts)
end
