pipeline {
    agent { docker { 
        image 'hashicorp/terraform' 
        args '--entrypoint='  
    } 
    
    }

    environment {
        
        TENANT_ID = credentials('tenantid')
        ARM_TENANT_ID    = credentials('tenantid')
        ARM_CLIENT_ID     = credentials('clientid')
        ARM_SUBSCRIPTION_ID = credentials('subscriptionid')
        ARM_CLIENT_SECRET   = credentials('clientsecret')
    }
                
    
    
    stages {

        stage('init') {
          
            steps {
                sh 'printenv'
                sh 'terraform init'
            }
          
        } 
      

        
          stage('plan') {
            
            steps {
                sh 'terraform plan -var "client_id='$client_id' " '
            }
            
        }

        
    }
}
