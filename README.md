## Salesforce Metadata Backup

Script to backup metadata from Salesforce Orgs with DX cli. Using Metadata API to retrieve a .zip of XML files that represent metadata from the targeted org. 

You can retrieve up to 10,000 files or 400 MB (39 MB compressed) at one time.

___

### Run

Give execute permission to script:

```
chmod +x getLimits.sh
```

Is necessary authenticate first with:

```
sfdx force:auth:web:login -d -a prod
```

To validate the current connection:

```
sfdx force:org:list
```

Then execute:

```
./getRetrieve.sh
```

A new file will be create with the actual date.

**Reference**
* [mdapi:retrieve](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_mdapi.htm)
* [Authorize an Org Using the JWT-Based Flow](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_auth_jwt_flow.htm#sfdx_dev_auth_jwt_flow)
* [Create a Private Key and Self-Signed Digital Certificate](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_auth_key_and_cert.htm)
* [Get Started with Salesforce DX](https://trailhead.salesforce.com/en/content/learn/trails/sfdx_get_started)
