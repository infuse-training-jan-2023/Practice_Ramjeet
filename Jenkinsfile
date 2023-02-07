pipeline {
    agent {label 'slave'}

    stages {
        stage('set up') {
            steps {
                echo env.git_url
                //access git_url parameter
            }
        }
        stage('Run') {
            steps {
                bat 'ruby test-ex3.rb'
            }
        }
    }
}
