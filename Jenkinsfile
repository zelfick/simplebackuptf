pipeline{
    agent any
    environment {
      PATH = "${PATH}:${getTerraformPath()}"
    }

    stages{
        stage('terraform init'){
            steps{
                sh "terraform-12 version"
            }
        }
    }
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    return tfHome
}