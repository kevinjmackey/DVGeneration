import os
import sys
import logging as log
import json
from datetime import datetime
import 

from azure.storage.blob import BlockBlobService, PageBlobService, AppendBlobService
from azure.storage.blob.models import BlobBlock, ContainerPermissions, ContentSettings

def initLogging():
    log.basicConfig(level=log.INFO,
                    format="[%(levelname)s] %(funcName)s:: %(message)s",
                    filename=os.path.join(os.getcwd(), "dvgenerate.log")
                    )

def main():
    #Script starts here
    initLogging()
    log.info("Run started at {}".format(datetime.now()))
    my_account_name = "dvcodegen"
    my_account_key = "jdr/73n9wUcvnR607CccvPDikC36Pt5XKq3z3MVc12inFUBCS6Kj6e0+Ps96ZZf6xoJGsDRsk+4W88beQoWsJA=="
    # Create the BlockBlockService that is used to call the Blob service for the storage account.
    block_blob_service = BlockBlobService(account_name = my_account_name, account_key = my_account_key) 
    
if __name__ == "__main__":
    main()
