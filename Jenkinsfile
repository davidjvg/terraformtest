pipeline {
    agent {
        docker { image 'terraform:latest' }
    }

  stages {


    stage('test') {
        steps {
          sh  'hostname'

          }
  }

      
   stage('test2') {
      steps {
        sh  'ls -la /opt/terraform/plugins/'

        }
 }  

  stage('terraform init') {
      steps {
        sh  'sudo terraform init -plugin-dir=/opt/terraform/plugins/.terraform/plugins/linux_amd64/'

        }
 }  
      
  stage('terraform plan&apply') {
      steps {
        sh 'terraform plan -out=tfplan -input=false'

        }
 }
  }

}
