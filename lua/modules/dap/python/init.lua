local basic_paths = require('modules.prepare.basic_paths')

local dap_python = require('dap-python')
dap_python.setup(basic_paths.python_path)

require("modules.dap.python.launch_config")
require("modules.dap.python.attach_config")
-- require("modules.dap.python.repo_test_config")
require("modules.dap.python.single_test_config")
