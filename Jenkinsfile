pipeline {
  agent {
    node {
      label 'windows'
    }
    
  }
  stages {
    stage('build') {
      steps {
        tool(name: 'ruby', type: 'builder')
      }
    }
  }
}