require 'basic' 
require 'keymaps'
require 'plugins'
require 'lsp'


require 'plugin-config.cmp'
require 'plugin-config.telescope'
require 'plugin-config.comment'
require 'plugin-config.autopairs'
require 'plugin-config.nvim-tree'
require 'plugin-config.gitsigns'

-- 设置配色(找不到配色会退回默认配色)
vim.cmd [[ try | colorscheme gruvbox | catch /^Vim\%((\a\+)\)\=:E185/|
  echo "Fallback default colorscheme"|colorscheme default| set background=dark
endtry ]]
