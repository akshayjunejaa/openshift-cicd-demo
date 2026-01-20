pipeline {
  agent any

  stages {

    stage('Build Image') {
      steps {
        sh '''
        oc new-build --binary --name=cicd-demo || true
        oc start-build cicd-demo --from-dir=. --follow
        '''
      }
    }

    stage('Deploy') {
      steps {
        sh '''
        oc apply -f deployment.yaml
        oc apply -f service.yaml
        oc apply -f route.yaml
        '''
      }
    }
  }
}
