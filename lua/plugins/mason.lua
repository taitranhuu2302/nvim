return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
        "tailwindcss-language-server",
        "typescript-language-server",
        "js-debug-adapter",
        "css-lsp",
        "html-lsp",
        "intelephense",
        -- "emmet-language-server",
        "emmet_ls",
        "prettier",
        "pretty-php",
        "phpcs",
        "eslint_d",
        "php-cs-fixer",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "black",
          "debugpy",
          "mypy",
          "ruff",
          "pyright",
          "tailwindcss-language-server",
          "typescript-language-server",
          "js-debug-adapter",
          "css-lsp",
          "html-lsp",
          "intelephense",
          -- "emmet_language_server",
          -- "emmet_ls",
          "prettier",
          "pretty-php",
          "phpcs",
          "eslint_d",
          "php-cs-fixer",
          -- "phpactor",
        },
      })
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "Zeioth/NormalSnippets",
      "benfowler/telescope-luasnip.nvim",
    },
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load({
        include = { "javascript", "javascriptreact", "typescriptreact", "typescript", "php" },
      })
      -- friendly-snippets - enable standardized comments snippets
      require("luasnip").filetype_extend("typescript", { "tsdoc" })
      require("luasnip").filetype_extend("javascript", { "jsdoc" })
      require("luasnip").filetype_extend("lua", { "luadoc" })
      require("luasnip").filetype_extend("python", { "pydoc" })
      require("luasnip").filetype_extend("rust", { "rustdoc" })
      require("luasnip").filetype_extend("cs", { "csharpdoc" })
      require("luasnip").filetype_extend("java", { "javadoc" })
      require("luasnip").filetype_extend("c", { "cdoc" })
      require("luasnip").filetype_extend("cpp", { "cppdoc" })
      require("luasnip").filetype_extend("php", { "phpdoc" })
      require("luasnip").filetype_extend("kotlin", { "kdoc" })
      require("luasnip").filetype_extend("ruby", { "rdoc" })
      require("luasnip").filetype_extend("sh", { "shelldoc" })
    end,
  },
  { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  {
    "stevearc/conform.nvim",
    optional = false,
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        html = { "prettier" },
        less = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        yaml = { "prettier" },
        -- php = { "intelephense" },
        markdown = { "prettier" },
        ["markdown.mdx"] = { "prettier" },
        graphql = { "prettier" },
        handlebars = { "prettier" },
      },
      formatters = {
        intelephense = {},
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          prepend_args = {
            "--no-interaction",
            "--quiet",
            "--config=.php-cs-fixer.dist.php",
            "fix",
            "$FILENAME",
          },
          stdin = false,
        },
        ["pretty-php"] = {
          args = {
            "-t",
            -- "2",
            -- "--tab 2",
            "$FILENAME",
          },
        },
        -- ["html-lsp"] = {
        --   command = "html-lsp",
        -- }
      },
      notify_on_error = true,
    },
  },
}
