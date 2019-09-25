function progress 
    if test -z $argv
        set $argv progress
    else if test ! -e ~/progress/$argv.md
        echo "# $argv" >> ~/progress/$argv.md
    end
    vim +'normal Go' +'r!date' +'s/^/## /' +'noh' ~/progress/$argv.md
    pushd ~/progress
    git pull origin master 2> /dev/null > /dev/null
    git add $argv.md
    git commit -m "updated progress for $argv" > /dev/null
    and git push origin master 2> /dev/null
    popd
end

