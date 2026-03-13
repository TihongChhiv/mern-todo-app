pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Build stage'
            }
        }

        stage('Containerise') {
            steps {
                sh 'docker build -t tihong88/mern-todo-app:latest .'
            }
        }

        stage('Push') {
            steps {
                sh 'docker push tihong88/mern-todo-app:latest'
            }
        }

    }
}
