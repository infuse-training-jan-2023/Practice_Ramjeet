pipeline {
    agent {label 'slave'}

    stages {
        stage('run') {
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
                bat 'git status'
                bat 'git merge origin/jenkins/ruby-1'
            
            }
        }
    }
}
