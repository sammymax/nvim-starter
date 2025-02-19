require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- My stuff:
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")

map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")

map("n", "j", "gj")
map("n", "k", "gk")
-- If we're using change, we are probably discarding the existing stuff, and
-- we're often pasting in the new stuff from clipboard, so use the black hole
-- register for the old stuff to avoid overwriting the clipboard.
map("n", "c", "\"_c")

map("i", "<F1>", "<ESC> :!python % <enter>")
map("n", "<F1>", ":!python % <enter>")

-- Make 'q' act like 'bd' if more than one buffer is open, otherwise just 'q'.
vim.cmd([[
  cnoreabbrev <expr> q getcmdtype() == ":" && getcmdline() == 'q' && len(getbufinfo({ 'buflisted': 1 })) > 1 ? 'bd' : 'q'
]])
-- Make 'Q' emulate 'q'.
vim.cmd([[
  cnoreabbrev <expr> Q getcmdtype() == ":" && getcmdline() == 'Q' ? (len(getbufinfo({ 'buflisted': 1 })) > 1 ? 'bd' : 'q') : 'Q'
]])
