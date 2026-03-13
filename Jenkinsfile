pipeline {
    agent any

    environment {
        IMAGE_NAME = "tihong88/mern-todo-app"
    }

    stages {

        stage('Build') {
            steps {
                sh 'docker run --rm -v $PWD:/app -w /app/TODO/todo_backend node:22-alpine npm install'
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
