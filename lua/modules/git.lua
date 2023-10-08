require('gitsigns').setup()
require('git-conflict').setup()

-- ojroques/nvim-osc52 plugin required to provide this functionality
local copy_current_branch = function()
    local current_branch = vim.fn.trim(vim.fn.system('git branch --show-current'))
    require('modules.osc_yank').osc_yank.copy(current_branch)
end

vim.keymap.set('n', '<Bslash>bc', copy_current_branch)


local create_branch = function()
    vim.ui.input({ prompt = 'New branch: ' }, function(input)
        vim.cmd(':Git switch -c ' .. input)
    end)
end

vim.keymap.set('n', '<Bslash>cb', create_branch)


local create_worktree = function()
    vim.ui.input({ prompt = 'New worktree: ' }, function(input)
        vim.cmd(':Git worktree add ../' .. input .. ' -d')
    end)
end

vim.keymap.set('n', '<Bslash>cwt', create_worktree)
