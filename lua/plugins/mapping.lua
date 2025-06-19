return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Move single line up/down
          ["<A-j>"] = { ":m .+1<CR>==", desc = "Move line down" },
          ["<A-k>"] = { ":m .-2<CR>==", desc = "Move line up" },
        },
        -- Visual mode
        v = {
          -- Move selected lines up/down
          ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move selection down" },
          ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move selection up" },
        },
      },
    },
  },
}
