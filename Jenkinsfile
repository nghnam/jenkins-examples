pipeline {
  agent {
    docker {
      image 'ubuntu'
      args '-v /data:/data'
    }

  }
  stages {
    stage('Test') {
      steps {
        sh 'ls; pwd; df -h'
        ws(dir: 'fsdfs') {
          sh 'pwd'
        }

      }
    }
  }
}