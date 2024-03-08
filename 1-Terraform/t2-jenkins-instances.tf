resource "aws_instance" "jenkins" {
  ami           = data.aws_ami.latest_amazon23_box.id
  instance_type = "t2.medium"
  vpc_security_group_ids = [aws_security_group.jenkin.id]
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
  
  tags = {
    Name = "jenkins"
  }
}