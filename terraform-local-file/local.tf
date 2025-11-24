resource "local_file" "pet" {
    filename = "tets.txt"
    content = "We love pets!"
    file_permission = "0700"
}