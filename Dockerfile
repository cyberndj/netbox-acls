ARG NETBOX_VARIANT=v3.4

FROM netboxcommunity/netbox:${NETBOX_VARIANT}

RUN mkdir -pv /plugins/netbox-acls
COPY . /plugins/netbox-acls

RUN /opt/netbox/venv/bin/python3 /plugins/netbox-acls/setup.py develop
RUN cp -rf /plugins/netbox-acls/netbox_acls/ /opt/netbox/venv/lib/python3.10/site-packages/netbox_acls
