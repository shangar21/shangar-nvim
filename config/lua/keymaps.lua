local keymap = vim.keymap
local api = vim.api
local uv = vim.loop


-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = vim.g.mapleader

keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>")
keymap.set("n", "<ESC><ESC>", "<CMD>noh<CR>")

-- Switch windows
keymap.set("n", "<left>", "<c-w>h")
keymap.set("n", "<Right>", "<C-W>l")
keymap.set("n", "<Up>", "<C-W>k")
keymap.set("n", "<Down>", "<C-W>j")

-- Move between buffers
keymap.set("n", "<S-l>", "<CMD>bnext<CR>")
keymap.set("n", "<S-h>", "<CMD>bprevious<CR>")

-- Move lines
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- Move visual blocks
keymap.set("x", "<A-j>", ":m '>+1<CR>gv-gv")
keymap.set("x", "<A-k>", ":m '<-2<CR>gv-gv")

-- insert semicolon in the end
keymap.set("i", "<A-;>", "<Esc>miA;<Esc>`ii")

-- toggle term start
keymap.set("n", "<C-\\>", "<CMD>ToggleTerm<CR>")

-- telescope

keymap.set("n", "<leader>ff", "<CMD>lua require('telescope.builtin').find_files()<CR>")
keymap.set("n", "<leader>fg", "<CMD>lua require('telescope.builtin').live_grep()<CR>")
keymap.set("n", "<leader>fb", "<CMD>lua require('telescope.builtin').buffers()<CR>")
keymap.set("n", "<leader>fc", "<CMD>lua require('telescope.builtin').commands()<CR>")

-- lsp
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
keymap.set("n", "<C-]>", vim.lsp.buf.definition)
