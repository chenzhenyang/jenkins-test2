node{
     stage("Build"){
	     docker.image("maven:3.5.2-jdk-8").inside {
	     	checkout scm
	     	sh 'mvn package -Dmaven.test.skip=true'
	     	sh "echo start read maven pom.xml"
	     	model = readMavenPom()
	     	println model
	     	sh "echo read success"
	     	readMavenPom().getArtifactId()
	     	sh "echo read artifactid success"
    		VERSION = readMavenPom().getVersion()
    		sh "echo read version success"
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