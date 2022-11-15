vim.opt.completeopt="menu,menuone,noselect"
-- vim.cmd 'syntax on'
-- vim.cmd 'filetype plugin indent on'
vim.opt.hidden=true
vim.opt.showmode=false
vim.opt.scroll=10
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.wrap=false
vim.opt.encoding='utf-8'
vim.opt.pumheight=10
vim.opt.fileencoding='utf-8'
vim.opt.ruler=true
vim.opt.cmdheight=2
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.conceallevel=0
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smarttab=true
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.autoindent=true
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.cursorline=true
vim.opt.showtabline=2
vim.opt.backup=false
vim.opt.writebackup=false
vim.opt.updatetime=300
vim.opt.timeoutlen=1000
vim.opt.clipboard='unnamedplus'
vim.opt.termguicolors=true
vim.opt.mouse='a'
vim.opt.showbreak='\\'
-- vim.opt.listchars = { tab = '→' ,trail = '·', eol = '¬',  extends='…', precedes = '…' }
vim.opt.list=true
vim.opt.iskeyword:append('_')
vim.opt.laststatus=3
vim.opt.background='light'
-- vim.cmd("colorscheme dracula")
vim.cmd("cabbrev gd GitGutterDiffOrig")
vim.cmd("cabbrev  ttb Telescope find_files cwd=./node_modules/bootstrap/scss/")

-- vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"},
-- {
--     pattern={"*.blade.php"},
--     callback=
--     function()
--         print("Entered a blade file")
--     end
-- })

