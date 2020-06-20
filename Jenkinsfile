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
                MAIL_SERVER = 'smtp.mailtrap.io'
                MAIL_PORT = '587'
                MAIL_USE_TLS     = '1'
                MAIL_CREDS = credentials("mail-user-and-password-secret")
            }
            steps {
                createFlaskEnv()
                sh 'docker build . -t gomezendy/microblog:latest'
                sh 'docker run --rm -d -p 5000:5000 --name flask-app gomezendy/microblog:latest'
            }
        }
    }
}

def createFlaskEnv(){
    sh 'echo FLASK_APP=$FLASK_APP > .flaskenv'
    sh 'echo FLASK_DEBUG=$FLASK_DEBUG >> .flaskenv'
    sh 'echo MAIL_SERVER=$MAIL_SERVER >> .flaskenv'
    sh 'echo MAIL_PORT=$MAIL_PORT >> .flaskenv'
    sh 'echo MAIL_USE_TLS=$MAIL_USE_TLS >> .flaskenv'
    sh 'echo MAIL_USERNAME=$MAIL_CREDS_USR >> .flaskenv'
    sh 'echo MAIL_PASSWORD=$MAIL_CREDS_PSW >> .flaskenv'
}