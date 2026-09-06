param location string = resourceGroup().location

resourc storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'stcicdlab${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_GRS'
  }
  kind: 'StorageV2'
  tags: {
    Environment: 'Lab'
    Owner: 'Idris'
  }
}
