pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        powershell(script: 'step1.ps1"', returnStatus: true)
      }
    }
  }
}