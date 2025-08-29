require "mini.pick".setup()

vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>sh", "<CMD>Pick help<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>sb", "<CMD>Pick buffers<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>sl", "<CMD>Pick grep_live<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>.", "<CMD>Pick resume<CR>", { desc = "Open parent directory" })
