return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#000000",
                bg_dark = "#000000",
                bg_highlight = "#737373",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#F1F3F9",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#737373",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#F93459",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ff8aa0",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#E4E1D1",
                -- green: Comments, strings, success states, git additions
                green = "#91a696",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#A3DAF2",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#8282a2",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#A371AB",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#caa9cf",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
