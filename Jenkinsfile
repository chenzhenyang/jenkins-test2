node{
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	checkout scm
	     	sh 'mvn package'
	     	
	     }    
	     def newApp = docker.build "mycorp/myapp:${env.BUILD_TAG}"
	     newApp.push();
     }
     
     
}
