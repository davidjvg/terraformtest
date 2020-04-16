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


  stage('terraform init') {
      steps {
        sh  'terraform init -plugin-dir=/opt/terraform/plugins'

        }
 }  
      
  stage('terraform plan&apply') {
      steps {
        sh 'terraform plan -out=tfplan -input=false'

        }
 }
  }

}
