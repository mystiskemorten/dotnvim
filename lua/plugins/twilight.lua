return {
  {
    "folke/twilight.nvim",
    opts = {
      dimming = {
        alpha = 0.5, -- amount of dimming
        -- we try to get the foreground from the highlight groups or fallback color
        term_bg = "#282828", -- if guibg=NONE, this will be used to calculate text color
      },
    },
  },
}
