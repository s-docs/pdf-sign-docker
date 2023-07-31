# PDF Cryptographic signature API

This is a simple docker project that will run a API that cryptograpically signs the PDF.

## Assumptions

The project assumes JDK17 as the run time environment.


## Installation

To pull the latest image use the following command:

```
docker pull anandsdocs/sdocs-pdfsignapi
```

### To run once you have pulled the image:

```
docker run -e PORT=8080 -p 8080:8080 anandsdocs/sdocs-pdfsignapi:latest
```

## Using the API

The API exposes two endpoints:

### 1. `/sign/ping`

This supports a `HTTP GET` and is there to make sure the API is up and working. It returns a simple `Hello the time is 7/31/23, 2:47 PM`

### 2. `/ssign/`

This is the API that signs the PDF and returns the signed PDF. This supports `HTTP POST`

#### Input

The API expects three parameters:

1. `publicCert` : This is the public certificate that is used to sign your PDF.
2. `privateKey` : This is the private key used to sign the PDF
3. `pdfFileBase64`: This is a base64 encoded string of your PDF file. 

Sample request:

```
{
    "privateKey":"-----BEGIN PRIVATE KEY-----....",
    "publicCert":"-----BEGIN CERTIFICATE----- ...",
    "pdfFileBase64":"..."
}

```

#### Output

The output is a binary PDF file that can then be saved or rendered accordingly.


