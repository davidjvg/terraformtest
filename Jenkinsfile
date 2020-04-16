pipeline {
    agent {
        docker { image 'hashicorp/terraform:light' }
    }

  stages {


  stage('/usr/bin/terraform init') {
      steps {
        sh  'terraform init'

        }
 }  
      
  }

}
