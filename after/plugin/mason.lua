require("mason").setup()

local DEFAULT_SETTINGS = {
    --install_root_dir = "~.config/nvim/data/mason",
    PATH = "prepend",
    log_level = vim.log.levels.INFO,
    providers = {
        "mason.providers.registry-api",
    },

    ui = {
        check_outdated_packages_on_open = true,
        border = "none",
        width = 0.8,
        height = 0.9,

        icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
        },

        keymaps = {
            toggle_package_expand = "<CR>",
            install_package = "i",
            update_package = "u",
            check_package_version = "c",
            update_all_packages = "U",
            check_outdated_packages = "C",
            uninstall_package = "X",
            cancel_installation = "<C-c>",
            apply_language_filter = "<C-f>",
        },
    },
}

require("mason-lspconfig").setup {
    ensure_installed = {"pylsp", "pyright", "sumneko_lua", "rust_analyzer" },
}


