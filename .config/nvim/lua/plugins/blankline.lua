return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      -- local hooks = require("ibl.hooks")
      -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      -- 	vim.api.nvim_set_hl(0, "indent", { fg = "#24272d" })
      -- 	vim.api.nvim_set_hl(0, "scope", { fg = "#33363c" })
      -- end)
      -- require("ibl").setup({
      -- 	indent = {
      -- 		highlight = "indent",
      -- 	},
      -- 	scope = {
      -- 		highlight = "scope",
      -- 	},
      -- })
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }
      local hooks = require("ibl.hooks")
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }
      require("ibl").setup({ scope = { highlight = highlight } })

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
      require("ibl").setup({
        indent = {
          char = "▏", -- This is a slightly thinner char than the default one, check :help ibl.config.indent.char
        },
        scope = {
          show_start = false,
          show_end = false,
        },
      })
    end,
  },
}
