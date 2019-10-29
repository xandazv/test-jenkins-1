pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
		
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
		
                echo 'Deploying....'
            }
        }
	stage('BuildDocker') {
            steps {
            	sh '''
            		docker build -t apptest:latest .
                '''
            }
        } 
    	stage('PushDockerImage') {
            steps {
        	sh '''
        		docker tag apptest:latest xandazv/apptest:latest
				docker push xandazv/apptest:latest
				docker rmi apptest:latest
        	'''
            }
        } 
    }
}
