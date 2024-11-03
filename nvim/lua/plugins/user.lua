---@type LazySpec
return {
  {
  "f-person/auto-dark-mode.nvim",
    config = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
      end,
      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
      end,
    },
  },
  {
    "ashfinal/qfview.nvim",
    event = "UIEnter",
    config = true,
  },
  {
    "tpope/vim-fugitive",
    event = "User AstroGitFile",
  },
  {
    "tpope/vim-rhubarb",
    event = "User AstroGitFile",
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        [[$$$$$$$\                   $$$$$$\                             $$$\                 $$\                           $$\                                     ]],
        [[$$  __$$\                 $$  __$$\                           $$ $$\                $$ |                          $$ |                                    ]],
        [[$$ |  $$ |$$\   $$\       $$ /  \__|$$\   $$\ $$$$$$$\        \$$$\ |          $$$$$$$ | $$$$$$\   $$$$$$$\       $$$$$$$\  $$\   $$\  $$$$$$\   $$$$$$$\ ]],
        [[$$ |  $$ |$$ |  $$ |      $$$$\     $$ |  $$ |$$  __$$\       $$\$$\$$\       $$  __$$ |$$  __$$\ $$  _____|      $$  __$$\ $$ |  $$ |$$  __$$\ $$  _____|]],
        [[$$ |  $$ |$$ |  $$ |      $$  _|    $$ |  $$ |$$ |  $$ |      $$ \$$ __|      $$ /  $$ |$$$$$$$$ |\$$$$$$\        $$ |  $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  ]],
        [[$$ |  $$ |$$ |  $$ |      $$ |      $$ |  $$ |$$ |  $$ |      $$ |\$$\        $$ |  $$ |$$   ____| \____$$\       $$ |  $$ |$$ |  $$ |$$ |  $$ | \____$$\ ]],
        [[$$$$$$$  |\$$$$$$  |      $$ |      \$$$$$$  |$$ |  $$ |       $$$$ $$\       \$$$$$$$ |\$$$$$$$\ $$$$$$$  |      $$$$$$$  |\$$$$$$  |\$$$$$$$ |$$$$$$$  |]],
        [[\_______/  \______/       \__|       \______/ \__|  \__|       \____\__|       \_______| \_______|\_______/       \_______/  \______/  \____$$ |\_______/ ]],
        [[                                                                                                                                    $$\   $$ |            ]],
        [[                                                                                                                                   \$$$$$$  |             ]],
        [[                                                                                                                                  \______/                ]],
      }
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  { 
    "max397574/better-escape.nvim",
    opts = function (_, opts)
      opts.mappings = {
        i = {
            k = {
                k = "<Esc>",
                j = "<Esc>",
            },
        },
        c = {
            k = {
                k = "<Esc>",
                j = "<Esc>",
            },
        },
        t = {
            k = {
                k = "<Esc>",
                j = "<Esc>",
            },
        },
        v = {
            k = {
                k = "<Esc>",
            },
        },
        s = {
            k = {
                k = "<Esc>",
            },
        },
      }      
      return opts
    end,
  },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   requires = {
  --     { "nvim-telescope/telescope-live-grep-args.nvim" },
  --   },
  --   config = function() require("telescope").load_extension("live_grep_args") end,
  --   opts = function (_, opts)
  --     local lga_actions = require("telescope-live-grep-args.actions")
  --     opts.mappings = { -- extend mappings
  --       i = {
  --         ["<C-k>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
  --         -- freeze the current list and start a fuzzy search in the frozen list
  --         -- ["<C-space>"] = actions.to_fuzzy_refine,
  --       },
  --     }
  --     return opts
  --   end,
  -- }
}
