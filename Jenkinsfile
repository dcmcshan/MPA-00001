pipeline {
  agent any
 triggers {
        cron('* * * * *')
  }
  stages {
    }
    stage('BCL2FASTQ') {
      steps {
        sh 'pwd'
	mv config.yaml.example config.yaml
	sh '/usr/local/bin/snakemake'

      }
    }
  }
}
