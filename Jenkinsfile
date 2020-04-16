pipeline {
    agent {
        docker { image 'hashicorp/terraform:0.12' }
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
