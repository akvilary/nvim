local find_and_replace = function()
    local to_replace = vim.fn.input('Phrase to_replace: ', '')
    if to_replace == '' then
        return
    end
    local replace_by = vim.fn.input('Phrase will be replaced by: ', '')
    local file_type = vim.fn.input('Filetype (leave empty for all filetypes):' , '')
    if file_type then
        file_type = "." .. file_type
    end
    vim.cmd(":vimgrep /" .. to_replace .. "/gj " .. "**/*" .. file_type)
    vim.cmd(":tabnew | copen")
    vim.cmd(":cdo s/" .. to_replace .. "/" .. replace_by .. "/gc | update")
    vim.cmd(":cclose")
end

vim.keymap.set('n', '<Leader>far', find_and_replace)
