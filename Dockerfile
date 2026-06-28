FROM frappe/erpnext:develop

USER frappe
WORKDIR /home/frappe/frappe-bench

COPY --chown=frappe:frappe lending /home/frappe/frappe-bench/apps/lending
RUN ls -1 apps > sites/apps.txt && bench setup requirements
