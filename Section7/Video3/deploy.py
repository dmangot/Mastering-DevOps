"""!deploy <app> will deploy that app to production"""

import re
import hashlib

def deploy(app):
    encoded_app = app.encode()
    app_hash = hashlib.md5(encoded_app)

    with open('/Users/dave/work/hostlist', 'r') as content_file:
       content = content_file.read()
    # sendToGraphite(deploys.production,1)
    # scp something to AWS

    return "deploying app  `{}` with hash `{}` to `production` ip `{}`".format(app,
            app_hash.hexdigest(), content.rstrip())



def on_message(msg, server):
    text = msg.get("text", "")
    match = re.findall(r"!(?:deploy) (.*)", text)
    if not match:
        return

    return deploy(match[0])
