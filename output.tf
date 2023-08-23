output "aws_vpc" {
    value = aws_vpc.main.id
}

output "aws_vpc_dbinfo" {
    value = data.aws_vpc.default
}

output "aws_ami_faaaa" {
    value = data.aws_ami.hari.id
}

output "aws_data_regions" {
    value = data.aws_regions.current
}

output "aws_data_avaliablity_zones" {
    value = data.aws_availability_zones.available
}