function sc --argument-names 'filename'
    set filename "typescript"
    script -q -c "fish" $filename
    echo (tail -n +2 $filename) > $filename
end