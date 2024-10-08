vim.api.nvim_set_keymap("n", "te", ":tabedit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":tabprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tf", ":tabfirst<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tl", ":tablast<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ss", ":split<CR><C-w>w", { silent = true })
vim.api.nvim_set_keymap("n", "sv", ":vsplit<CR><C-w>w", { silent = true })
vim.api.nvim_set_keymap("n", "<Space>", "<C-w>w", { silent = true })
vim.api.nvim_set_keymap("n", "sh", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "sk", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "sj", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "sl", "<C-w>l", { silent = true })
vim.api.nvim_set_keymap("n", "<C-w><left>", "<C-w><", { silent = true })
vim.api.nvim_set_keymap("n", "<C-w><right>", "<C-w>>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-w><up>", "<C-w>+", { silent = true })
vim.api.nvim_set_keymap("n", "<C-w><down>", "<C-w>-", { silent = true })
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s><C-q>", ":wq<CR>", { noremap = true, silent = true })
