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
                
   parameters {
        string(name: 'nombrevm', defaultValue: 'default')
       
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
                sh 'terraform plan -out=tfplan '
            }
            
        }

        
    }
}
