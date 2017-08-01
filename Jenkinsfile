pipeline {
  agent any
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/sathyamurthyp/powershell/', branch: 'master', poll: true)
      }
    }
    stage('Umzip') {
      steps {
        bat '1.bat'
      }
    }
  }
}