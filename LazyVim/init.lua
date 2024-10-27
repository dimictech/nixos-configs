local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

    { "hrsh7th/nvim-cmp", dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
      }
    },

    { "neovim/nvim-lspconfig" },
    { "nvim-tree/nvim-tree.lua" },
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    { "lewis6991/gitsigns.nvim" },
    { "nvim-lualine/lualine.nvim" },
    { "numToStr/Comment.nvim" },
    { "windwp/nvim-autopairs" },
    { "EdenEast/nightfox.nvim" },

    -- Neorg for note-taking
    {
      "nvim-neorg/neorg",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},  -- Loads default Neorg modules
            ["core.concealer"] = {},  -- Enhances visuals for Neorg files
            ["core.dirman"] = {       -- Manages Neorg workspaces
              config = {
                workspaces = {
                  notes = "~/notes",
                  tasks = "~/tasks",
                },
                default_workspace = "notes",
              },
            },
          },
        }
      end,
    },

    -- todo-comments for task management
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("todo-comments").setup {}
      end,
    },
  },
  defaults = { lazy = true, version = "*" },
  install = { colorscheme = { "carbonfox" } },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

vim.cmd("colorscheme carbonfox")

-- LSP configurations
local lspconfig = require("lspconfig")
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.tsserver.setup({})
lspconfig.pyright.setup({})
lspconfig.zls.setup({})
lspconfig.gopls.setup({})
lspconfig.intelephense.setup({})
lspconfig.jdtls.setup({})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "html", "css", "javascript", "python", "zig", "go", "php", "java" },
  highlight = { enable = true },
})

-- Key mapping for todo-comments using Telescope
vim.api.nvim_set_keymap("n", "<leader>ft", ":TodoTelescope<CR>", { noremap = true, silent = true })

