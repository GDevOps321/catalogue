 pipeline
 {
    agent
    {
      label 'NODEJS'
     }
    stages {
       stage('Download dependencies')
       {
         steps {
            sh '''
               npm install
            '''
         }
        }

       stage('prepare artifact')
       {
            steps
           {
              sh '''

                 zip -r catalogue.zip node_module server.js

              '''
           }
       }
           stage('upload artifacts to nexus')
           {
              steps
              {
                 sh '''
                    curl -f -v -u admin:admin --upload-file catalogue.zip http://172.31.20.130:8081/repository/catalogue/catalogue.zip
                 '''
              }
           }


    }
 }