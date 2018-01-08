node{
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	checkout scm
	     	sh 'mvn package'
	     }    
     }
     stage("DockerImage"){
     	 sh "start build docker image...."
         docker.withRegistry('registry.cn-hangzhou.aliyuncs.com', 'aliyun') {
  		 	def newApp = docker.build "fengxin58/jenkins-test2:0.0.1.RELEASE"
	     	newApp.push();
		 }
     }
}