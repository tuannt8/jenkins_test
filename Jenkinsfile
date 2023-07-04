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
        stage('Build'){
            steps{
                script{
                        if(params.Build_Windows == true)
                        {
                            Build()
                        }
                        else
                        {
                            echo "Skip build"
                        }
                        
                    }
                }
            }                
        

        stage('Test'){
            steps{
                script{
                    if(params.Test_Windows == true){
                        Test()
                    }
                    else
                    {
                        echo "Skip test"
                    }
                }
            } 
        }
    }                       
}