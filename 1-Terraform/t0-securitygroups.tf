#Jenkins Security group
resource "aws_security_group" "jenkin" {
    name        = "jenkins"
    description = "Allow tls inbound traffic"

    ingress {
        description = "allow port 8080"
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "allow port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "allow all ip and ports"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        Name = "jenkins"
    }

}

# Security group for sonarqube
resource "aws_security_group" "sonarqube" {
    name        = "sonarqube"
    description = "Allow tls inbound traffic"

    ingress {
        description = "allow port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    
    egress {
        description = "allow all ip and ports"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        Name = "sonarqube"
    }

}

# Security group for Artifactory
resource "aws_security_group" "artifactory" {
    name        = "artifactory"
    description = "Allow tls inbound traffic"

    ingress {
        description = "allow port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    
    egress {
        description = "allow all ip and ports"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        Name = "artifactory"
    }

}