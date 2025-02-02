#  Copyright 2019 Aviatrix Systems, Inc.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

variable "enabled" {
  type = bool
  default = true
}

variable "license_model" {
}

variable "product_version" {
}

# Aviatrix Controller Marketplace listing IDs

variable "mp_listings" {
  type = map(string)

  default = {
    "PAID" = "ocid1.appcataloglisting.oc1..aaaaaaaawdptz5o42tuhg62defjimphzuck4fbrz4cilez2mle3bcs5t22wa"
    "BYOL" = "ocid1.appcataloglisting.oc1..aaaaaaaavalzcaxbs4hwta4uefnkdh7fjgd3uuw7lwlk6pn2uvzglrn3zt2a"
  }
}

#Product version <-> Marketplace Package Version Reference

variable "mp_paid_versions" {
  type = map(string)

  default = {
    "5.0.1" = "5.0.1"
  }
}

variable "mp_byol_versions" {
  type = map(string)

  default = {
    "5.0.1" = "5.0.1"
  }
}

# Package Version <-> Global Image OCID

variable "mp_paid_listing_resource_id" {
  type = map(string)

  default = {
    "5.0.1" = "ocid1.image.oc1..aaaaaaaa3zkysxdvsyb76plwj4tw54iiibozlfq3quwgiveeaqdscwmtwgoa"
  }
}

variable "mp_byol_listing_resource_id" {
  type = map(string)

  default = {
    "5.0.1" = "ocid1.image.oc1..aaaaaaaaltulqugc5ygggevy3ig7mv2io75azdareylypx23ezhvonqgrcrq"
  }
}

