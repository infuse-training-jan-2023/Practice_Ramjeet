pipeline {
    agent any

    stages {
        stage('set up') {
            steps {
                echo '${params.git_url}'
                
            }
        }
        stage('Run') {
            steps {
                bat 'ruby test-ex3.rb'
            }
        }
    }
}
