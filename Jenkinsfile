pipeline {
  agent {
    docker {
      image 'maven:3.5.2-jdk-8'
    }
  }
options {
    timestamps()
  }  
  environment {
    // Use Pipeline Utility Steps plugin to read information from pom.xml into env variables
    // IMAGE = maven.readMavenPom().getArtifactId()
    // VERSION = maven.readMavenPom().getVersion()
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
  }
}