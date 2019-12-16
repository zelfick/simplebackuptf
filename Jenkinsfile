pipeline{
    agent any
    environment {
      PATH = "${PATH}:${getTerraformPath()}"
    }

    stages{
        stage('terraform init'){
            steps{
                sh "terraform version"
            }
        }
    }
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    return tfHome
}