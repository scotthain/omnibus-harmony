pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -p omnibus-toolchain'
      }
    }
  }
}