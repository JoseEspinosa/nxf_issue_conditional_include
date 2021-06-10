#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

params.skip_foo = false

include { FOO } from './modules/foo/main.nf'
include { BAR } from './modules/bar/main.nf'

workflow MY_PIPELINE{    

    if (!params.skip_foo) {
        FOO()
    }
    BAR()
}

workflow {
    MY_PIPELINE()
}
