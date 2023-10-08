require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        height = 0.999,
        preview_cutoff = 0,
        preview_height = 0.6,
        prompt_position = "bottom",
        width = 0.999
      }
    },
    preview = {
      check_mime_type = false
    }
  }
})

local last_used_search_text = nil
local last_used_type = nil
local last_used_current_directory = nil

local telescope_builtin = require('telescope.builtin')
local search_text = function()
    vim.ui.input({ prompt='Text to search: '}, function(input)
        if input ~= nil then
            last_used_search_text = input
        end
    end)
    local params = {}
    if last_used_search_text ~= nil then
        params.default_text = last_used_search_text
    end
    telescope_builtin.live_grep(params)
end

local search_text_with_params = function()
    vim.ui.input({ prompt = 'Text to search: ', default='' }, function(input)
        if input ~= nil then
            last_used_search_text = input
        end
    end)
    local params = {}
    if last_used_search_text ~= nil then
        params.default_text = last_used_search_text
    end

    vim.ui.input({ prompt = 'Filetype to search: ', default='' }, function(input)
        if input ~= nil then
            last_used_type = '*.' .. input
            params.glob_pattern = last_used_type
        end
    end)

    vim.ui.input({ prompt = 'Search in current directory (type y or n): ', default='' }, function(input)
        if input == 'y' then
            last_used_current_directory = { vim.fn.expand('%:p:h') }
            params.search_dirs = last_used_current_directory
        end
    end)

    telescope_builtin.live_grep(params)
end


local search_text_with_previous_params = function()
    local params = {}
    if last_used_search_text ~= nil then
        params.default_text = last_used_search_text
    end

    if last_used_type ~= nil then
        params.glob_pattern = last_used_type
    end

    if last_used_current_directory ~= nil then
        params.search_dirs = last_used_current_directory
    end

    telescope_builtin.live_grep(params)
end

vim.keymap.set('n', '<Leader>st', search_text)
vim.keymap.set('n', '<Leader>sT', search_text_with_params)
vim.keymap.set('n', '<Leader>ST', search_text_with_previous_params)


local find_text_quickfix_list = function()
    local find_text = vim.fn.input('Text to search: ', '')
    if find_text == '' then
        return
    end
    local file_type = vim.fn.input('Filetype (leave empty for all filetypes):' , '')
    if file_type then
        file_type = "." .. file_type
    end
    vim.cmd(":vimgrep /" .. find_text .. "/gj " .. "**/*" .. file_type)
    vim.cmd(":tabnew | copen")
end
vim.keymap.set('n', '<Leader>ft', find_text_quickfix_list)
