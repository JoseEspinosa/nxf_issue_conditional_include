
process BAR {
    output:
    path 'bar.txt'
    script:
    """
    echo "Hello" >> bar.txt
    """
}