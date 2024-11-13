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
    "akinsho/bufferline.nvim",
    enabled = false,
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
  {
    "jellydn/hurl.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = "hurl",
    opts = {
      -- Show debugging info
      debug = false,
      -- Show notification on run
      show_notification = false,
      -- Show response in popup or split
      mode = "split",
      -- Default formatter
      formatters = {
        json = { "jq" }, -- Make sure you have install jq in your system, e.g: brew install jq
        html = {
          "prettier", -- Make sure you have install prettier in your system, e.g: npm install -g prettier
          "--parser",
          "html",
        },
        xml = {
          "tidy", -- Make sure you have installed tidy in your system, e.g: brew install tidy-html5
          "-xml",
          "-i",
          "-q",
        },
      },
      -- Default mappings for the response popup or split views
      mappings = {
        close = "q", -- Close the response popup or split view
        next_panel = "<C-n>", -- Move to the next response popup window
        prev_panel = "<C-p>", -- Move to the previous response popup window
      },
    },
    keys = {
      --    -- Run API request
      --    { "<leader>A", "<cmd>HurlRunner<CR>", desc = "Run All requests" },
      --    { "<leader>a", "<cmd>HurlRunnerAt<CR>", desc = "Run Api request" },
      --    { "<leader>te", "<cmd>HurlRunnerToEntry<CR>", desc = "Run Api request to entry" },
      --    { "<leader>tE", "<cmd>HurlRunnerToEnd<CR>", desc = "Run Api request from current entry to end" },
      --    { "<leader>tm", "<cmd>HurlToggleMode<CR>", desc = "Hurl Toggle Mode" },
      --    { "<leader>tv", "<cmd>HurlVerbose<CR>", desc = "Run Api in verbose mode" },
      --    -- Run Hurl request in visual mode
      --    { "<leader>h", ":HurlRunner<CR>", desc = "Hurl Runner", mode = "v" },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = {
          "",
          "",
          [[      ___     ___       ___            ___                ___           ___     ___      ]],
          [[     /  /\   /  /\     /__/\          /  /\              /  /\         /  /\   / \:\     ]],
          [[    /  /:/  /  /::\    \  \:\        /  /::\            /  /::\       /  /::\  \  \:\    ]],
          [[   /  /:/  /  /:/\:\    \  \:\      /__/:/\:\          /  /:/\:\     /  /:/\:\  \  \:\   ]],
          [[  /  /:/  /  /::\ \:\    \__\:\    _\_ \:\ \:\        /  /:/  \:\   /  /:/  \:\  \  \:\  ]],
          [[ /__/:/  /__/:/\:\ \:\   /  /::\  /__/\ \:\ \:\      /__/:/_\_ \:\ /__/:/ \__\:\  \  \:\ ]],
          [[ \  \:\  \  \:\ \:\_\/  /  /:/\:\ \  \:\ \:\_\/      \  \:\__/\_\/ \  \:\ /  /:/  /  /:/ ]],
          [[  \  \:\  \  \:\ \:\   /  /:/  \:\ \  \:\_\:\         \  \:\ \:\    \  \:\  /:/  /__/_/  ]],
          [[   \  \:\  \  \:\_\/  /  /:/ \__\/  \  \:\/:/          \  \:\/:/     \  \:\/:/  _____    ]],
          [[    \  \:\  \  \:\   /__/:/          \  \::/            \  \::/       \  \::/  /  /:/    ]],
          [[     \__\/   \__\/   \__\/            \__\/              \__\/         \__\/   \_/_/     ]],
          "",
          "",
          (function()
            local handle = io.popen("pwd")
            if not handle then
              return
            end
            local pwd = handle:read("*a"):match("^%s*(.-)%s*$"):gsub(os.getenv("HOME"), "~")
            handle:close()
            return pwd
          end)(),
          (function()
            local handle = io.popen("git rev-parse --abbrev-ref HEAD")
            if not handle then
              return
            end
            local branch = handle:read("*a"):match("^%s*(.-)%s*$")
            handle:close()
            return branch
          end)(),
          "",
          "",
        },
      },
    },
  },
}
