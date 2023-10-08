
local attach_remote = function()
    if vim.bo.filetype == 'python' then
        local adapter = require("modules.dap.python.attach_config").pythonAttachAdapter
        local config = require("modules.dap.python.attach_config").pythonAttachConfig
        require('dap').attach(adapter, config)
    end
end

vim.keymap.set('n', '<F5>', attach_remote)
