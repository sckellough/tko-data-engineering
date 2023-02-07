use role accountadmin;

-- create a service account for terraform following https://quickstarts.snowflake.com/guide/terraforming_snowflake/index.html?index=..%2F..index#2
create user terraform rsa_public_key='MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApRxV1pN/d68yUiNRJag+hFsGB7xUaj3Qeu7vvuJ2KD/yxSdcj03R1s00fK31tFyYcvxoBbmf+2WHlyrrkBif9a+1Jh2Tg+r8RBrmuIRSVKwZ801foK4NRZq6Eq49NP6dywnUea0OQWrXHCtex/fPL1EafdzXIA0P8b2XHvzqKTC8sVlqUtZQdHMnLMd4gZWOCKgjA04pGfBdWm0E7XigIex0DcaCDoJnPwnxruhBslVVO4gG04yA/rV+Y6DHxQGbM4yw+qOVkTyovL88rJTd5+ybxvi9r30/Qhyo3xvloxOlSqjK6u1DCGpMuPuRiqTvDaL/9SGH+oTCu3X58GWsRQIDAQAB'
default_role=public must_change_password=false;

grant role sysadmin to user terraform;
grant role securityadmin to user terraform;


-- need the following environmental variables to make this work
$ export SNOWFLAKE_USER="tf-snow"
$ export SNOWFLAKE_PRIVATE_KEY_PATH="~/.ssh/snowflake_tf_snow_key.p8"
$ export SNOWFLAKE_ACCOUNT="aza33043"
$ export SNOWFLAKE_REGION="aws_us_west_2"

SELECT current_account() as YOUR_ACCOUNT_LOCATOR, current_region() as YOUR_SNOWFLAKE_REGION_ID;

select current_account();

show databases;

create or replace database pythondb;


create or replace user skell;

