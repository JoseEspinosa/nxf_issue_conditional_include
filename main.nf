#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { MY_PIPELINE } from './workflows/my_pipeline'

workflow {
    MY_PIPELINE()
}
