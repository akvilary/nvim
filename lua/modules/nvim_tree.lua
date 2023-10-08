-- options are documented in `:help nvim-tree.OPTION_NAME`
require('nvim-tree').setup({
  disable_netrw = false,
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
    actions = {
        open_file = {
            quit_on_open = true
        },
     },
  view = {
    width = 40
  },
  filters = {
    dotfiles = true,
  }
})
