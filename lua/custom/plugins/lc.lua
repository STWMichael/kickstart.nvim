return {
  'kawre/leetcode.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    -- optional: picker (fzf-lua or telescope)
    -- "nvim-telescope/telescope.nvim",
    -- "ibhagwan/fzf-lua",
    -- optional: devicons
    -- "nvim-tree/nvim-web-devicons"
  },
  opts = {
    -- Start with C++ by default. Change to "python3" if desired.
    lang = 'python3',
    -- Use leetcode.com by default. Set enabled = true for leetcode.cn.
    cn = {
      enabled = false,
      translator = true,
      translate_problems = true,
    },
    -- Directory for storing leetcode.nvim data
    storage = {
      home = vim.fn.stdpath 'data' .. '/leetcode',
      cache = vim.fn.stdpath 'cache' .. '/leetcode',
    },
    -- Enable non-standalone mode if you want to run Leet in a normal session
    plugins = {
      non_standalone = false,
    },
    -- Logging
    logging = true,
    -- Editor UI settings
    editor = {
      reset_previous_code = true,
      fold_imports = true,
    },
    -- Console settings
    console = {
      open_on_runcode = true,
      dir = 'row',
      size = {
        width = '90%',
        height = '75%',
      },
      result = {
        size = '60%',
      },
      testcase = {
        virt_text = true,
        size = '40%',
      },
    },
    -- Description UI
    description = {
      position = 'left',
      width = '40%',
      show_stats = true,
    },
    -- Picker config (set provider if you want to force telescope/fzf-lua/etc)
    picker = { provider = nil },
    -- Keys config (customize as you like)
    keys = {
      toggle = { 'q' },
      confirm = { '<CR>' },
      reset_testcases = 'r',
      use_testcase = 'U',
      focus_testcases = 'H',
      focus_result = 'L',
    },
    -- Cache settings
    cache = {
      update_interval = 60 * 60 * 24 * 7,
    },
    -- Hooks
    hooks = {
      ['enter'] = {},
      ['question_enter'] = {},
      ['leave'] = {},
    },
    -- Theme overrides (optional)
    theme = {},
    -- Image support (disable by default)
    image_support = false,
  },
}
