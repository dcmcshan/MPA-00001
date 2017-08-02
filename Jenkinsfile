pipeline {
  agent any
  stages {
    stage('BCL2FASTQ') {
      steps {
        sh '''pwd;
/usr/local/bin/snakemake'''
      }
    }
  }
}