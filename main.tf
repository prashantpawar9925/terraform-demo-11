resource "aws_instance" "i1"{

 ami           = "ami-019715e0d74f695be" 
 instance_type = "t2.micro"
 
 root_block_device {
    volume_size = 8
	volume_type = "gp3"
	
	tags = {
    Name = "writer-demo-root-vol"
  }	
  }
  
  tags = {
    Name = "writer-demo-ec2-web"
  }
}
