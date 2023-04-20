-- >> set commands 
vim.cmd[[
set ignorecase
set smartcase
set number
set relativenumber
set cmdheight=0
set laststatus=3
]]
-- << set commands

require("mappings")

vim.cmd[[
" donot display line number in terminal mode(verification remaining )
autocmd TermOpen * setlocal nonumber norelativenumber
]]

-- >> setup lazy.nvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- << setup lazy.nvim

require("lazy_plugins")
require("plugin_settings")

vim.cmd[[
" ====== Vimtex and zathura ========
" for vim tex and zathura TO BE RECONFIGURED ! 
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'
let g:syntastic_check_on_wq = 0
" ===================================
]]
