FROM odoo:14
# Copy entrypoint script and Odoo configuration file
USER root

RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    swig \
    libffi-dev \
    libxmlsec1-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libxslt1-dev \
    libxml2 \
    libxmlsec1 \
    python3-dev \
    python3-setuptools \
    python3-wheel \
    python3-pip \
    pkg-config \
    build-essential

COPY ./extra-addons /usr/lib/python3/dist-packages/odoo/extra-addons

WORKDIR /usr/lib/python3/dist-packages/odoo/extra-addons
RUN pip3 install --upgrade pip wheel setuptools \
    && pip install -r ./pip-requirements.txt

COPY ./config/odoo/odoo.conf /etc/odoo/

# CMD ["odoo-bin -c /etc/odoo/odoo.conf"]
