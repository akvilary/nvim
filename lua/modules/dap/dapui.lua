vim.fn.sign_define('DapBreakpoint', {text='☕️', texthl='', linehl='', numhl=''})

require('telescope').load_extension('dap')
require('dapui').setup({
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        "console",
        "repl",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
})
require('nvim-dap-virtual-text').setup()


local eval_from_input = function()
  vim.ui.input({ prompt = 'Expression to evaluate: ' }, function(input)
    require("dapui").eval(input, {enter = true})
  end)
end
vim.keymap.set('n', '=ei', eval_from_input)


-- autoopen and autoclose dapui
-- local dap, dapui = require("dap"), require("dapui")
local dap = require("dap")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dap.repl.open({ height = 8})
end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end
