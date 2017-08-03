pipeline {
  agent any
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/sathyamurthyp/powershell.git', branch: 'master', poll: true)
      }
    }
    stage('Unzip') {
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