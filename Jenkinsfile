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
        sh 'ls; pwd; df -h; sleep 30'
        ws(dir: 'fsdfs') {
          sh 'pwd'
        }

      }
    }
  }
}