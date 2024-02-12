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
                    script{
                        def result = sh(script: 'pytest main.py', returnStatus: true)
                        if(result != 0){
                            error('Tests failed')
                        }
                    }
                }


            }
        }
        stage('Build'){
            steps{
                echo 'Building the app'
                sh 'docker build -t test_app .'
            }
        }
    }
}
