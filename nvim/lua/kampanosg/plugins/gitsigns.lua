return {
    'lewis6991/gitsigns.nvim',
    opts = {
        current_line_blame = true,
    },
    event = { 'BufRead', 'BufNewFile' },
    keys = {
        { 'g]', function() require('gitsigns').nav_hunk('next') end },
        { 'g[', function() require('gitsigns').nav_hunk('prev') end },
    },
}
