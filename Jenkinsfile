pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        bat(script: '1.bat', returnStatus: true)
      }
    }
  }
}