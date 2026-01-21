pipeline {
  agent any

  stages {

    stage('Build Image') {
      steps {
        sh '''
        oc get bc cicd-demo || oc new-build --binary --name=cicd-demo
        oc start-build cicd-demo --from-dir=. --follow
        '''
      }
    }

    stage('Deploy') {
      steps {
        sh '''
        oc rollout restart deployment/cicd-demo || true
        oc apply -f deployment.yaml
        oc apply -f service.yaml
        oc apply -f route.yaml
        '''
      }
    }
  }
}
