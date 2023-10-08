local server = require('modules.prepare.server')
local repo = require('modules.prepare.repo')

local M = {}
M.pythonAttachAdapter = {
    type = "server";
    host = server.host;
    port = server.port;
}
M.pythonAttachConfig = {
    type = "python",
    request = "attach",
    connect = {
        host = server.host,
        port = server.port,
    },
    mode = "remote",
    name = "Remote Attach Debugger",
    cwd = vim.fn.getcwd(),
    justMyCode = false,
    redirectOutput = true,
    showReturnValue = true,
}
if repo.module_path ~= '' and repo.remote_module_path ~= '' then
    M.pythonAttachConfig['pathMappings'] = {
        {
            localRoot = repo.module_path,
            remoteRoot = repo.remote_module_path,
        },
    }
end
return M
