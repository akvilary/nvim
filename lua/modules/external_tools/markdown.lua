vim.g.mkdp_open_to_the_world = 1
vim.g.mkdp_open_ip = os.getenv('MARKDOWN_SERVER_HOST')
vim.g.mkdp_port = os.getenv('MARKDOWN_SERVER_PORT')
vim.g.mkdp_auto_close = 1
vim.g.mkdp_theme = 'light'

-- ojroques/nvim-osc52 plugin required to provide copy via ssh functionality
vim.cmd([[
function! g:CopyUrl(url)
    :echo a:url
    :let @+=a:url
endfunction
]])
vim.g.mkdp_browserfunc = 'g:CopyUrl'


local create_markdown_preview = function()
    vim.cmd(':MarkdownPreview')
end
vim.keymap.set('n', '-md', create_markdown_preview)
