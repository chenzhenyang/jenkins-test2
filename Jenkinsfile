pipeline {
  agent {
    docker {
      image 'maven:3.5.2-jdk-8'
    }
  }
  stages {
    stage('Clean') {
      steps {
        sh 'mvn -B clean'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn compile'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Package') {
      steps {
        sh 'mvn package'
      }
    }
    stage('Fake Docker Image') {
      steps {
        sh 'echo fake docker image'
      }
    }
  }
}