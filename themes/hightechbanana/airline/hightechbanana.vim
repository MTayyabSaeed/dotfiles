let g:airline#themes#hightechbanana#palette = {}

let g:airline#themes#hightechbanana#palette.accents = {
      \ 'red': [ '#ff4236' , '' , 196 , '' , '' ],
      \ }

let s:N1 = [ '#5c6370' , '#1e1e1e' , 243 , 234 ]
let s:N2 = [ '#5c6370' , '#1e1e1e' , 243 , 234 ]
let s:N3 = [ '#5c6370' , '#1e1e1e' , 243 , 234 ]
let g:airline#themes#hightechbanana#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#hightechbanana#palette.normal_modified = {
      \ 'airline_c': [ '#ffd75f' , '#1e1e1e' , 220 , 234 , '' ] ,
      \ }

let s:I1 = [ '#1793d1' , '#1e1e1e' , 45 , 234 ]
let s:I2 = [ '#1793d1' , '#1e1e1e' , 45 , 234 ]
let s:I3 = [ '#1793d1' , '#1e1e1e' , 45 , 234 ]
let g:airline#themes#hightechbanana#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#hightechbanana#palette.insert_modified = {
      \ 'airline_c': [ '#ffd75f' , '#1e1e1e' , 220 , 234 , '' ] ,
      \ }
let g:airline#themes#hightechbanana#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#1e1e1e' , s:I1[2] , 234 , '' ] ,
      \ }

let g:airline#themes#hightechbanana#palette.replace = copy(g:airline#themes#hightechbanana#palette.insert)
let g:airline#themes#hightechbanana#palette.replace.airline_a = [ '#ff243a' , s:I1[1] , 196 , s:I1[3] , '' ]
let g:airline#themes#hightechbanana#palette.replace.airline_z = [ '#ff243a' , s:I1[1] , 196 , s:I1[3] , '' ]
let g:airline#themes#hightechbanana#palette.replace_modified = g:airline#themes#hightechbanana#palette.insert_modified

let s:V1 = [ '#ffd75f' , '#1e1e1e' , 220 , 234 ]
let s:V2 = [ '#ffd75f' , '#1e1e1e' , 220 , 234 ]
let s:V3 = [ '#ffd75f' , '#1e1e1e' , 220 , 234 ]
let g:airline#themes#hightechbanana#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#hightechbanana#palette.visual_modified = {
      \ 'airline_c': [ '#ffd75f' , '#1e1e1e' , 220 , 234 , '' ] ,
      \ }

let s:IA = [ '#5e5e5e' , '#222222' , 59 , 234 , '' ]
let g:airline#themes#hightechbanana#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#hightechbanana#palette.inactive_modified = {
      \ 'airline_c': [ '#ffd75f' , '' , 220 , '' , '' ] ,
       \ }

let g:airline#themes#hightechbanana#palette.tabline = {
      \ 'airline_tab':      ['#5c6370' , '#1e1e1e' , 243 , 234 , '' ],
      \ 'airline_tabsel':   ['#1e1e1e' , '#71c671' , 234 , 77 , '' ],
      \ 'airline_tabtype':  ['#5c6370' , '#1e1e1e' , 243 , 234 , '' ],
      \ 'airline_tabfill':  ['#5c6370' , '#1e1e1e' , 243 , 234 , '' ],
      \ 'airline_tabmod':   ['#1e1e1e' , '#71c671' , 234 , 77 , '' ],
      \ }

let s:WI = [ '#f2267f', '#1e1e1e', 196, 234 ]
let g:airline#themes#hightechbanana#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#hightechbanana#palette.normal_modified.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

let g:airline#themes#hightechbanana#palette.insert.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

let g:airline#themes#hightechbanana#palette.insert_modified.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

let g:airline#themes#hightechbanana#palette.visual.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

let g:airline#themes#hightechbanana#palette.visual_modified.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

let g:airline#themes#hightechbanana#palette.replace.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

let g:airline#themes#hightechbanana#palette.replace_modified.airline_warning =
    \ g:airline#themes#hightechbanana#palette.normal.airline_warning

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#hightechbanana#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#5c6370' , '#1e1e1e' , 243 , 234 , ''     ] ,
      \ [ '#5c6370' , '#1e1e1e' , 243 , 234 , ''     ] ,
      \ [ '#1e1e1e' , '#71c671' , 234 , 77 , ''     ] )
