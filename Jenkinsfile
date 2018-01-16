pipeline {
  agent any
  stages {
    stage('Checkout') {
      parallel {
        stage('Checkout') {
          steps {
            git(url: 'https://github.com/jamesz2011/sonarqube.git', branch: 'master', poll: true, changelog: true)
            echo 'git pull code is ok'
          }
        }
        stage('isok') {
          steps {
            echo 'isokmeg'
          }
        }
      }
    }
    stage('buiid') {
      steps {
        sh '''docker rm -f $(docker ps -a -q )






'''
        sh '''docker-compose -f postgres_sonarqube.yml
up -d'''
      }
    }
  }
}