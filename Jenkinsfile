pipeline{
    agent any
    stages{
        stage('Checkout'){
            steps{
                echo 'Checking out the code'
                git branch: 'main', url: 'https://github.com/lukegude/test_repo.git'
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
