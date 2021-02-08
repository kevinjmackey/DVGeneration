import logging as log

import json
import aiohttp
import azure.functions as func

async def main(req: func.HttpRequest,
     msg: func.Out[func.QueueMessage]) -> func.HttpResponse:
    log.info(f'Generation Request function received a request: {req.get_json()}')

    try:
        req_body = req.get_json()
    except ValueError:
        req_body = None

    if req_body!=None:
        uri = "https://dvcodegenapp.azurewebsites.net/api/getmaxversion"
        try:
            async with aiohttp.ClientSession() as session:
                async with session.get(uri) as resp:
                    r = await resp.text()
                    log.info("{0}".format(str(r)))
                    resp = json.loads(str(r))
        except Exception as ex:
            log.error(f"Failed to get Max Version: {ex}")
            resp = json.loads('{"version": -1}')

        highestVersion = int(resp["version"])
        generationRequests = json.loads(str(req_body))
        for genRequest in generationRequests:
            if genRequest["Version"] == -1:
                genRequest["Version"] = str(highestVersion)
        msg.set(json.dumps(generationRequests))
        return func.HttpResponse("Request queued", status_code=200)
    else:
        return func.HttpResponse(
             "Please pass a generation request in the request body",
             status_code=400
        )
