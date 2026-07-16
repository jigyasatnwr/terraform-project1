module "dev-app"{
    source = "./aws_infra_modules"
    my-env = "dev"
    instance_type = "t3.micro"
    ami_id = "ami-01a00762f46d584a1"
        instance_count = 1
}


module "stg-app"{
    source = "./aws_infra_modules"
    my-env = "stg"
    instance_type = "t3.small"
    ami_id = "ami-01a00762f46d584a1"
        instance_count = 1
}


module "prd-app"{
    source = "./aws_infra_modules"
    my-env = "prd"
    instance_type = "c7i-flex.large"
    ami_id = "ami-01a00762f46d584a1"
    instance_count = 3

}