pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                bat 'ruby ex3.rb'
            }
        }
        stage('test') {
            steps {
                bat 'ruby test-ex3.rb'
            }
        }
        stage('merge') {
            steps {
                bat 'git switch jenkins/ruby'
                bat 'git '
            
            }
        }
    }
}
