pipeline { 
    agent {
        label 'localhost'
    }
    environment {
        FLASK_APP='microblog.py'
        FLASK_DEBUG=0
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
            environment {
                MAIL_SERVER     = 'smtp.mailtrap.io'
                MAIL_PORT = '587'
                MAIL_USE_TLS     = '1'
                environment {
                    MAIL_CREDS = "mail-user-and-password-secret"
                }
            }
            steps {                
                sh "echo 'prueba 3'"
                sh 'echo "Service user is $MAIL_CREDS"'
            }
        }
    }
}