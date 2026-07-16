variable "my-env"{
    description = " this is the enviroment for infra" 
    type = string
    }

variable "ami_id"{
    description = "this is the ami id for EC2"
    type= string
}

variable "instance_type"{
    description = "this is the type of instance for ec2"
    type = string
}

variable "instance_count"{
    description = "this is the count of instance"
    type = number
}