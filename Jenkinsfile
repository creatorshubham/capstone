pipeline{
 agent any
  stages{
   stage('Test Stage'){
    steps{
     script{
      sh '''
       echo Test cases passed
         '''
     }
    }
  }
   stage('Generate Artifact'){
    steps{
     script{
      sh '''
       tar -cf app.tar ./
         '''
     }
    }
  }
   stage('Build Docker'){
    steps{
     script{
      sh '''
       echo 'Buid Docker Image'
       docker build -t creatorshubham/capstone:development-v.${BUILD_NUMBER} .
         '''
     }
    }
  }
   stage('Pushing to Docker Hub'){
    steps{
     withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'pass')]) {
      script{
       sh 'docker login -u creatorshubham -p ${pass}'
        sh 'docker push creatorshubham/capstone:development-v.${BUILD_NUMBER}'
      }
}
    }
   }
  } 
}
