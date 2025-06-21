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

          -- Toggle between current and previous buffer
          ["<Leader><Leader>"] = { "<C-^>", desc = "Toggle previous buffer" },

          -- Disable existing ToggleTerm mappings
          ["<Leader>tf"] = false,
          ["<Leader>th"] = false,
          ["<Leader>tl"] = false,
          ["<Leader>tn"] = false,
          ["<Leader>tp"] = false,
          ["<Leader>tt"] = false,
          ["<Leader>tv"] = false,

          -- Main terminal toggle
          ["<C-n>"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal" },

          -- Numbered floating terminals
          ["<C-1>"] = { "<Cmd>1ToggleTerm direction=float<CR>", desc = "Toggle terminal 1" },
          ["<C-2>"] = { "<Cmd>2ToggleTerm direction=float<CR>", desc = "Toggle terminal 2" },
          ["<C-3>"] = { "<Cmd>3ToggleTerm direction=float<CR>", desc = "Toggle terminal 3" },
          ["<C-4>"] = { "<Cmd>4ToggleTerm direction=float<CR>", desc = "Toggle terminal 4" },
          ["<C-5>"] = { "<Cmd>5ToggleTerm direction=float<CR>", desc = "Toggle terminal 5" },
          ["<C-6>"] = { "<Cmd>6ToggleTerm direction=float<CR>", desc = "Toggle terminal 6" },
          ["<C-7>"] = { "<Cmd>7ToggleTerm direction=float<CR>", desc = "Toggle terminal 7" },
          ["<C-8>"] = { "<Cmd>8ToggleTerm direction=float<CR>", desc = "Toggle terminal 8" },
          ["<C-9>"] = { "<Cmd>9ToggleTerm direction=float<CR>", desc = "Toggle terminal 9" },
        },
        -- Terminal mode mappings
        t = {
          ["<C-n>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle floating terminal" },
          ["<C-1>"] = { "<Cmd>1ToggleTerm<CR>", desc = "Toggle terminal 1" },
          ["<C-2>"] = { "<Cmd>2ToggleTerm<CR>", desc = "Toggle terminal 2" },
          ["<C-3>"] = { "<Cmd>3ToggleTerm<CR>", desc = "Toggle terminal 3" },
          ["<C-4>"] = { "<Cmd>4ToggleTerm<CR>", desc = "Toggle terminal 4" },
          ["<C-5>"] = { "<Cmd>5ToggleTerm<CR>", desc = "Toggle terminal 5" },
          ["<C-6>"] = { "<Cmd>6ToggleTerm<CR>", desc = "Toggle terminal 6" },
          ["<C-7>"] = { "<Cmd>7ToggleTerm<CR>", desc = "Toggle terminal 7" },
          ["<C-8>"] = { "<Cmd>8ToggleTerm<CR>", desc = "Toggle terminal 8" },
          ["<C-9>"] = { "<Cmd>9ToggleTerm<CR>", desc = "Toggle terminal 9" },
        },
        -- Visual mode
        v = {
          -- Move selected lines up/down
          ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move selection down" },
          ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move selection up" },
        },
        -- insert mode
        i = {
          -- move current line up/down with Alt+Up/Down arrows
          ["<a-up>"] = { "<esc>:m .-2<cr>==gi", desc = "move line up" },
          ["<a-down>"] = { "<esc>:m .+1<cr>==gi", desc = "move line down" },
        },
      },
    },
  },
}
