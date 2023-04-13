function sc --argument-names 'filename'
    test -n "$filename" || echo "Must specify tsc name" && return 
    script -c 'fish' $filename
    sed -i "1d;2d;3d;4d" $filename
end