local M = {}

local basic_paths = require('modules.prepare.basic_paths')
local repo = require('modules.prepare.repo')
local paths = {
    repo.module_path, repo.tests_src_path, repo.current_dir
}
for _,v in ipairs(repo.extra_paths) do
    table.insert(paths, v)
end

M.settings = {
    python = {
        pythonPath = basic_paths.python_path,
        analysis = {
            extraPaths = paths
        }
    }
}

return M
