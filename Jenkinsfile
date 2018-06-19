pipeline {
    agent none
    parameters {
        string (
            defaultValue: 'mnist',
            description: '',
            name: 'model'
        )
        string (

        )
    }
    stages {
        stage('Get dataset') {
            agent {
                docker {
                    image 'system/tool:latest'
                    args '-v /data:/data'
                }
            }
            steps {
                sh 'ls && bash download.sh'
            }
        }

        stage('Evaluate') {
            agent {
                docker {
                    image 'cinnamon/nvidia-gpu:8.0-cudnn6-runtime'
                    args '--runtime=nvidia -v /data:/tmp/tensorflow/mnist/input_data -v /report:/report'
                    alwaysPull false
                }
            }
            steps {
                sh 'python3 mnist_softmax.py'
            }
        }

        stage('Report') {
            agent {
                docker {
                    image 'system/tool:latest'
                    args '-v /data:/data -v /report:/report'
                }
            }
            steps {
                sh 'cat /report/mnist_report.txt'
            }
        }
    }
}