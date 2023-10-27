local status, colorizer = pcall(require, "colorizer")
if (not status) then return end

colorizer.setup({
  '*',
})

require("todo-comments").setup()
require("trouble").setup()

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>td", vim.cmd.TodoTrouble)
vim.keymap.set("n", "<leader>tdt", vim.cmd.TodoTelescope)

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
end, { desc = "Next error/warning todo comment" })
