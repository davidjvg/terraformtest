pipeline {
  agent {
    dockerfile true
    }

  stages {

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
