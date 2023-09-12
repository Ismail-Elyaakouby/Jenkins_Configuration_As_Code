pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code repository
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/master']], 
                          doGenerateSubmoduleConfigurations: false, 
                          extensions: [], 
                          submoduleCfg: [], 
                          userRemoteConfigs: [[url: 'https://github.com/Ismail-Elyaakouby/aghouchaf02.git']]])
            }
        }
        stage('Build') {
            steps {
                // Use Maven for the build
                script {
                    def mvnHome = tool name: 'Maven-3.8.3', type: 'hudson.tasks.Maven$MavenInstallation'
                    if (isUnix()) {
                        sh "${mvnHome}/bin/mvn clean package"
                    } else {
                        bat "${mvnHome}\\bin\\mvn clean package"
                    }
                }
            }
        }
    }
    post {
        success {
            // Archive your build artifacts
            archiveArtifacts(allowEmptyArchive: true, artifacts: '**/target/*.jar')
        }
    }
}
