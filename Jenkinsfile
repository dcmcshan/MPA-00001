pipeline {
  agent any
  stages {
    stage('BCL2FASTQ') {
      steps {
        echo '${PWD}'
        sh '/usr/local/bin/snakemake'
      }
    }
  }
}