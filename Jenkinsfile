pipeline {
  agent any
  triggers {
        cron('* * * * *')
  }
  stages {
    stage('MPA-00002') {
        steps {
          echo 'MPA-00002 Pipeline'
        }
    }
    stage('Trigger') {
	steps {
	  sh 'pwd'
	  echo 'Setup config.yaml to point to the triggered directory'
	}
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
