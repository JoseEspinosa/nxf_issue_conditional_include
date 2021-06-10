class WorkflowFoo {

    //
    // Check and validate parameters
    //
    public static void initialise(params, log) {        
        
        if (!params.foo) {
            log.error "Missing foo parameter"
            System.exit(1)
        }
    }
}