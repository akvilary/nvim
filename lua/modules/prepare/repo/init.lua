local M = {}

local basic_paths = require('modules.prepare.basic_paths')
M.current_dir = vim.fn.getcwd()

-- local repos = require('modules.prepare.repo.repos')
-- for _, repo in ipairs(repos) do
--   if string.find(M.current_dir, basic_paths.relative_repos_dir:gsub('-', '%%-') .. repo.repo_name:gsub('-', '%%-')) then
--       M.repo_name = repo.repo_name
--       M.repo_path = repo.repo_path
--       M.module_path = repo.module_path
--       M.remote_module_path = repo.remote_module_path or ''
--       M.extra_paths = repo.extra_paths or {}
--       M.tests_mock_modules_path = repo.tests_mock_modules_path or ''
--       M.tests_src_path = repo.tests_src_path or ''
--       M.tests_base_relative_path = repo.tests_base_relative_path or ''
--       break
--   end
-- end

return M
