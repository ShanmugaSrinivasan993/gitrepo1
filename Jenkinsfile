pipeline{
    agent any
    environment{
        PATH = "/usr/share/maven/bin:$PATH"
    }
    stages{
        stage("Git checkout"){
            steps{
                script{
                    echo "git checkout done by SCM"
                }
            }
        }
        stage("Maven Build"){
            steps{
                script{
                    sh "mvn clean package"
                }
            }
        }
    }
}
