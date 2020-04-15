pipeline {
    agent {
        docker { image 'test:latest' }
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
