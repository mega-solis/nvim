
let g:rustfmt_autosave = 1

lua <<EOF
local nvim_lsp = require'lspconfig'
local opts = {
    server = {
        settings = {
        ["rust-analyzer"] = {
                assist = {
                        importEnforceGranularity = true,
                        importPrefix = "crate"
                },
        cargo = { allFeatures = true },
        checkOnSave = { command = "clippy" },
        },
        inlayHints = {
          lifetimeElisionHints = { enable = true, useParameterNames = true },
        },
      }
    },
}

require('rust-tools').setup(opts)
EOF

