return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "php" } },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        intelephense = {
          filetypes = {
            "php",
          },
        },
        -- phpactor = {
        --   filetypes = {
        --     "php",
        --   },
        -- },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "phpcs",
        "php-cs-fixer",
        "phpcbf",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        -- php = { "phpcs" },
        -- php = { "psalm" },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      local dap = require("dap")
      local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { path .. "/extension/out/phpDebug.js" },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        intelephense = {
          command = "intelephense",
        },
        prettier = {},
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          args = {
            "fix",
            -- "--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
            "$FILENAME",
            "--config=/Users/sebastianalfaro/.config/nvim/lua/config/blame/config.php",
          },
          stdin = false,
        },
        phpcbf = {
          command = "phpcbf",
          args = {
            "--config=;a",
          },
        },
        ["pretty-php"] = {
          command = "pretty-php",
        },
        -- ["easy-coding-standard"] = {
        --   command = "",
        -- },
        ["blade-formatter"] = {
          command = "blade-formatter",
          -- args = {
          --   "--config=/Users/sebastianalfaro/.config/nvim/lua/config/blame/.bladeformatterrc.json",
          -- },
          -- stdin = false,
        },
        lsp = {
          -- command = vim.lsp.buf.format({
          --   -- bufnr = vim.api.nvim_get_current_buf(),
          --   name = "intelephense",
          --   async = true,
          -- }),
          -- command = vim.lsp.buf.format({ async = true, }),
        },
      },
      formatters_by_ft = {
        php = {
          -- "intelephense",
          -- "blade-formatter",
          -- "easy-coding-standard",
          -- "php-cs-fixer",
          -- "phpcbf",
          -- "lsp",
          -- "pretty-php",
          -- "htmlbeautifier",
        },
      },
      notify_on_error = true,
    },
  },
}
