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
                withPythonEnv('python3'){
                    sh 'pip install pytest requests'
                    sh 'pytest main.py'
                }

            }
        }
    }
}
