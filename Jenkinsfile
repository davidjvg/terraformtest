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
      
  stage('terraform plan&apply') {
      steps {
        sh 'terraform plan -out=tfplan -input=false'

        }
 }
  }

}
