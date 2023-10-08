local launch_file = function()
    if vim.bo.filetype == 'python' then
        require('dap').run(require("modules.dap.python.launch_config").LaunchConfig)
    elseif vim.bo.filetype == 'go' then
        require('dap').run(require("modules.dap.go.launch_config").LaunchConfig)
    elseif vim.bo.filetype == 'javascript' or vim.bo.filetype == 'typescript' then
        require('dap').run(require("modules.dap.js.launch_config").LaunchConfig)
    end
end

vim.keymap.set('n', '<F4>', launch_file)
