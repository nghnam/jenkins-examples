pipeline {
  agent {
    docker {
      image 'ubuntu'
    }

  }
  stages {
    stage('Test') {
      steps {
        sh 'ls; pwd; df -h'
      }
    }
  }
}