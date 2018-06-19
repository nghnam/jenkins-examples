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
      image 'ubuntu:latest'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'cat /etc/os-release'
        sh 'ls'
        sh 'echo $DATASET'
      }
    }
  }
}