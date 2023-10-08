" ALL KEY BINDINGS ARE HERE

let mapleader="\<Space>"

nnoremap <Leader>nn :tabnew<CR>
nnoremap <Leader>nv :vnew<CR>
nnoremap <Leader>q <Esc>:q<CR>
nnoremap <Leader>Q <Esc><C-w>c  " close last open window
nnoremap <Leader>x :BufferClose<CR>
nnoremap <Leader>X :BufferClose!<CR>
nnoremap <Leader>z :BufferCloseAllButCurrent<CR>
nnoremap <Leader>Z :BufferCloseAllButCurrent!<CR>

nnoremap <Leader>. :BufferNext<CR>
nnoremap <Leader>, :BufferPrevious<CR>
nnoremap ql :copen<CR>
nnoremap q] :cnext<CR>
nnoremap q[ :cprev<CR>
nnoremap gf <C-i>
nnoremap gb <C-o>
noremap <Leader>h <Esc><C-w>h
noremap <Leader>j <Esc><C-w>j
noremap <Leader>k <Esc><C-w>k
noremap <Leader>l <Esc><C-w>l
nnoremap <Leader>o <Esc>o<Esc>
nnoremap <Leader>O <Esc>O<Esc>
nnoremap <Leader>f <C-f>
nnoremap <Leader>b <C-b>
noremap <Leader>a ggVG
noremap <Leader>d "_d
noremap <Leader>dd "_dd

noremap <Leader>e :NvimTreeFindFileToggle<CR>
noremap <Leader>t :ToggleTerm<CR>
noremap <Leader>T :ToggleTerm direction=float<CR>
noremap <Leader>/ :CommentToggle<CR>

nmap <Leader>sf :Telescope find_files<CR>
nmap <Leader>sr :Telescope lsp_references<CR>
nmap <Leader>sd :Telescope lsp_definitions<CR>

" debug mappings
nnoremap =bb :lua require'dap'.toggle_breakpoint()<CR>
nnoremap =bif :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap =bc :lua require'dap'.clear_breakpoints()<CR>
nnoremap =bl :lua require("dapui").float_element("breakpoints", { enter = true })<CR>
nnoremap =bL :lua require('telescope').extensions.dap.list_breakpoints()<CR>
nnoremap =v :lua require("dapui").float_element("scopes", { enter = true })<CR>
nnoremap =w :lua require("dapui").float_element("watches", { enter = true })<CR>
nnoremap =s :lua require("dapui").float_element("stacks", { enter = true })<CR>
nnoremap =ee :lua require("dapui").eval(nil, {enter = true})<CR>
nnoremap =ed :lua require("dapui").eval(vim.call('expand','<cword>') .. '.as_dict()', { enter = true })<CR>
nnoremap =el :lua require("dapui").eval(vim.call('expand','<cword>') .. '.as_list()', { enter = true })<CR>
nnoremap =r :lua require('dap').repl.toggle({ height = 8})<CR>
nnoremap =q :lua require('dap').terminate()<CR>
nnoremap <F1> :lua require('dapui').toggle()<CR>
nnoremap <F7> :lua require'dap'.step_into()<CR>
nnoremap <F8> :lua require'dap'.step_over()<CR> 
nnoremap <F9> :lua require'dap'.continue()<CR>
nnoremap <F10> :lua require'dap'.run_to_cursor()<CR>
vnoremap <silent> =ds <ESC>:lua require('dap-python').debug_selection()<CR>

" window manipulations
noremap <Leader>w <C-w><C-w>
let g:maximizer_default_mapping_key = "<F11>"
nnoremap <silent><F12>= :resize +10<CR>
nnoremap <silent><F12>- :resize -10<CR>
nnoremap <silent><F12>0 :vertical resize +20<CR>
nnoremap <silent><F12>9 :vertical resize -20<CR>

" git mappings
nnoremap <Bslash>gg :Git<CR>
nnoremap <Bslash>gb :Git blame<CR>
nnoremap <Bslash>ll :Git log<CR>
nnoremap <Bslash>lf :Git log -p -- %<CR>
nnoremap <Bslash>lc :GitConflictListQf<CR>
nnoremap <Bslash>cc :Git commit --reedit-message=HEAD<CR>
nnoremap <Bslash>0 :Git reset --hard<CR>
nnoremap <Bslash>- :Git pull<CR>
nnoremap <Bslash>_ :Git fetch<CR>
nnoremap <Bslash>= :Git push<CR>
nnoremap <Bslash>bb :Telescope git_branches<CR>
nnoremap <Bslash>dd :DiffviewOpen<CR>
nnoremap <Bslash>dx :DiffviewClose<CR>
