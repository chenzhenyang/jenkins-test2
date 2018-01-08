node{
     stage("Checkout"){
          checkout scm
     }
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	sh 'mvn package'
	     }    
     }
     stage("DockerImage"){
     	 docker.image("maven:3.5.2-jdk-8").inside {
	     	sh 'mvn package'
	     }    
     }

}
