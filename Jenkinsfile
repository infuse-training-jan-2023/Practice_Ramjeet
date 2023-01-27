pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'javac duplicateChar.java'
            }
        }
        stage('Run') {
            steps {
                sh 'java duplicateChar'
            }
        }
    }
}