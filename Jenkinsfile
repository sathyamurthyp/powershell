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
        parallel(
          "Unzip": {
            bat '1.bat'
            
          },
          "error": {
            bat '2.bat'
            
          }
        )
      }
    }
  }
}