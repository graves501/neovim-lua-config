local Utils = require('utils')

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
-- local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
local nmap = Utils.nmap
local xmap = Utils.xmap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- kj to normal mode
inoremap("kj", "<Esc>")

-- Run omnifunc, mostly used for autocomplete
inoremap("<C-SPACE>", "<C-x><C-o>")

-- Save with Ctrl + S
nnoremap("<C-s>", ":w<CR>")

-- Move around windows
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Switch buffers (needs nvim-bufferline)
nnoremap("<TAB>", ":BufferLineCycleNext<CR>")
nnoremap("<S-TAB>", ":BufferLineCyclePrev<CR>")

-- Delete buffer
nnoremap("<A-w>", ":bd<CR>")

-- Yank to end of line
nnoremap("Y", "y$")

-- Copy to system clippboard
nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')

-- TODO: Paste from system clippboard

-- Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")

-- NvimTree
nnoremap("<leader>e", "<Cmd>NvimTreeToggle<CR>")

-- EasyAlign
-- xmap("ga", "<cmd>EasyAlign")
-- nmap("ga", "<cmd>EasyAlign")
