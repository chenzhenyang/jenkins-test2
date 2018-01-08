node{
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	checkout scm
	     	sh 'mvn package -Dmaven.test.skip=true'
	     	sh "echo start read maven pom.xml"
	     	model = readMavenPom()
	     	IMAGE=model.getArtifactId()
    		VERSION=model.getVersion()
	     }
     }
     
     
     stage("Build and Publish Docker Image"){
     	  sh "echo start build docker image...."
//	      when {
//	        branch 'master'
//	      }
         docker.withRegistry('http://registry.cn-hangzhou.aliyuncs.com', 'aliyun') {
  		 	def newApp = docker.build "fengxin58/${IMAGE}:${VERSION}"
	     	newApp.push();
		 } 
     }
     
     stage('Quality Analysis') {
     	sh "echo quality analysis...."
     }
     
     stage("Deploy Docker Image"){
         sh "echo deploy to aliyun docker swarm cluster...."
     }
}