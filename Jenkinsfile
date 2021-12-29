pipeline {
  agent any 
  tools {
    maven 'M2_HOME'
  }
  enviornment {
    registry = "docker-hub"
    registryCredential = "dockerUserID"
  }
  stages {
    stage('Build'){
      steps {
        sh 'mvn clean'
        sh 'mvn install'
        sh 'mvn package'
      }
    } 
  stage('test'){
    steps {
        sh 'mvn test'
      }
    } 
  stage('Deploy'){
    steps {
        script {
        docker.build registry + ":BUILD_NUMBER"
        }     
      }
    }  
  }
}
