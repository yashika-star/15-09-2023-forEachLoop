resource "local_file" "assignment1" {

  filename = "info.txt"
  file_permission = "0777"


  content  = <<-EOF

#  hello

    First name: ${var.FNM}

    Last name: ${var.LNM}
    subject: ${var.subject}
  

  EOF

}

output "fileContent" {
  value = local_file.assignment1.content
}