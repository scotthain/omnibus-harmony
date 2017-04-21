pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        node('wingdings') {
          sh '''. load-omnibus-toolchain.sh
cd omnibus-harmony
bundle install --without development
bundle exec omnibus build harmony -l debug'''
        }
      }
    }
  }
}
