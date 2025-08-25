function JS_console_log_blank()
  local newline = 'console.log("");'
  local currentLineNumber = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_buf_set_lines(0, currentLineNumber, currentLineNumber, true, { newline })
end
vim.api.nvim_set_keymap('n', ',b', '<cmd>lua JS_console_log_blank()<cr>', {})
-- TODO - place the cursor at the "" in the console.log

function JS_console_log_from_yank_register()
  local yankRegister = vim.fn.getreg '0'
  local yankRegisterNoNewLines = string.gsub(yankRegister, '\n', '')
  local newline = 'console.log("' .. yankRegisterNoNewLines .. '", ' .. yankRegisterNoNewLines .. ');'
  local currentLineNumber = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_buf_set_lines(0, currentLineNumber, currentLineNumber, true, { newline })
end
vim.api.nvim_set_keymap('n', ',l', '<cmd>lua JS_console_log_from_yank_register()<cr>', {})

function JS_console_log_JSON_from_yank_register()
  local yankRegister = vim.fn.getreg '0'
  local yankRegisterNoNewLines = string.gsub(yankRegister, '\n', '')
  local newline = 'console.log("' .. yankRegisterNoNewLines .. '", JSON.stringify(' .. yankRegisterNoNewLines .. '));'
  local currentLineNumber = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_buf_set_lines(0, currentLineNumber, currentLineNumber, true, { newline })
end
vim.api.nvim_set_keymap('n', ',j', '<cmd>lua JS_console_log_JSON_from_yank_register()<cr>', {})

function JS_console_log_type_from_yank_register()
  local yankRegister = vim.fn.getreg '0'
  local yankRegisterNoNewLines = string.gsub(yankRegister, '\n', '')
  local newline = 'console.log("' .. yankRegisterNoNewLines .. '", "**", typeof ' .. yankRegisterNoNewLines .. ', "**" ,' .. yankRegisterNoNewLines .. ');'
  local currentLineNumber = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_buf_set_lines(0, currentLineNumber, currentLineNumber, true, { newline })
end
vim.api.nvim_set_keymap('n', ',t', '<cmd>lua JS_console_log_type_from_yank_register()<cr>', {})
