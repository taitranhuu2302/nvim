return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    execution_message = {
      message = "",
      dim = 0.0,
      cleaning_interval = 0,
    },
    condition = function(buf)
      return require("auto-save.utils.data").not_in(vim.fn.getbufvar(buf, "&filetype"), { "harpoon" })
    end,
  },
}
