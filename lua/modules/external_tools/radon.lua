local basic_paths = require('modules.prepare.basic_paths')
local run_radon_for_current_file = function()
    local file_path = vim.fn.expand('%:p')
    vim.cmd(':12split | terminal ' .. basic_paths.python_path .. ' -m radon cc -nc -as "' .. file_path .. '"')
end
vim.keymap.set('n', '-rf', run_radon_for_current_file)


local run_radon_for_current_directory = function()
    local directory_path = vim.fn.expand('%:p:h')
    vim.cmd(':tabnew | terminal ' .. basic_paths.python_path .. ' -m radon cc -nc -as "' .. directory_path .. '"')
end
vim.keymap.set('n', '-rd', run_radon_for_current_directory)
