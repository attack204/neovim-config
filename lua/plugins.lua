local packer = require('packer')
packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        use('wbthomason/packer.nvim')
        -- 你的插件列表...
        --------------------- colorschemes --------------------
        -- tokyonight
        use('folke/tokyonight.nvim')
        -------------------------- plugins -------------------------------------------
        -- nvim-tree (新增)
        use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
        -- bufferline (新增)
        use({ 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } })
        -- lualine (新增)
        use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
        use('arkav/lualine-lsp-progress')

        -- telescope （新增）
        use({ 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } })
        -- dashboard-nvim (新增)
        use('glepnir/dashboard-nvim')
        -- project
        use('ahmedkhalf/project.nvim')
        -- treesitter （新增）
        use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
        --------------------- LSP --------------------
        -- lspconfig
        use({ 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' })

        -- 补全引擎
        use('hrsh7th/nvim-cmp')
        -- snippet 引擎
        use('hrsh7th/vim-vsnip')
        -- 补全源
        use('hrsh7th/cmp-vsnip')
        use('hrsh7th/cmp-nvim-lsp') -- { name = nvim_lsp }
        use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
        use('hrsh7th/cmp-path') -- { name = 'path' }
        use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use('rafamadriz/friendly-snippets')
        -- ui (新增)
        use('onsails/lspkind-nvim')
        -- indent-blankline
        use('lukas-reineke/indent-blankline.nvim')
        use('tami5/lspsaga.nvim') -- 新增
        -- 代码格式化
        use("mhartington/formatter.nvim")
        use({ 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' })
        -- 浮动terminal
        use('voldikss/vim-floaterm')
        -- 平滑滚动
        use('karb94/neoscroll.nvim')
        -- 自动保存插件
        -- -----

        use('Pocco81/AutoSave.nvim')
    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end,
        },
    },
})
-- 每次保存 plugins.lua 自动安装插件
pcall(
    vim.cmd,
    [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
