return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = function()
    require("treesj").setup({})
  end,
  keys = {
    {
      "<leader>j",
      desc = "Join/Split code line",
    },

    { "<space>jm", desc = "Split code line " },
    { "<space>jj", desc = "Join code line " },
  },
}
