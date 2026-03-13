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
                sh 'sudo docker build -t tihong88/mern-todo-app:latest .'
            }
        }

        stage('Push') {
            steps {
                sh 'sudo docker push tihong88/mern-todo-app:latest'
            }
        }

    }
}
