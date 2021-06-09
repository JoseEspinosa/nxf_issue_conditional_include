#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

params.skip_foo = false

workflow MY_PIPELINE{    

    if (!params.skip_foo) {
        include { FOO } from './modules/foo/main.nf'
        
        FOO()
    }
}

workflow {
    MY_PIPELINE()
}
