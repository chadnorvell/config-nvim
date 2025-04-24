-- Move between splits
vim.keymap.set("n", "<S-Left>", "<c-w><c-h>")
vim.keymap.set("n", "<S-Down>", "<c-w><c-j>")
vim.keymap.set("n", "<S-Up>", "<c-w><c-k>")
vim.keymap.set("n", "<S-Right>", "<c-w><c-l>")

-- Create splits
vim.keymap.set("n", "<c-Left>", ":leftabove vsplit<CR>")
vim.keymap.set("n", "<c-Down>", ":rightbelow split<CR>")
vim.keymap.set("n", "<c-Up>", ":leftabove split<CR>")
vim.keymap.set("n", "<c-Right>", ":rightbelow vsplit<CR>")

-- Resize splits
vim.keymap.set("n", "<a-Left>", ":vertical:resize +4<CR>")
vim.keymap.set("n", "<a-Down>", ":resize -4<CR>")
vim.keymap.set("n", "<a-Up>", ":resize +4<CR>")
vim.keymap.set("n", "<a-Right>", ":vertical:resize -4<CR>")
