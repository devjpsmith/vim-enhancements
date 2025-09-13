# install.sh
# author: devjpsmith
# install file for vim-nhanst

echo 'Beginning install'

# download and setup pathogen.vim for plugin manager
echo 'Creating required directories and downloading pathogen.vim...'
mkdir -pv ~/.vim/autoload ~/.vim/bundle ~/.vim/colors \
    && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download and install lightline.vim for status bar
echo 'Cloning lightline.vim...'
git clone --depth 1 --single-branch https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim

# download and install vim-gitbranch
echo 'Cloning vim-gitbranch...'
git clone --depth 1 --single-branch https://github.com/itchyny/vim-gitbranch.git ~/.vim/bundle/vim-gitbranch

# install a nice colorscheme
echo 'Cloning jellybeans.vim...'
git clone --depth 1 --single-branch https://github.com/nanotech/jellybeans.vim.git jellybeans

# move files to correct place
mv -uv ./jellybeans/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim

echo 'Copying vimrc...'
cp -fv ./vimrc ~/.vimrc

# cleanup
echo 'Cleaning up...'
rm -rvf ./jellybeans

