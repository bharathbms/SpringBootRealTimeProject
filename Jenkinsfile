pipeline {
    agent any
    tools {
            maven 'mymaven'
    }
    parameters {
            choice(name: 'Choices', choices: ['Dev', 'PrePod', 'Master'])
    }
    stages {
        stage('build') {
            steps {
                echo "Choices: ${params.Choices}"
                echo 'build+++++++++++++++++'
                script {
                    if (fileExists('target')) {
                       echo 'Maven build already exists, skipping mvn clean install'
                    }
                    else {
                       sh 'mvn clean install'
                    }
                }
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
