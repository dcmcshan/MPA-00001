BASEIN="/muse/raw_data/sequencing"
BASEOUT="/muse/processed/sequencing"

configfile: "config.yaml"

rule all:
    version: "1.0.0"
    input:
        expand(BASEOUT + "/{run}", run=config['runs'])

# TODO: rule make_SampleSheet

rule bcl2fastq:
    input:
        expand(BASEIN + "/{run}", run=config['runs'])
    output:
        expand(BASEOUT + "/{run}", run=config['runs'])
    log:
        expand(BASEOUT + "/{run}/logs/bcl2fastq.log", run=config['runs'])
    threads: 8
    shell:
        "bcl2fastq -R {input} -o {output} --create-fastq-for-index-reads "
        "-r {threads} -p {threads} "
        "--barcode-mismatches 1 --no-lane-splitting "
        "--no-bgzf-compression --fastq-compression-level 6 &> {log}"
