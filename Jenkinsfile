pipeline {
  agent {
    dockerfile true
    }

  stages {

    stage('terraform') {
        steps {
          sh  'terraform init'

          }
  }

  stage('terraform') {
      steps {
        sh  'terraform apply -no-color -auto-approve'

        }
 }
  }

}
