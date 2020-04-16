pipeline {
    agent {
        docker { image 'terraform:latest' }
    }

  stages {


  stage('terraform init') {
      steps {
        sh  'terraform init'

        }
 }  
      
  }

}
