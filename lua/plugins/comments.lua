return {
  -- TODO: Todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- {
  --   "numtostr/comment.nvim",
  --   opts = {
  --     -- add any options here
  --   },
  --   lazy = false,
  -- },
  {
    "echasnovski/mini.comment",
    version = "*",
    opts = function()
      require("mini.comment").setup()
      -- Disable comments in a new line
      vim.cmd("autocmd BufEnter * set formatoptions-=cro")
      vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
    end,
  },
}
