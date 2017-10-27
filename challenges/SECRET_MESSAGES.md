# SECRET MESSAGES

In this exercise, you will implement the RSA Encryption using the libraries available from Ruby.

## References

* [Ruby Cryptography Fundamentals](https://www.sitepoint.com/exploring-cryptography-fundamentals-in-ruby/)
* [OpenSSL](http://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSSL.html)
* [OpenSSL Cipher](http://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSSL/Cipher.html)
* [RSA Algorithm](https://www.di-mgt.com.au/rsa_alg.html)
* [OpenSSL RSA](https://ruby-doc.org/stdlib-2.4.0/libdoc/openssl/rdoc/OpenSSL/PKey/RSA.html)
* [Ruby Hashing Data](https://richonrails.com/articles/hashing-data-in-ruby)
* [Digest SHA1](https://ruby-doc.org/stdlib-2.4.0/libdoc/digest/rdoc/Digest/SHA1.html)


# Symmetric Cipher

## Setup

```
mkdir -p ~/workspace/ruby/challenges && cd $_
touch ruby_aes.rb
```

## Instructions

1. Write a encrypt and decrypt method using the `openssl` Ruby library. Use AES 256 as your symmetric cipher.

# Asymmetric Cipher

## Setup

```
mkdir -p ~/workspace/ruby/challenges/ruby_rsa && cd $_
touch user.rb
touch vendor.rb
touch crypt.rb
```

## Instructions

1. Your `crypt.rb` is responsible for generating your RSA public and private keys and writing them to files. This happens first.
2. Your `user.rb` takes a command line argument for the value to be encrypted.
3. Use the generated RSA public key to encrypt and write the encrypted value to a file. This file is a shared file that `user.rb` will write to and `vendor.rb` will read from.
4. The `vendor.rb` will read the encrypted data from the file, use the RSA private key to decrypt the data and and give that as the output.

# Hashing

## Setup

```
mkdir -p ~/workspace/ruby/challenges && cd $_
touch ruby_sha.rb
```

## Instructions

1. Write a method that takes one value as an argument. This value should be hashed using SHA1.
2. If the array/hash does not contain the hashed value, add it. Otherwise, let the user know that it's a duplicate.

## Bonus

1. Write tests for all three exercises!!!
