pipeline{
    agent any
    environment {
      PATH = "${PATH}:${getTerraformPath()}"
    }

    stages{
        stage('terraform init'){
            steps{
                sh "echo $PATH|terraform init"
            }
        }
    }
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    return tfHome
}