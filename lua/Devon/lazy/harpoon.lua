return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local harpoon = require 'harpoon'
      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-1>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-2>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-3>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-4>', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)

      -- Corrected nav_next and nav_prev if you decide to use them
      -- map('n', '<C-S-P>', function() harpoon.nav_prev() end, term_opts)
      -- map('n', '<C-S-N>', function() harpoon.nav_next() end, term_opts)

      -- Telescope integration would also need to be updated for harpoon2's API
      -- if you decide to use it. The extension path and function names might have changed.
      -- map('n', '<leader>ph', function()
      --   -- Verify the correct way to call telescope extension for harpoon2
      --   require('harpoon.extensions.telescope').select_mark()
      -- end, { desc = '[P]icker for [H]arpoon marks (Telescope)' })
    end,
  },
}
