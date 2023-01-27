pipeline {
    agent any

    stages {
        stage('set up') {
            steps {
                echo ${params.git_ul}
                
            }
        }
        stage('Run') {
            steps {
                bat 'ruby test-ex3.rb'
            }
        }
    }
}
