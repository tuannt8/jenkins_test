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
        stage('Build')
        {
            steps
            {
                script
                {
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
    

        stage('Test')
        {
            steps
            {
                Invoke-RestMethod 'http://autotest2.phaseone.com/generic-webhook-trigger/invoke?token=SDK-TEST-CPP&imageSdkVer=5.0.0' -Method 'POST' | ConvertTo-Json
            }

        }

        
    }                       
}