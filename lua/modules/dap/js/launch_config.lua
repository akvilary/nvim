local M ={}
M.LaunchConfig = {
    type = 'pwa-node',
    request = 'launch',
    name = "Launch js file",
    program = "${file}",
    cwd = "${workspaceFolder}",
    sourceMaps = true,
}
return M
