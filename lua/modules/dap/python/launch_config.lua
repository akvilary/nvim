local basic_paths = require('modules.prepare.basic_paths')

local M ={}
M.LaunchConfig = {
    type = 'python',
    request = 'launch',
    name = "Launch py file",
    program = "${file}",
    justMyCode = false,
    redirectOutput = true,
    showReturnValue = true,
    pythonPath = function()
      return basic_paths.python_path
    end;
}
return M
