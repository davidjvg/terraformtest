pipeline {
    agent { docker { 
        image 'hashicorp/terraform' 
        args '--entrypoint='
        
    } 
    
    }
    
    stages {

        stage('execute plan') {
          
            steps {
                sh 'printenv'
                sh 'git clone https://github.com/davidjvg/terraformtest.git' 
                sh'cd maquinatest/ && terraform init'
                sh 'cd maquinatest/ && terraform plan -out=tfplan -input=false'
                sh 'cd maquinatest/ && terraform apply -input=false tfplan'
            }
          
        } 
      

        
          stage('test') {
            
            steps {
                sh 'hostname' 
            }
            
        }

        
    }
}
