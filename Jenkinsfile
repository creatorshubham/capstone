pipeline{
 agent any
  environment{
   DOCKER_CERT_PATH = credentials('docker-hub')
   IMAGE_TAG = "${BUILD_NUMBER}"
  }
  stages{
   stage('Build Docker'){
    steps{
     script{
      sh '''
       echo 'Buid Docker Image'
       docker build -t /creatorshubham/capstone:v.${BUILD_NUMBER} .
         '''
     }
    }
  }
   stage('Pushing to Docker Hub'){
    steps{
      step{
        sh 'docker push /creatorshubham/capstone:v.${BUILD_NUMBER}'
      }
    }
   }
  }
  
}
