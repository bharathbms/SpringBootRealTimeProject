pipeline {
    agent any
    tools {
            maven 'mymaven'
        }
    stages {
        stage('build') {
            steps {
                echo 'build+++++++++++++++++'
                sh 'mvn clean install'
            }
        }
        stage('test') {
            steps {
                echo 'test+++++++++++++++++++'
            }
        }
    }
    post {
            success {
                echo 'I will always say Hello again!'
            }
        }
}
