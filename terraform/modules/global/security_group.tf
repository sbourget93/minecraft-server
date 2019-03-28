resource "aws_security_group" "ssh-anywhere" {
  name = "ssh-anywhere"
  ingress {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "minecraft-anywhere" {
  name = "minecraft-anywhere"
  ingress {
    from_port = "25565"
    to_port = "25565"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "http-outbound" {
  name = "http-outbound"
  egress {
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "https-outbound" {
  name = "https-outbound"
  egress {
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}