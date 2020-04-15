pipeline {
  agent {
    dockerfile true
    }
  }

  stages {

    stage('git clone') {
      steps {
          sh  'git clone http://13.69.249.173/ci-cds/infraestructure.git'
                  }

    stage('terraform') {
        steps {
          sh  'terraform init'
                

          }



  }
