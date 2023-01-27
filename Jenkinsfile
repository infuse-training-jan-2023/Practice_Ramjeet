pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat '''javac MyFirstJavaProgram.java
'''
            }
        }
        stage('Run') {
            steps {
                bat '''java MyFirstJavaProgram.java
'''
            }
        }
    }
}