pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                echo 'Building the app'
            }
        }
        stage('Test'){
            steps{
                echo 'Testing the app'
                script{
                    def result = sh(script: 'python main.py', returnStdout: true).trim()
                    if(result.contains('200')){
                        echo 'Test passed'
                    }else{
                        error 'Test failed'
                    }
                }
            }
        }
    }
}
