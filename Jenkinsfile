pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'build+++++++++++++++++'
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
