node{
	def AppName
	def Version

     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	checkout scm
	     	sh 'mvn package -Dmaven.test.skip=true'
	     	Model model = readMavenPom 
	     	def name = model.getName();
	     	sh "echo appname:"+name	
	     }
     }
     stage("BuildDockerImageAndPushToAliyun"){
     	 sh "echo start build docker image...."
         docker.withRegistry('http://registry.cn-hangzhou.aliyuncs.com', 'aliyun') {
  		 	def newApp = docker.build "fengxin58/jenkins-test2:0.0.1-SNAPSHOT"
	     	newApp.push();
		 }
     }
     stage("DeployToAliyunDockerSwarmCluster"){
         sh "echo deploy to aliyun docker swarm cluster...."
     }
}