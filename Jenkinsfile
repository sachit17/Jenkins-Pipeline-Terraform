node{
          stage ('checkout'){
                 checkout scm
                  }				  
          stage('terraform started'){
              steps {
                  sh 'echo "started...!"  '
              }
           }         
          stage('terraform init') {
              steps{ 
                  sh 'sudo terraform init ./jenkins'
                   }
              }
          stage('terraform plan') {
                  steps {
                       sh 'ls ./jenkins; sudo terraform plan ./jenkins' 
                        }
                }         
          stage('terraform ended') {
                          steps{
                                sh 'echo "Ended..!"' 
                             }
                      }
}
