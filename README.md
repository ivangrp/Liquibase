# DEVOPS_DB_LIQUIBASE
liquibase status
liquibase update-sql
liquibase tag --tag=v1.0.0
liquibase update

–label-filter=INITIAL_SYNC,
runOnChange is set to TRUE, Liquibase will re-apply the changeset.