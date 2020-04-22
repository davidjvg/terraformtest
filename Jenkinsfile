pipeline {
    agent { docker { 
        image 'hashicorp/terraform' 
        args '--entrypoint='  
    } 
    
    }

    environment {
        
        TENANT_ID = credentials('tenantid')
        CLIENT_ID     = credentials('clientid')
        SUBSCRIPTION_ID = credentials('subscriptionid')
        CLIENT_SECRET   = credentials('clientsecret')
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
                sh 'terraform plan -var tenant_id=$TENANT_ID client_secret=$CLIENT_SECRET client_id=$CLIENT_ID subscription_id=$SUBSCRIPTION_ID  '
            }
            
        }

        
    }
}
