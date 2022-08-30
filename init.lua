require('basic')
-- Packer 插件管理
require('plugins')

-- 快捷键映射
require('keybindings')
-- 主题设置 （新增）
require('colorscheme')

-- 插件配置
require('plugin-config.nvim-tree')

-- require('plugin-config.bufferline')

require('plugin-config.lualine')

require('plugin-config.telescope')

require('plugin-config.dashboard')
require('plugin-config.project')
require('plugin-config.nvim-treesitter') -- （新增）

-- 内置LSP (新增)
require('lsp.setup')
require('lsp.cmp') --  (新增)
require('lsp.ui') -- 新增

require('plugin-config.indent-blankline')

-- require("lsp.formatter")
require('lsp.null-ls')

require('neoscroll')
-- 自动保存
-- require('autosave')
