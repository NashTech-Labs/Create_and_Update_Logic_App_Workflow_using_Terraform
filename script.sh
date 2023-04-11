cd Create_and_Update_Logic_App_Workflow_using_Terraform/module
echo "----------Terraform Initialize-----------"
terraform init 
echo "----------Terraform Plan-----------"
terraform plan
echo "----------Terraform Apply-----------"
terraform apply -auto-approve
echo "----------Creating Logic app workflow-----------"
az logic workflow create --resource-group "tech-rg" --location "eastus" --name "tech-logicapp" --definition "testDefinition.json"
echo "----------Successfully Created Logic app workflow-----------"
