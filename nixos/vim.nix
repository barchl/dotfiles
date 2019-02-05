with import <nixpkgs> {};

vim_configurable.customize {
    name = "vim";
    vimrcConfig.customRC = ''
   	syntax enable
        set number
              
        set tabstop=4
        set softtabstop=4
        set expandtab
    
        " enable visual autocomplete for cmd menu
        set wildmenu
    
        " enable showing matching parenthesis-like characters
        set showmatch
        
        " move vertically by visual lines  
        nnoremap j gj
        nnoremap k gk

        let leader="," 
        " let 'jk' be a replacement for esc
        inoremap jk <esc>

        " save session (+tabs, visual splits)
        nnoremap <leader>s :mksession<CR>
    '';

    vimrcConfig.vam.knownPlugins = pkgs.vimPlugins;
    vimrcConfig.vam.pluginDictionaries = [
        { 
          names = [
	    "Syntastic"
            "nerdtree" 
            "ctrlp"
	  ]; 
        } 
    ];   
}
