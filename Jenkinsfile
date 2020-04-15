pipeline {
  agent {
    dockerfile true
    }

  stages {

    stage('sudo terraform init') {
        steps {
          sh  'terraform init'

          }
  }

  stage('sudo terraform apply') {
      steps {
        sh  'terraform apply -no-color -auto-approve'

        }
 }
  }

}
