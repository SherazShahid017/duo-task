pipeline{
    agent any
    /*environment {
        loginDock = credentials('docker_login')
    }*/
        stages{
            ////////////////////////////////////////////////////
            stage('Download Docker') {
                steps {
                    sh 'sudo apt-get update'
                    sh 'curl https://get.docker.com | sudo bash'
                    sh 'docker --version'
                }
            }
            ///////////////////////////////////////////////////
            stage ('Download Docker-Compose') {
                steps {
                    sh 'sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
                    sh 'sudo chmod +x /usr/local/bin/docker-compose'
                    sh 'docker-compose --version'
                }
            }
            ////////////////////////////////////////////////////
            stage ('Deploy') {
                steps {
                    sh 'sudo docker-compose pull && sudo docker-compose up -d'
                }
            }
            ////////////////////////////////////////////////////
        }    
}
