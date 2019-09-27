pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        git credentialsId: 'gitlab', url: 'http://192.168.33.10/root/trf.git'
        sh label: 'Image', script: "docker build -t ${env;JOB_NAME}:${env.BUILD_NUMBER} -f docker/Dockerfile ."
      }
    }
    stage('Test') {
      steps {
         sh "docker rm -f ${env.JOB_NAME}-test || true"
        sh "docker run -dti  -p 65535:8080 --name ${env.JOB_NAME}-test ${env.JOB_NAME}:${env.BUILD_NUMBER}"
        sh "wget --quiet --spider localhost:65535"
        sh "docker rm -f ${env.JOB_NAME}-test || true"
      }
    }
    stage('Deploy') {
      steps {
        echo 'deploy'
      }
    }
  }	
}
