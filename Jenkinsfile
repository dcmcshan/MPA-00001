pipeline {
  agent any
  stages {
    stage('BCL2FASTQ') {
      steps {
        sh 'pwd'
	sh '/usr/local/bin/snakemake'
      }
    }
  }
}
