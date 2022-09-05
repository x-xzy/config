vim.api.nvim_exec(
    [[
        let g:vimwiki_list = [{'path': '~/vimwiki/',
                              \ 'syntax': 'markdown', 'ext': '.md'}]
    ]],
    true
)

vim.api.nvim_exec(
    [[
  function OpenMarkdownPreview (url)
    execute "silent ! firefox --new-window " . a:url
  endfunction
  let g:mkdp_browserfunc = 'OpenMarkdownPreview'
    ]],
    true
)
