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
                pysh 'python3 --version'

            }
        }
    }
}
