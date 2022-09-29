terraform {
  required_providers {
    yandex = {
        source = "yandex-cloud/yandex"
    }
  }
}
provider "yandex" {
    token = var.token
    cloud_id = var.cloud_id
    folder_id = var.folder_id
    zone = "ru-central1-a"
}

resource "yandex_iam_service_account" "sa" {
    folder_id = var.folder_id
    name = "yandexsa"
  
}
 resource "yandex_resourcemanager_folder_iam_member" "sa-editor" {
    folder_id = var.folder_id
    role = "storage.editor"
    member = "serviceAccount: ${yandex_iam_service_account.sa.id}"
   
 }
 resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
    service_account_id = yandex_iam_service_account.sa.id
    description =  "static access key for object  storage"
 }