-- Lock Database
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'Ivan.local (fd53:e72f:caf:abe1:1c32:c44a:cbbe:4d5a%bridge100)', LOCKGRANTED = GETDATE() WHERE ID = 1 AND LOCKED = 0
GO

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog/master.xml
-- Ran at: 23/8/24, 11:37
-- Against: sa@jdbc:sqlserver://localhost:1433;connectRetryInterval=10;connectRetryCount=1;maxResultBuffer=-1;sendTemporalDataTypesAsStringForBulkCopy=true;delayLoadingLobs=true;useFmtOnly=false;useBulkCopyForBatchInsert=false;cancelQueryTimeout=-1;sslProtocol=TLS;calcBigDecimalPrecision=false;useDefaultJaasConfig=false;jaasConfigurationName=SQLJDBCDriver;statementPoolingCacheSize=0;serverPreparedStatementDiscardThreshold=10;enablePrepareOnFirstPreparedStatementCall=false;fips=false;socketTimeout=0;authentication=NotSpecified;authenticationScheme=nativeAuthentication;xopenStates=false;datetimeParameterType=datetime2;sendTimeAsDatetime=true;replication=false;trustStoreType=JKS;trustServerCertificate=true;TransparentNetworkIPResolution=true;iPAddressPreference=IPv4First;serverNameAsACE=false;sendStringParametersAsUnicode=true;selectMethod=direct;responseBuffering=adaptive;queryTimeout=-1;packetSize=8000;multiSubnetFailover=false;loginTimeout=30;lockTimeout=-1;lastUpdateCount=true;useFlexibleCallableStatements=true;useDefaultGSSCredential=false;prepareMethod=prepexec;encrypt=true;disableStatementPooling=true;databaseName=dbLiquibase;columnEncryptionSetting=Disabled;applicationName=Microsoft JDBC Driver for SQL Server;applicationIntent=readwrite;
-- Liquibase version: 4.29.1
-- *********************************************************************

USE dbLiquibase;
GO

-- Changeset changelog/master.xml::1::your.name
CREATE TABLE test_table (test_id int NOT NULL, test_column int, CONSTRAINT PK_TEST_TABLE PRIMARY KEY (test_id));
GO

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('1', 'your.name', 'changelog/master.xml', GETDATE(), 1, '9:17d14650b22d67a4cec8954ac35d6a47', 'createTable tableName=test_table', '', 'EXECUTED', NULL, NULL, '4.29.1', '4434664074')
GO

-- Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1
GO

