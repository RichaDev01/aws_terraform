variable "bucket_list"{
    type = list(string)
    default = [ "123testtt34","34teeest56","56tessst78" ]
}

variable "bucket_map"{
    type = map(string)
    default = {
        amidnw = "amid_nw_123"
        ammid = "amid_nw_475"
        ammiid = "amid_nw_503"
    }
}
