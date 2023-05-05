pipeline{
 agent any
  stages{
   stage('Build Docker'){
    steps{
     script{
      sh '''
       echo 'Buid Docker Image'
       docker build -t creatorshubham/capstone:v.${BUILD_NUMBER} .
         '''
     }
    }
  }
   stage('Pushing to Docker Hub'){
    steps{
     withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'pass')]) {
      script{
       sh 'docker login -u creatorshubham -p ${pass}'
        sh 'docker push creatorshubham/capstone:v.${BUILD_NUMBER}'
      }
}
    }
   }
   stage('Deploying container to Kubernetes') {
      steps {
       withKubeConfig([credentialsId: 'kube-config']) {
    script{
     sh 'kubectl apply -f deployment.yml'
        }
}
        
      }
    }
  }
  
}
