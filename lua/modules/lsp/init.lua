local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("modules.lsp.mason")
require("modules.lsp.handlers").setup()
require("modules.lsp.nvim_cmp")
require("modules.lsp.null_ls")
