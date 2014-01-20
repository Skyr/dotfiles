# dotfiles

My system configuration, managed with [fresh](https://github.com/freshshell/fresh).

## Installation

- Clone this repository to ~/.dotfiles
- Symlink the fresh config:
		ln -s ~/.dotfiles/.freshrc ~/.freshrc
- Install vundle:
		git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
- Install fresh:
		git clone https://github.com/freshshell/fresh ~/.fresh/source/freshshell/fresh
- Run fresh:
		~/.fresh/source/freshshell/fresh/bin/fresh
- Check vi installation: See [the vundle installation guide](https://github.com/gmarik/vundle#quick-start) and the [you complete me installation](http://valloric.github.com/YouCompleteMe/).
- Note for compiling YCM with the system clang library:

    ./install.sh --clang-completer --system-libclang

