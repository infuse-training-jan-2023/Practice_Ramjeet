pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat '''javac duplicateChar.java
'''
            }
        }
        stage('Run') {
            steps {
                bat '''java duplicateChar.java
'''
            }
        }
    }
}