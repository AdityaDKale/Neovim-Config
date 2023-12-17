local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<M-m>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<M-a>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<M-s>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<M-d>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<M-f>", function() harpoon:list():select(4) end)
