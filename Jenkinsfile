node{
def IMAGE
def VERSION
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	checkout scm
	     	sh 'mvn package -Dmaven.test.skip=true'
	     	IMAGE = readMavenPom().getArtifactId()
    		VERSION = readMavenPom().getVersion()
	     }
     }
     stage("BuildDockerImageAndPushToAliyun"){
     	 sh "echo start build docker image...."
         docker.withRegistry('http://registry.cn-hangzhou.aliyuncs.com', 'aliyun') {
  		 	def newApp = docker.build "fengxin58/${IMAGE}:${VERSION}"
	     	newApp.push();
		 }
     }
     stage("DeployToAliyunDockerSwarmCluster"){
         sh "echo deploy to aliyun docker swarm cluster...."
     }
}