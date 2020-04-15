pipeline {
  agent {
    dockerfile true
    }

  stages {

    stage('sudo terraform init') {
        steps {
          sh  'sudo terraform init'

          }
  }

  stage('sudo terraform apply') {
      steps {
        sh  'sudo terraform apply -no-color -auto-approve'

        }
 }
  }

}
