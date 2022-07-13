
## https://docs.microsoft.com/en-us/azure/container-registry/container-registry-auth-service-principal

az ad sp create-for-rbac --name spn-acr-demo --skip-assignment 

ACR_CLIENT_ID="769e72b2-e1c8-4944-8963-3c71c9b64a10"
ACR_CLIENT_SECRET="zi22woZX6w9~.AkzWYOoG_n-aO_oTo_Yt8"

az role assignment create --role "acrpush" --assignee $ACR_CLIENT_ID -g aks-rg-DEVELOPMENT
