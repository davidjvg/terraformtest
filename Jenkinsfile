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
        sh  'terraform init'

        }
 }      
      
  stage('terraform apply') {
      steps {
        sh  'terraform apply -no-color -auto-approve'

        }
 }
  }

}
