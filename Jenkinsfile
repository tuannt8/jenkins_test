def Test()
{
    stage("test"){
        bat "echo \"ha ja\""
    }
}

def Build()
{
    stage("Build"){
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
        stage('Build_and_test'){
            stages{
                stage('Build'){
                    steps{
                        script{
                            if(params.Build_Windows == true){
                                Build()
                            }
                        }
                    }                
                }
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