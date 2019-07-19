pipeline {
    agent { label 'master' }
    stages {
        stage('Build') {
            steps {
                sh 'mvnw -B -DskipTests clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvnw clean test'
            }

            post {
                    always {
                        junit 'target/surefire-reports/*.xml'
                    }
            }
        }

        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
            }
        }
    }
}