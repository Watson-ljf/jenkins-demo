pipeline {
    agent { label 'master' }
    stages {
        stage('Build') {
            steps {
                sh 'mvnw -B -DskipTests clean package'
            }
        }
    }
}