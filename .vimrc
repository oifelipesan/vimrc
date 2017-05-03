"===================================================================================
" CONFIGURAÇÕES GERAIS
"===================================================================================
"
"-----------------------------------------------------------------------------------
" Use as configurações do Vim, em vez das configurações do Vi.
" Isso deve ser o primeiro, porque ele altera outras opções como um efeito
" colateral.
"-----------------------------------------------------------------------------------
set nocompatible
"
"-----------------------------------------------------------------------------------
" Ativa detecção de tipo de arquivo. Use as configurações de tipo de arquivo
" padrão.
" Também carregar os arquivos de recuo, para fazer automaticamente a indentação
" dependente da linguagem.
"-----------------------------------------------------------------------------------
filetype plugin on
filetype indent on
"
"-----------------------------------------------------------------------------------
" Ativa o destaque de sintaxe.
"-----------------------------------------------------------------------------------
syntax on
"
"-----------------------------------------------------------------------------------
" Algumas configurações
"-----------------------------------------------------------------------------------
set autoindent                  " Copiar identação da linha atual
set autoread                    " Ler arquivos abertos novamente quando alterados
                                " fora do Vim
set autowrite                   " Escreva um buffer modificado em cada: next, ...
set backspace=indent,eol,start  " Backspacing sobre tudo no modo de inserção
set browsedir=current           " Qual diretório usar para o navegador de arquivos
set complete+=k                 " Escaneie os arquivos fornecidos com a opção
                                " 'dicionário'
set history=50                  " Manter 50 linhas de histórico de linha de comando
set hlsearch                    " Realce o último padrão de pesquisa usado
set incsearch                   " Fazer pesquisa incremental
set ignorecase                  " Ignora dependendo do caso
set smartcase                   " Pesquisa de forma inteligente
set listchars=tab:>.,eol:\$     " Strings para usar no modo 'lista'
set mouse=a                     " Permitir o uso do mouse
set nowrap                      " Não embrulhe linhas
set popt=left:8pc,right:3pc     " Opções de impressão
set ruler                       " Mostrar a posição do cursor o tempo todo
set shiftwidth=4                " Número de espaços a utilizar para cada indentação
set showcmd                     " Exibir comandos incompletos
set smartindent                 " Indentação automatica e inteligente ao iniciar
                                " uma nova linha
set tabstop=4                   " Numero de espaço para cada <Tab>
set expandtab                   " Ativa expanção do <Tab>
set visualbell                  " Sino visual em vez de beeping
set wildignore=*.bak,*.o,*.e,*~ " Wildmenu: ignore estas extensões
set wildmenu                    " Linha de comando em um modo avançado
set encoding=utf-8              " Define a codificação padrão para utf-8
set nu                          " Ativa a numeração de linhas
"
"-----------------------------------------------------------------------------------
" Autocomplete parênteses, colchetes e chaves
"-----------------------------------------------------------------------------------
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
"
vnoremap ( s()<Esc>P<Right>%
vnoremap [ s[]<Esc>P<Right>%
vnoremap { s{}<Esc>P<Right>%
"
"-----------------------------------------------------------------------------------
" Citações de preenchimento automático (modo visual e de seleção)
"-----------------------------------------------------------------------------------
xnoremap  '  s''<Esc>P<Right>
xnoremap  "  s""<Esc>P<Right>
xnoremap  `  s``<Esc>P<Right>
"
"-------------------------------------------------------------------------------
"  Alguns atalhos para o teclado
"-------------------------------------------------------------------------------
"    F2   -  Salva o arquivo
"    F3   -  Salva o arquivo e sai
"    F4   -  Apenas sai(se não ouve alterações)
"    F5   -  Força a saida(não salva alterações)
"-------------------------------------------------------------------------------
"
map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :x<CR>
map   <silent> <F4>        :q<CR>
map   <silent> <F5>        :q!<CR>
"
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:x<CR>
imap  <silent> <F4>   <Esc>:q<CR>
imap  <silent> <F5>   <Esc>:q!<CR>
"
