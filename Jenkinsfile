pipeline {
  agent {
    docker {
      image 'ubuntu'
    }

  }
  stages {
    stage('Test') {
      steps {
        sh 'ls; pwd; ip -4 a'
      }
    }
  }
}