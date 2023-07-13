inpipeline{
    agent any
    tools{
        maven "maven3"
    }
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
                    sh "mv target/*.war target/myweb.war"
                    sh "cp target/*.war /home/jenkins/copydir/"
                    // sh "cp ./copydir/*.war tomcat_ct:/usr/local/tomcat/webapps"
                }
            }
        }
        // stage("Deploy to Tomcat"){
        //     steps{
        //         script{
        //             scp target/myweb.war /usr/local/tomcat/webapps/
        //             /usr/local/tomcat/bin/shutdown.sh
        //             /usr/local/tomcat/bin/startup.sh
                        
        //         }
        //     }
        // }
    }
}
