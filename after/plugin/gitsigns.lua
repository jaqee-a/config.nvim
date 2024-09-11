local gs = require("gitsigns")

vim.keymap.set("n", "<leader>gb", gs.blame_line, {desc = "Blame line"})
vim.keymap.set("n", "<leader>gB", gs.toggle_current_line_blame, {desc = "Toggle line blame"})
