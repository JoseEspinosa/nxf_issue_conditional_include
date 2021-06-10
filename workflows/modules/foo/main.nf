
WorkflowFoo.initialise (params, log)

process FOO {
    output:
    path 'foo.txt'
    script:
    """
    echo "Hello" >> foo.txt
    """
}