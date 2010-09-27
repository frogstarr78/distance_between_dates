let SessionLoad = 1
if &cp | set nocp | endif
map 	 
map ; :
map Q gq
map UU :call UnComment()
vmap [% [%m'gv``
map \s :call Spacify()
map \ac :call Comment(";") " asterisk config comment
map \rc :call Comment("r") " batch file comment
map \bc :call Comment("r") " batch file comment
map \vc :call Comment("\"") " vim comment
map \jc :call Comment("/") " javascript comment
map \sc :call Comment("-") " sql comment
map \mc :call Comment("*") " C-type multi-line comment
map \hc :call Comment("!") " html comment
map \pc :call Comment("#") " p* language comment
map \cc :call FComment()
vmap ]% ]%m'gv``
vmap a% [%v]%
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
map s :w!
map zz 
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
iabbr def def end<Up>
iabbr if if end<Up>
iabbr each each do ||endk$i
iabbr inject inject( ) do |memo, nxt|endF)bi
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set ruler
set shiftwidth=2
set softtabstop=2
set spelllang=en_us
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set tabstop=2
set tags=./tags,./TAGS,tags,TAGS,~/ctags/tags,~/ctags/java.tags
set timeoutlen=500
set wildmenu
set wildmode=list:longest,full
set window=49
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/distance_between_dates
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +6 lib/distance_between_dates.rb
badd +4 spec/distance_between_dates_spec.rb
badd +11 spec/spec_helper.rb
badd +24 lib/distance_between_dates/year.rb
badd +1 lib/distance_between_dates/date_part.rb
badd +54 spec/distance_between_dates/year_spec.rb
badd +144 spec/distance_between_dates/month_spec.rb
badd +51 lib/distance_between_dates/month.rb
badd +1 lib/distance_between_dates/days_in_month.rb
badd +0 spec/distance_between_dates/day_spec.rb
badd +0 lib/distance_between_dates/day.rb
args lib/distance_between_dates.rb spec/distance_between_dates_spec.rb
edit lib/distance_between_dates/month.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 1resize ' . ((&columns * 100 + 100) / 201)
exe '2resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 100 + 100) / 201)
exe '3resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 3resize ' . ((&columns * 100 + 100) / 201)
exe '4resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 4resize ' . ((&columns * 100 + 100) / 201)
argglobal
edit lib/distance_between_dates/month.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/haml-2.2.23/lib,~/.rv
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
1
normal zo
2
normal zo
37
normal zo
38
normal zo
50
normal zo
51
normal zo
50
normal zo
38
normal zo
37
normal zo
2
normal zo
1
normal zo
let s:l = 58 - ((57 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 010l
wincmd w
argglobal
edit lib/distance_between_dates/day.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/haml-2.2.23/lib,~/.rv
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
1
normal zo
2
normal zo
21
normal zo
22
normal zo
28
normal zo
29
normal zo
28
normal zo
38
normal zo
39
normal zo
40
normal zo
39
normal zo
38
normal zo
22
normal zo
21
normal zo
54
normal zo
55
normal zo
56
normal zo
55
normal zo
54
normal zo
2
normal zo
1
normal zo
let s:l = 47 - ((22 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 010l
wincmd w
argglobal
edit spec/distance_between_dates/month_spec.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/haml-2.2.23/lib,~/.rv
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
3
normal zo
4
normal zo
15
normal zc
21
normal zo
21
normal zc
45
normal zo
60
normal zo
45
normal zo
61
normal zo
70
normal zo
77
normal zo
131
normal zo
160
normal zo
3
normal zo
let s:l = 56 - ((49 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 0
wincmd w
argglobal
edit spec/distance_between_dates/day_spec.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/haml-2.2.23/lib,~/.rv
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
3
normal zo
44
normal zo
61
normal zo
44
normal zo
62
normal zo
95
normal zo
3
normal zo
let s:l = 59 - ((48 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 055l
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 1resize ' . ((&columns * 100 + 100) / 201)
exe '2resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 100 + 100) / 201)
exe '3resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 3resize ' . ((&columns * 100 + 100) / 201)
exe '4resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 4resize ' . ((&columns * 100 + 100) / 201)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
