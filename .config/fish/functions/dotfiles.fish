function dotfiles
    set HOME_DIR /home/tushar
    set DOTFILES_DIR $HOME_DIR/dotfiles
    set BACKUP_LIST (cat -s $DOTFILES_DIR/backup_list.txt)

    pushd $DOTFILES_DIR
    for file in $BACKUP_LIST
        set file_path $DOTFILES_DIR/(dirname $file)
        if test (string match -r '[#]+.*' $file); or test $file = ''
            continue
        end
        if not test -d $file_path
            mkdir -p $DOTFILES_DIR/(dirname $file)
        end
        cp $HOME_DIR/$file $file_path
        git add $file
    end
    git commit -am "updated dotfiles"
    and git push origin master
    popd
end
