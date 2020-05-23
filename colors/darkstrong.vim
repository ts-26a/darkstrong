set background=dark

if exists("syntax_on")
    syntax reset
endif

hi clear

let g:colors_name = "darkstrong"

let s:colors = {
    \ 'bg_black' : '#1e1e1e',
    \ '1'        : '#a0ff94',
    \ '2'        : '#d09ff5',
    \ '3'        : '#eb919a',
    \ '4'        : '#ffb463',
    \ '5'        : '#ff7063',
    \ '6'        : '#61aeff',
    \ '0'        : 'NONE',
    \ 'nmm'      : '#ffe78f',
    \ 'str'      : '#eda75c',
    \ '9'        : '#deffe3',
    \ 'err'      : '#ff80a4',
    \ 'cursor'   : '#242424'
\ }


function! s:hi(gname, fg, bg, style)
    if a:style == 0
        let style = "NONE"
    else
        let style = a:style
    endif
    let fg = s:colors[a:fg]
    let bg = s:colors[a:bg]
    execute(":hi ".a:gname." guifg=".fg." guibg=".bg." gui=".style)
endfunction

command! -nargs=+ Hi :call s:hi(<f-args>)




hi Comment guifg=#707070 guibg=NONE gui=italic
Hi Constant str 0 0
Hi String str 0 0
Hi Character str 0 0
Hi Number nmm 0 0
Hi Boolean nmm 0 0
Hi Float nmm 0 0
Hi Identifier 6 0 0
Hi Function 6 0 0
Hi Statement 2 0 0
Hi Conditional 2 0 0
Hi Repeat 2 0 0
Hi Label 2 0 0
Hi Operator 2 0 0
Hi Keyword 2 0 0
Hi Exception 2 0 0
Hi Preproc 4 0 0
Hi Include 4 0 0
Hi Define 4 0 0
Hi Macro 4 0 0
Hi Precondit 4 0 0
Hi Type 3 0 0
Hi StorageClass 3 0 0
Hi Struvture 3 0 0
Hi Typedef 3 0 0
Hi Special 9 0 0
Hi SpecialChar str 0 0
Hi Tag 2 0 0
Hi Delimiter 0 0 0
Hi SpecialComment 2 0 0
Hi Debug 6 0 0
Hi Undelined 9 0 0
Hi Ignore 9 0 0
Hi Error 0 err 0
Hi Todo 2 0 0
Hi CursorLine 0 cursor 0
hi IncSearch guifg=NONE guibg=#ffe354 gui=NONE
hi LineNr guifg=#606060 guibg=NONE gui=NONE
hi CursorLineNr guifg=#949494 guibg=NONE gui=NONE
Hi Normal 9 bg_black 0
Hi NonText 9 bg_black 0
Hi SpecialKey 2 0 0
hi Pmenu guifg=#949494 guibg=#3a3a3a gui=NONE
hi PmenuSbar guifg=#1c1c1c guibg=#1c1c1c gui=NONE
hi PmenuSel guifg=#eeeeee guibg=#444444 gui=NONE
hi PmenuThumb guifg=#585858 guibg=#585858 gui=NONE
hi ErrorMsg guifg=#262626 guibg=#d78787 gui=NONE
hi StatusLineNC guifg=#949494 guibg=#3a3a3a gui=NONE
hi StatusLine guifg=#d0d0d0 guibg=#444444 gui=NONE
hi Title guifg=#eb919a guibg=NONE gui=bold
hi markdownLineBreak guifg=#505050 guibg=NONE gui=NONE
hi def link pythonEscape SpecialChar
Hi vimNotation 2 0 0
Hi VimFunction 2 0 0
