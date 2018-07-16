# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Models

### User
-email:unique":string 


### Company
-name: string
-domain: string

### Document
-company: string
-name: string
-content: text

### Permission
-company : references
-user: references
-can_writer: boolean