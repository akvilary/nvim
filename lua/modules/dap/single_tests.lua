local run_test_method = function()
  if vim.bo.filetype == 'python' then
      require("modules.dap.python.single_test_config").run_test_method()
  elseif vim.bo.filetype == 'go' then
      require("modules.dap.go.single_test_config").run_test_method()
  end
end

vim.keymap.set('n', '<F3>', run_test_method)
