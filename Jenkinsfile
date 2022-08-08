pipeline {
    agent any;
    environment {
    DOCKERHUB_CREDENTIALS = credentials ('docker-hub-cred')
    }
    stages{
        stage ('build') {
            steps {
                //cleanws()
                //sh "sudo su"
                ws("/var/www/survey-api/tmp") {
                //git branch: 'stage', credentialsId: 'survey-test', url: 'https://github.com/Appstekcorp-com/survey-api.git'
                //sh "cd /var/www/survey-api"
                sh "sudo git pull origin master"
                
                }  
            }
        
        }
        stage ('build docker image') {
            steps {
                sh 'docker build -t survey-image:v1 .'
            }
        }
        stage ('login to dockerhub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage ('push image') {
            steps {
                sh 'docker push appstekhemanth/dj-survey:v1'
            }
        }
     
    } 
}
