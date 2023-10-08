local M ={}
M.LaunchConfig = {
    type = 'go';
    request = 'launch';
    name = "Launch go file";
    program = "${file}";
}
return M
