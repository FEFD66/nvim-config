require 'basic' 
require 'keymaps'
require 'plugins'

-- 设置配色(找不到配色会退回默认配色)
vim.cmd [[ try | colorscheme gruvbox | catch /^Vim\%((\a\+)\)\=:E185/|
  echo "Fallback default colorscheme"|colorscheme default| set background=dark
endtry ]]
