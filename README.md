# 🛡️ Oracle Database Administration Toolkit

A comprehensive collection of **Shell (Bash)** and **SQL/PL-SQL** scripts designed to automate and streamline daily tasks for Oracle DBAs, focusing on **Backup, Restore, and Disaster Recovery** operations.

> **⚠️ Disclaimer:** These scripts are intended for educational and administrative purposes. Always validate and test in a `Sandbox` or `UAT` environment before executing on production databases.

---

## 🚀 Key Features

* **Backup & Recovery (RMAN):** Automated shell scripts for Full, Incremental (Level 0/1), and Archive Log backups.
* **Data Pump Utilities:** Wrappers for `expdp` and `impdp` to simplify schema and table-level migrations.
* **Database Health Checks:** SQL scripts to monitor **SGA/PGA** usage, **Wait Events**, and **Long-Running Queries**.
* **Storage Management:** Monitoring **Tablespace** growth, data file auto-extend, and ASM disk group status.
* **User & Security Audit:** Scripts for managing grants, roles, and auditing user sessions.

## 🛠 Tech Stack

* **Oracle Database:** Compatible with 11g, 12c, 19c, and 21c (Multitenant & Architecture).
* **Shell Scripting:** Bash scripts with environment variable handling (`ORACLE_SID`, `ORACLE_HOME`).
* **SQL & PL/SQL:** Optimized queries for `V$`, `GV$`, and `DBA_` performance views.

## 📂 Project Structure

```text
├── rman/
│   ├── backup_full_rman.sh    # Full database backup script
│   ├── delete_obsolete.rcv    # RMAN maintenance script
│   └── restore_pitr.sh        # Point-in-Time Recovery automation
├── datapump/
│   ├── export_schema.sh       # expdp wrapper for daily logical backups
│   └── import_schema.sh       # impdp automation
└── sql_scripts/
    ├── check_tablespaces.sql  # Tablespace usage report
    ├── active_sessions.sql    # Monitor current database locks/sessions
    └── find_top_sql.sql       # Identify high-resource consuming SQLs
