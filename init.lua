require("jae")

vim.cmd('colorscheme rose-pine')
vim.cmd('colorscheme tokyonight-night')
vim.cmd('colorscheme lunar')

vim.keymap.set("v", "<", "<gv", {});
vim.keymap.set("v", ">", ">gv", {});

vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==", {});
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==", {});

vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", {});
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", {});

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv-gv", {});
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv-gv", {});
