#!/usr/bin/env bash
pipeline {
    agent { label 'master' }
    stages {
        stage('Deliver-1') {
            steps {
                echo '交付第一步'
            }
        }
    }
}