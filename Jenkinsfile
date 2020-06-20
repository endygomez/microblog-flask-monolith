pipeline { 
    agent {
        label 'localhost'
    }
    stages {
        stage('Build') {
            steps {
                sh "ls -lh"
            }
        }
        stage('Test'){
            steps {
                sh "echo 'prueba 2'"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 'prueba 3'"
            }
        }
    }
}