FROM sphinxdoc/sphinx:4.1.2

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

RUN apt-get update && apt-get install git -y
ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
