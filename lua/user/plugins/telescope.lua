return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local wk = require "which-key"
        wk.add {
            { "<leader>bb", "<cmd>Telescope buffers previewer=false<cr>", desc = "Find" },
            { "<leader>fb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
            { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
            { "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects()<cr>", desc = "Projects" },
            { "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Find Text" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
            { "<leader>fl", "<cmd>Telescope resume<cr>", desc = "Last Search" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent File" },
        }
        require("telescope").setup()
    end
}
