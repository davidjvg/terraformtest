pipeline {
    agent { docker { 
        image 'hashicorp/terraform' 
        args '--entrypoint='  
    } 
    
    }

    environment {
        
        ARM_TENANT_ID    = credentials('tenantid')
        ARM_CLIENT_ID     = credentials('clientid')
        ARM_SUBSCRIPTION_ID = credentials('subscriptionid')
        ARM_CLIENT_SECRET   = credentials('clientsecret')
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
