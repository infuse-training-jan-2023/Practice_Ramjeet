pipeline {
    agent any

    stages {
        stage('set up') {
            steps {
                echo env.git_url
                
            }
        }
        stage('Run') {
            steps {
                bat 'ruby test-ex3.rb'
            }
        }
    }
}
