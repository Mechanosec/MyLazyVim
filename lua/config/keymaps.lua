local map = vim.keymap

map.del("n", "<S-h>")
map.del("n", "<S-l>")
map.del("n", "[b")
map.del("n", "]b")
map.del("n", "<leader>bb")
map.del("n", "<leader>`")
map.del("n", "<leader>bD")

-- map.del("n", "<leader>ww")
map.del("n", "<leader>wd")
-- map.del("n", "<leader>w-")
-- map.del("n", "<leader>w|")
-- map.del("n", "<leader>-")
-- map.del("n", "<leader>|")
map.del("n", "<leader>wm")

map.del("n", "<leader><tab>l")
map.del("n", "<leader><tab>o")
map.del("n", "<leader><tab>f")
map.del("n", "<leader><tab><tab>")
map.del("n", "<leader><tab>]")
map.del("n", "<leader><tab>d")
map.del("n", "<leader><tab>[")

map.del("n", "<leader>gG")
map.del("n", "<leader>gf")
map.del("n", "<leader>gB")
map.del("n", "<leader>gL")

map.del("n", "<leader>K")
map.del("n", "<leader>l")
map.del("n", "<leader>L")

-- map.set("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
-- map.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map.set("n", "<C-n>", "<cmd>nohl<cr>", { desc = "Save File" })

map.set("n", "<leader>cx", "<cmd>Trouble diagnostics<cr>", { desc = "File diagnostics" })
