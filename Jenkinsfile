pipeline {
    agent {
        docker {
            image 'node:16-buster-slim'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deploy') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 

                // Add button confirmation to kill
                // input message: 'Sudah selesai menggunakan React App? (Klik "Proceed" untuk mengakhiri)' 

                // Add wait script 1 minutes
                sh './jenkins/scripts/wait.sh' 

                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}
