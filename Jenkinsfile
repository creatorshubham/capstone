pipeline{
 agent any
  environment{
   DOCKER_CERT_PATH = credentials('docker-hub')
  }
  stages{
   stage('Build Docker'){
    steps{
     script{
      sh '''
       echo 'Buid Docker Image'
       docker build -t newimage .
         '''
     }
    }
  }
  }
  
}
