def Test()
{
    stage("test"){
        bat "echo \"ha ja\""
    }
}

pipeline{
    parameters{
        booleanParam(name:'Build_Windows', 
                    defaultValue: true,
                    description: 'Again build windows')
                booleanParam(name:'Test_Windows', 
                    defaultValue: true,
                    description: 'Again build windows')
    }
    agent any
    stages{
        stage('Build and test'){
            steps{
                script{
                    if(params.Build_Windows == true){
                        Test()
                    }
                }
            }
        }
    }
}