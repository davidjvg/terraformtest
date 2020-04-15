pipeline {
  agent {
    dockerfile true
    }

  stages {


    stage('test') {
        steps {
          sh  'hostname'

          }
  }


  stage('terraform apply') {
      steps {
        sh  'terraform apply -no-color -auto-approve'

        }
 }
  }

}
