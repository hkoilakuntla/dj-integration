pipeline {
    agent any;
    stages{
        stage ('build') {
            steps {
                //cleanws()
                //sh "sudo su"
                ws("/var/www/survey-api/tmp") {
                //git branch: 'stage', credentialsId: 'survey-test', url: 'https://github.com/Appstekcorp-com/survey-api.git'
                //sh "cd /var/www/survey-api"
                sh "sudo git pull origin develop"
                
                }  
            }
        
        }    
     
    } 
}
