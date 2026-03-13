pipeline {
    agent any

    environment {
        IMAGE_NAME = "tihong88/mern-todo-app"
    }

    stages {

        stage('Build') {
            steps {
                echo 'Build stage'
            }
        }

        stage('Containerise') {
            steps {
                sh 'docker build -t $IMAGE_NAME:latest .'
            }
        }

        stage('Push') {
            steps {
                sh 'docker push $IMAGE_NAME:latest'
            }
        }

    }
}
