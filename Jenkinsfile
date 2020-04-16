pipeline {
    agent {
        docker { image 'terraform:latest' }
    }

  stages {


  stage('terraform init') {
      steps {
        sh  'terraform init -plugin-dir=/opt/terraform/plugins/.terraform/plugins/linux_amd64/'

        }
 }  
      
  stage('terraform plan&apply') {
      steps {
        sh 'terraform plan -out=tfplan -input=false'

        }
 }
  }

}
