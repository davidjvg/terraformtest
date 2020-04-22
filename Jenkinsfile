pipeline {
    agent { docker { 
        image 'hashicorp/terraform' 
        args '--entrypoint='  
    } 
    
    }

    environment {
        TENANT_ID     = credentials('tenantid')
    }
                
    
    
    stages {

        stage('execute plan') {
          
            steps {
                sh 'printenv'
                sh 'git clone https://github.com/davidjvg/terraformtest.git' 
                sh'cd terraformtest/ && terraform init'
                sh 'cd terraformtest/ && terraform plan -out=tfplan -input=false'
                sh 'cd terraformtest/ && terraform apply -input=false tfplan'
            }
          
        } 
      

        
          stage('test') {
            
            steps {
                sh 'hostname' 
            }
            
        }

        
    }
}
