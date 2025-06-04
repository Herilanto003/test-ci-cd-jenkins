pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Herilanto003/test-ci-cd-jenkins.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Installing dependencies...'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'cd test-ci-cd-jenkins && docker build -t ci-cd-node-app:latest .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulating deployment...'
                sh 'cd test-ci-cd-jenkins && docker run ci-cd-node-app'
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
