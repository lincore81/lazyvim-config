return {
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    opts = {
      transparent_bg = true,
      italic_comments = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = -1,
    },
  },
  {
    "dmmulroy/tsc.nvim",
    opts = {
      use_trouble_qflist = true,
      use_diagnostics = true,
    },
  },
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "tpope/vim-surround",
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = "dracula-nvim",
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { "markdown-toc" },
        ["markdown.mdx"] = { "markdown-toc" },
      },
      formatters = {
        ["markdownlint-cli2"] = nil,
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(name)
        return not vim.tbl_contains({ "markdownlint-cli2" }, name) and not vim.tbl_contains({ "markdownlint" }, name)
      end, opts.ensure_installed)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
