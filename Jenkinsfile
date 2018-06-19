pipeline {
  parameters {
    string (
        defaultValue: 'mnist',
        description: '',
        name: 'DATASET'
    )
  }
  agent {
    docker {
      image 'python:latest'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'cat /etc/os-release'
        sh 'ls'
        sh 'pip3 install -r requirements.txt'
        sh 'echo $DATASET'
      }
    }
  }
}