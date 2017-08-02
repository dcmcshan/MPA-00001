pipeline {
  agent any
  stages {
    stage('BCL2FASTQ') {
      steps {
        sh '''pwd;
mv config.yaml.example config.yaml
/usr/local/bin/snakemake'''
      }
    }
  }
}