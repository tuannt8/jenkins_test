def Test()
{
    stage("test"){
        bat "echo \"Test test test test test test\""
    }
}

def Build()
{
    stage("Build"){
        bat "echo \"Build build build\""
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
        stage('Build_and_test'){
            stages{
                if(params.Build_Windows == true)
                {
                    stage('Build'){
                        steps{
                            script{
                                if(params.Build_Windows == true){
                                    Build()
                                }
                            }
                        }                
                    }                    
                }
                if(params.Test_Windows == step([: 'GetTestResults']){
                    stage('Test'){
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

        }
    }
}