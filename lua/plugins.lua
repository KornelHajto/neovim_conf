return {
  -- UI fejlesztések
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-tree.lua" },

  -- LSP és autokomplettálás
  -- Mason és társai
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" }, -- Completion plugin
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },


  -- Téma
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "day", -- "storm", "night", "moon", vagy "day"
    })
    vim.cmd("colorscheme tokyonight-day")
  end
},
{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } }

}

