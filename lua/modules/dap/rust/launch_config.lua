local M ={}
M.LaunchConfig = {
    type = 'rust';
    request = 'launch';
    name = "Launch rust file";
    program = "${file}";
}
return M
