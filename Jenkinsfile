pipeline {
    parameters {
        string (
            defaultValue: 'mnist',
            description: '',
            name: 'DATASET'
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
                    args '--runtime=nvidia -v /data:/data'
                    alwaysPull false
                }
            }
            steps {
                sh 'python3 mnist_softmax.py'
            }
        }
    }
}