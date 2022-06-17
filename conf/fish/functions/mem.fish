function mem
    ps -eo rss,pid,user,command --sort -rss | \
        awk '{ hr=$1/1024/8 ; printf("%13.2f MB ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' |\
        cut -d "" -f2
end
