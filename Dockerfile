FROM frappe/erpnext:develop

USER frappe
WORKDIR /home/frappe/frappe-bench

RUN bench get-app --branch develop https://github.com/SalesflowOne/capitalflow
