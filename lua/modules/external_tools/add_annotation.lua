require('neogen').setup({
    languages = {
      lua = { template = { annotation_convention = 'emmylua' } },
      python = { template = { annotation_convention = 'google_docstrings' } }
    }
})

local add_annotation = function()
    require('neogen').generate()
end

vim.keymap.set('n', '-ad', add_annotation)
