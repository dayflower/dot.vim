# .vim

My personal vim setting files

## Initial setup

    $ git clone git@github.com:dayflower/dot.vim.git ~/.vim
    $ cp ~/.vim/dot.vimrc.example ~/.vimrc
    # edit ~/.vimrc
    $ git submodule init
    $ git submodule update --depth 1 

## How to add a new vim plugin

    $ git submodule add -f --depth 1 -- https://github.com/ctrlpvim/ctrlp.vim.git pack/plugins/opt/ctrlp

## How to customize the vim plugin

Edit [loader.vim](pack/plugins/start/loader/plugin/loader.vim).

## How to upgrade vim plugins

    $ git submodule foreach git pull
    $ git commit -a -m 'Update plugins'

## See also

* https://qiita.com/nil2/items/ddcf23f1163d0abd805b#%E6%A8%99%E6%BA%96%E3%81%AE%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E7%AE%A1%E7%90%86%E6%A9%9F%E8%83%BD
* https://qiita.com/thinca/items/cdc0169e3bcc5a55a5ba
* https://vim-jp.org/vimdoc-ja/repeat.html#packages
* http://tyru.hatenablog.com/entry/2017/12/20/035142
