pipeline {
  agent any
  stages {
    stage('BCL2FASTQ') {
      steps {
        sh 'snakemake'
        echo '${PWD}'
      }
    }
  }
}