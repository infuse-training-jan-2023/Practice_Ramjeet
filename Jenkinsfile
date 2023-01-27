pipeline {
    agent any

    stages {
        stage('set up') {
            steps {
                sh 'echo ${params.git_ul}'
                
            }
        }
        stage('Run') {
            steps {
                bat 'ruby test-ex3.rb'
            }
        }
    }
}
