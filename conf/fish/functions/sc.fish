function sc --argument-names 'filename'
    if set -q $filename
        set filename "typescript"
    end
    script -c 'fish' $filename
    # echo (tail -n +2 $filename) > $filename
    sed -i "1d;2d;3d;4d" $filename
end