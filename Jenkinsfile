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



      
  stage('terraform plan&apply') {
      steps {
        sh 'terraform plan -out=tfplan -input=false'

        }
 }
  }

}
