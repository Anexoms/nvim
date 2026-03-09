return {
  "saghen/blink.cmp",

  dependencies = {
    "rafamadriz/friendly-snippets",
  },

  version = "*",

  opts = {
    keymap = {
      preset = "default",

      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },

      ["<CR>"] = { "accept", "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },

    appearance = {
      nerd_font_variant = "mono"
    },

    completion = {
      documentation = {
        auto_show = true,
      },
    },

    sources = {
      default = { "lsp", "path", "buffer", "snippets" },
    },
  },
}
