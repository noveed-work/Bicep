resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'storgaeaccounttoy'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'HOT'
  }
}

resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: 'launchtoyplanstarter'
  location: 'eastus'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'launchtoyapp1'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
