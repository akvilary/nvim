local M = {}

local basic_paths = require('modules.prepare.basic_paths')

local s = " "
local pylint = basic_paths.python_path .. s .. '-m pylint'

local run_pylint_for_current_file = function()
    local file_path = "'" .. vim.fn.expand('%:p') .. "'"
    local pylint_file_command = pylint .. s .. file_path
    vim.cmd(':tabnew | terminal ' .. pylint_file_command)

end
vim.keymap.set('n', '-pf', run_pylint_for_current_file)


local run_pylint_for_current_directory = function()
    local directory_path = "'" .. vim.fn.expand('%:p:h') .. "' "
    local pylint_directory_command = pylint .. s .. directory_path
    vim.cmd(':tabnew | terminal ' .. pylint_directory_command)

end
vim.keymap.set('n', '-pd', run_pylint_for_current_directory)

return M
