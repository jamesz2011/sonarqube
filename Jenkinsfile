pipeline {
  agent any
  stages {
    stage('Checkout') {
      parallel {
        
        stage('clean') {
          steps {
            sh '''sudo rm -rf ${WORKSPACE}/* '''
           

          }
        }
        
        
        stage('Checkout') {
          steps {
            git(url: 'https://github.com/jamesz2011/sonarqube.git', branch: 'master', poll: true, changelog: true)
            echo 'git pull code is ok'
          }
        }
        
      }
    }
    stage('buiid') {
      steps {
        sh '''sudo docker ps '''
        sh '''sudo docker-compose -f postgres_sonarqube.yml up -d'''
      }
    }
  }
}
