node{
     stage('Checkout'){
          checkout scm
     }
     docker.image("maven:3.5.2-jdk-8").inside {
     	sh 'mvn -B clean'
     }
}
