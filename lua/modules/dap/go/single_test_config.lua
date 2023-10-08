local M = {}

M.run_test_method = function()
    require('dap-go').debug_test()
end

return M
