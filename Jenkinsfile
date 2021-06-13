pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                
                // already using this so now removing from here
               // git 'https://github.com/kul-samples/sample-java-app.git'

                // Run Maven on a Unix agent.
                sh "mvn clean package "
            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    archiveArtifacts 'target/*.war'
                }
            }
        }
    }
}
