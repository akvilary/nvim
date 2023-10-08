local M = {}

M.host = os.getenv('NVIM_DEBUG_HOST');
M.port = os.getenv('NVIM_DEBUG_PORT');

return M
