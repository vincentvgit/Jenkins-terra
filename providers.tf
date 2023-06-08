terraform {

   required_version = ">=0.12"

   required_providers {
     azurerm = {
       source = "hashicorp/azurerm"
       version = "~>2.0"
     }
   }
 }

 provider "azurerm" {
   features {}
 }

 resource "azurerm_resource_group" "test" {
   name     = "vincent-TP-jenkins01"
   location = "westeurope"
 }
provider "azurerm" {
   subscription_id = a2e466aa-4f86-4545-b5b8-97da7c8febf3
   client_id = 64843f68-7d94-4762-9d90-91eb3d6fcc68
   client_secret = 18Z8Q~~4FBbVrjdL9_sYBeqTk.UnZyi7zCpdTdpR
   tenant_id = 7349d3b2-951f-41be-877e-d8ccd9f3e73c
   skip_provider_registration = true
   features {}
}
