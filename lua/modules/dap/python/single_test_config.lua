local basic_paths = require('modules.prepare.basic_paths')

require('dap-python').test_runner = 'pytest'

local pythonTestConfig = {
    python = basic_paths.python_path,
    redirectOutput = true,
    showReturnValue = true,
    justMyCode = false,
}

local M = {}

M.run_test_method = function()
    require('dap-python').test_method({
        test_runner = "pytest",
        config = pythonTestConfig
    })
end

return M
