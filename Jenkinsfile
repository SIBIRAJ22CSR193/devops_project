pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/amudhavan13/devops_react_project.git'
            }
        }

        stage('Run Tests') {
            steps {
                sh './test.sh'
            }
        }
    }

    post {
        success {
            echo '🎉 CI Passed! Code is clean and buildable!'
        }
        failure {
            echo '❌ CI Failed. Check the logs for details.'
        }
    }
}
