import logging as log
import os
import time
import json
import requests
from datetime import datetime
import argparse

def SendGenerateRequests(_request):
    uri = "https://dvcodegenapp.azurewebsites.net/api/generationrequest"
    log.info("Sending generation request  {}".format(_request))
    try:
        r = requests.post(uri, json=_request)
        log.info("{0}".format(str(r.text)))
    except Exception as ex:
        log.error("Error at {}".format(datetime.now()))
        log.error("Generate request error : {}".format(_request))
        print(ex)
        raise  # re-raise the exception

def LoadGenRequests(_requestsFile):
    with _requestsFile:
        return json.load(_requestsFile)

def initLogging():
    log.basicConfig(level=log.INFO,
                    format="[%(levelname)s] %(funcName)s:: %(message)s",
                    filename=os.path.join(os.getcwd(), "dvgenerate.log")
                    )

def main():
    #Script starts here
    version = "1.0"
    initLogging()
    log.info("Run started at {}".format(datetime.now()))
    argsparser = argparse.ArgumentParser(prog="dvgenerate")
    argsparser.add_argument("-t", "--tasks", dest="tasks", default="GenTasks.json", type=argparse.FileType(), help="This is the file listing the code generation tasks to be performed.")
    args = argsparser.parse_args()

    genRequests = LoadGenRequests(args.tasks)
    
    # print(genRequests)
    SendGenerateRequests(json.dumps(genRequests))

    log.info("Run completed at {}".format(datetime.now()))

if __name__ == "__main__":
    main()
