FROM frappe/erpnext:develop

USER frappe
WORKDIR /home/frappe/frappe-bench

COPY --chown=frappe:frappe lending /home/frappe/frappe-bench/apps/lending
RUN ./env/bin/pip install -e ./apps/lending
