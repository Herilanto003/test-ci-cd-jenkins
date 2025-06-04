pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/toncompte/ci-cd-node-app.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t ci-cd-node-app:latest .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulating deployment...'
                sh 'echo Deploy done'
            }
        }
    }

    post {
        success {
            echo '🎉 Pipeline succeeded!'
        }
        failure {
            echo '❌ Pipeline failed!'
        }
    }
}
