require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright", "omnisharp", "clangd" }, -- Itt add hozzá az LSP-ket, amiket használsz
  automatic_installation = true,
})

local lspconfig = require("lspconfig")

-- Automatikus LSP beállítás
require("mason-lspconfig").setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({})
  end,
})

-- Lua LSP speciális beállítások
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

lspconfig.omnisharp.setup({
  cmd = { "omnisharp" }, -- Mason installs this automatically
  root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = false,
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
  filetypes = { "cs", "razor" }
})
