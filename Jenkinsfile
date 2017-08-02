pipeline {
  agent any
  stages {
    stage('BCL2FASTQ') {
      steps {
        sh '/usr/local/bin/snakemake'
        echo '${PWD}'
      }
    }
  }
}