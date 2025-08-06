pipeline {
    agent any

    stages {
        stage('Clonar Repositorio') {
            steps {
                git 'https://github.com/OrlandoOlivo03/flask-jenkins-ci.git'
            }
        }

        stage('Construir imagen Docker') {
            steps {
                script {
                    docker.build("flask-app")
                }
            }
        }

        stage('Desplegar contenedor') {
            steps {
                script {
                    sh "docker run -d -p 8000:8000 --name flask-app flask-app"
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finalizado.'
        }
    }
}