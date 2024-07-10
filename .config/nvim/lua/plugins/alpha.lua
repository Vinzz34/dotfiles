return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[██╗   ██╗██╗███╗   ██╗███████╗███████╗]],
      [[██║   ██║██║████╗  ██║╚══███╔╝╚══███╔╝]],
      [[██║   ██║██║██╔██╗ ██║  ███╔╝   ███╔╝]],
      [[╚██╗ ██╔╝██║██║╚██╗██║ ███╔╝   ███╔╝]],
      [[ ╚████╔╝ ██║██║ ╚████║███████╗███████╗]],
      [[  ╚═══╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("SPC f f", "󰈞  Find file"),
      dashboard.button("SPC f g", "󰈬  Find word"),
      dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)
  end,
}
