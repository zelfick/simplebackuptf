pipeline{
    agent any
    environment {
      PATH = "${PATH}:${getTerraformPath()}"
    }

    stages{
        stage('terraform init'){
            steps{
                sh "terraform init"
            }
        }
    }
}
def getTerraformPath(){
    def tfHome = tool name: '', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    return tfHome
}