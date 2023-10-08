local M = {}

M.python_path = os.getenv('NVIM_PYTHON')
vim.g.python3_host_prog = M.python_path
M.relative_repos_dir = os.getenv('REPOS_DIR_REL')
M.repos_dir = os.getenv('REPOS_DIR')
M.get_repo_path = function(repo_name)
    return M.repos_dir .. repo_name .. '/'
end
return M
