pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    dockerfilePath = "D:\\Docker\\Dockerfile"
                    buildContext = "D:\\Docker"
                    imageName = "nithintlc/test1"
                    imageTag = "tagnamee"
                    bat "docker build -t ${imageName}:${imageTag} -f \"${dockerfilePath}\" \"${buildContext}\""
                }
            }
        }
        stage('List Docker Images') {
            steps {
                script {
                    bat "docker images"
                }
            }
        }
        stage('Log In to Docker Hub') {
            steps {
                script {
                    bat "docker login"
                }
            }
        }
        stage('Push the Image') {
            steps {
                script {
                    bat "docker push nithintlc/test1:tagnamee"
                }
            }
        }
    }
}
