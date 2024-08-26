# DEVOPS_DB_LIQUIBASE
liquibase changelog-sync
liquibase status
liquibase update-sql
liquibase tag --tag=v1.0.0

–label-filter=$(Build.Id)
runOnChange is set to TRUE, Liquibase will re-apply the changeset.

<!-- liquibase changelog-sync-sql --label-filter=1.111 -->


liquibase status

<!-- El comando changelog-sync marca todos los cambios no desplegados en su registro de cambios como ejecutados en su base de datos. -->
liquibase changelog-sync

liquibase changelog-sync-sql --label-filter=1.111



<!-- liquibase update-sql --label-filter=1.111 -->
liquibase update
liquibase tag --tag=v1.0.0

