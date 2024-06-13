return {
  {
    "L3MON4D3/LuaSnip",
    version = nil,
    branch = "master",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "Zeioth/NormalSnippets",
      "benfowler/telescope-luasnip.nvim",
      "saadparwaiz1/cmp_luasnip",
      {
        "mlaursen/vim-react-snippets",
        dependencies = "L3MON4D3/LuaSnip",
        ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
    },
    opts = function(plugin, opts)
      -- friendly-snippets - enable standardized comments snippets
      -- require("luasnip.loaders.from_vscode").lazy_load({
      --   include = {
      --     "javascript",
      --     "javascriptreact",
      --     "typescriptreact",
      --     "typescript",
      --     "typescript.tsx",
      --     "javascript.jsx",
      --   },
      -- })
      -- require("luasnip").filetype_extend("typescript", { "tsdoc" })
      -- require("luasnip").filetype_extend("javascript", { "jsdoc" })
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
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      { "williamboman/mason.nvim" }, -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" }, -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "hrsh7th/cmp-buffer" }, -- Optional
      { "hrsh7th/cmp-path" }, -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-nvim-lua" }, -- Optional

      -- Snippets
      { "L3MON4D3/LuaSnip" }, -- Required
      { "rafamadriz/friendly-snippets" }, -- Optional
    },
  },
}
