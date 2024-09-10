return {
  'MasterTemple/bible.nvim',
  keys = {
    {
      '<leader>bs',
      '<cmd>lua require("telescope").extensions.bible.bible({isReferenceOnly = false, isMultiSelect = false})<CR>',
      desc = 'Search by verse content',
    },
    {
      '<leader>br',
      '<cmd>lua require("telescope").extensions.bible.bible({isReferenceOnly = true, isMultiSelect = false})<CR>',
      desc = 'Search by verse reference',
    },
    {
      '<leader>bms',
      '<cmd>lua require("telescope").extensions.bible.bible({isReferenceOnly = false, isMultiSelect = true})<CR>',
      desc = 'Search by verse content (multi-select)',
    },
    {
      '<leader>bmr',
      '<cmd>lua require("telescope").extensions.bible.bible({isReferenceOnly = true, isMultiSelect = true})<CR>',
      desc = 'Search by verse reference (multi-select)',
    },
  },
}
