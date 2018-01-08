node{
     stage("Checkout"){
          checkout scm
     }
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	sh 'mvn -B clean'
	     	sh 'mvn compile'
	     	sh 'mvn test'
	     	sh 'mvn package'
	     }    
     }
     stage("DockerImage"){
     	steps{
     		docker.build("test:0.0.1")    
     	}
     }

}
