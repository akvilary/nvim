require("plenary.async")
require('modules.prepare.open_on_setup')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('modules.prepare.basic_paths')
require('modules.prepare.filetypes')
require('modules.prepare.repo')
