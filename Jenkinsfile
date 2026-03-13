pipeline {
    agent {
        docker {
            image 'docker:24.0.7-cli'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

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
