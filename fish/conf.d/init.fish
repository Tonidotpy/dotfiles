set -l fish_conf_dir $XDG_CONFIG_HOME/fish

# For each directory except 'conf.d' evaluate each fish script
for filename in $(ls $fish_conf_dir)
    set -l file $fish_conf_dir/$filename
    if test -d $file
        and test $filename != 'conf.d'

        set -l scripts $file/**.fish
        for script in $scripts
            source $script
        end
    end
end
