-- Ensure the leader key is set (you can put this here as a fallback if needed)
vim.g.mapleader = " "  -- Spacebar as leader key

-- General keybindings
local opts = { noremap = true, silent = true }

-- Set <leader>fp to open netrw file explorer
vim.api.nvim_set_keymap("n", "<leader>fp", ":Ex<CR>", opts)  -- Open netrw file explorer

-- LSP keybindings (example for LSP)
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- Go to definition
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- Go to declaration
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- Go to implementation
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts) -- Find references
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- Hover documentation
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts) -- Rename symbol
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Code actions
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts) -- Format file

-- Diagnostics
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)  -- Previous diagnostic
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)  -- Next diagnostic
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts) -- Show diagnostic

-- Telescope keybindings
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)  -- Find files
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)   -- Live grep
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)     -- Switch buffers
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)   -- Search help tags
vim.api.nvim_set_keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)    -- Open recent files
vim.api.nvim_set_keymap("n", "<leader>fgf", "<cmd>Telescope git_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fgs", "<cmd>Telescope git_status<CR>", opts)  -- Show git status
vim.api.nvim_set_keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<CR>", opts)  -- Switch git branches


