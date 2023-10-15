#!/bin/bash
function get_vpc {
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r 
get_cidr $1
}

get_cidr()  {
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].CidrBlock" -r
}
get_vpc $1 
