import logging
import os

import azure.functions as func
import json
import aiohttp

async def main(msg: func.QueueMessage) -> None:
    logging.info('Generate Code trigger function processed a queue item: %s',
                 msg.get_body().decode('utf-8'))

    genTask = msg.get_json()
    function = str(genTask["Task"]).lower()
    uri = f"https://dvcodegenapp.azurewebsites.net/api/{function}"
    try:
        async with aiohttp.ClientSession() as session:
            async with session.post(uri, json=genTask) as resp:
                logging.info(f"Status: {resp.status}")
                r = await resp.text()
                logging.info(f"{str(genTask)}")
                logging.info(f"{str(r)}")
    except Exception as ex:
        logging.error(f"Generate request error : {genTask}")
        logging.error(f"Generate request error : {str(ex)}")
        raise  # re-raise the exception

