local format_file = function()
    return vim.lsp.buf.format({ async = true })
end
vim.keymap.set('n', '-ff', format_file)
