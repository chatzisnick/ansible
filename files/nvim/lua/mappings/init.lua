local opts = { noremap = true, silent = true }

vim.g.mapleader = ' ' -- Goes on top

vim.api.nvim_set_keymap('v', '<', [[ <gv ]], opts)
vim.api.nvim_set_keymap('v', '>', [[ >gv ]], opts)

vim.api.nvim_set_keymap('n', '<leader>hl', ':nohlsearch<cr>', opts)

vim.api.nvim_set_keymap('n', '<leader>r', ':!go run %<cr>', opts)

vim.api.nvim_set_keymap('n', 'gt', ':tabnext<CR>', opts)

vim.api.nvim_set_keymap('n', 'gt', ':tabnext<CR>', opts)
vim.api.nvim_set_keymap('n', 'gT', ':tabprevious<CR>', opts)

vim.api.nvim_set_keymap('v', '<leader>p', '"_dP', opts)
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', opts)

vim.api.nvim_set_keymap('n', '<leader>d', '"_d', opts)
vim.api.nvim_set_keymap('n', '<leader>x', '"_x', opts)
vim.api.nvim_set_keymap('n', '<leader>s', '"_s', opts)
vim.api.nvim_set_keymap('n', '<leader>c', '"_c', opts)

vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n', opts)
vim.api.nvim_set_keymap('t', '<C-[>', '<C-\\><C-n', opts)

--Nvim Tree Stuff
vim.api.nvim_set_keymap('n', '<leader>F', ':NvimTreeFindFile<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeToggle<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>vr', ':vertical resize 100<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope git_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tb', ':Telescope buffers<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tl', ':Telescope live_grep<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tr', ':Telescope registers<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>th', ':Telescope help_tags<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tc', ':Telescope find_files cwd=~/.config/nvim<CR>', opts)

vim.api.nvim_set_keymap('i', '<M-u>', '[', opts)
vim.api.nvim_set_keymap('i', '<M-i>', ']', opts)
vim.api.nvim_set_keymap('i', '<M-j>', '(', opts)
vim.api.nvim_set_keymap('i', '<M-k>', ')', opts)
vim.api.nvim_set_keymap('i', '<M-m>', '{', opts)
vim.api.nvim_set_keymap('i', '<M-,>', '}', opts)

vim.api.nvim_set_keymap('i', '<M-h>', '"', opts)
vim.api.nvim_set_keymap('i', '<M-y>', "'", opts)

vim.api.nvim_set_keymap('i', '<M-l>', '-', opts)
vim.api.nvim_set_keymap('i', '<M-;>', "_", opts)

vim.api.nvim_set_keymap('i', '<M-n>', "=", opts)
-- vim.api.nvim_set_keymap('i', '<', '[', { noremap = false })
-- vim.api.nvim_set_keymap('i', '>', ']', { noremap = false })

-- vim.api.nvim_set_keymap('n', '<', '[', { noremap = false })
-- vim.api.nvim_set_keymap('n', '>', ']', { noremap = false })

-- vim.api.nvim_set_keymap('o', '<', '[', { noremap = false })
-- vim.api.nvim_set_keymap('o', '>', ']', { noremap = false })

-- vim.api.nvim_set_keymap('x', '<', '[', { noremap = false })
-- vim.api.nvim_set_keymap('x', '>', ']', { noremap = false })
