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
            when {
                expression { params.Choices == 'Dev' }
            }
            steps {
                echo "Choices: ${params.Choices}"
                echo 'Started Build++++++++++'
                script{
                    def file = load 'groovyfile.groovy'
                    file.build()
                }
            }
        }
        stage('StartApplication'){
            steps {
                sh "nohup java -jar target/JobAppFile.jar > app.log 2>&1 &"
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
           echo 'Build completed'
        }
        failure{
            echo 'Build Failure'
        }
    }
}
