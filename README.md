# DEVOPS_DB_LIQUIBASE
liquibase status
liquibase update-sql --label-filter=1.111
liquibase update-sql
liquibase tag --tag=v1.0.0

–label-filter=$(Build.Id)
runOnChange is set to TRUE, Liquibase will re-apply the changeset.

<!-- liquibase changelog-sync-sql --label-filter=1.111 -->
