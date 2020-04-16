pipeline {
    agent {
        docker { image 'hashicorp/terraform:latest' }
    }

  stages {


  stage('terraform init') {
      steps {
        sh  'terraform init'

        }
 }  
      
  }

}
