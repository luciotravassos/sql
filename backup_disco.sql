BACKUP PARA DISCO BDSIGA - /u03/rman 


#!/bin/sh
# ------------------------------------------------------------------
#                      BACKUP ORACLE DATABASE FULL
# ------------------------------------------------------------------
source /home/oracle/.bash_profile
export ORACLE_SID=bdsigas1
rman target / msglog /u03/rman/BDSIGA1/backup_full.log << EOF
run {
sql "create pfile=''/u03/rman/BDSIGA1/initDB.rman'' from spfile";
sql 'alter system archive log current';
sql "alter session set nls_date_format=''dd.mm.yyyy hh24:mi:ss''";
allocate channel c01 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c02 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c03 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c04 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c05 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c06 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c07 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c08 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c09 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c10 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c11 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c12 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c13 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c14 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c15 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c16 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c17 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c18 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c19 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c20 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c21 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c22 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c23 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c24 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c25 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c26 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c27 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c28 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c29 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
allocate channel c30 type disk format '/u03/rman/BDSIGA1/DATA__%d_%T_%s_%p_FULL.rman' MAXPIECESIZE 1G;
BACKUP SPFILE FORMAT '/u03/rman/BDSIGA1/SP_%d_%T_%s_%p_FULL.rman';
BACKUP AS COMPRESSED BACKUPSET DATABASE FORMAT '/u03/rman/BDSIGA1/DATA_%d_%T_%s_%p_FULL.rman';
BACKUP AS COMPRESSED BACKUPSET ARCHIVELOG ALL FORMAT '/u03/rman/BDSIGA1/ARC_%d_%T_%s_%p_FULL.rman';
Backup CURRENT CONTROLFILE FORMAT '/u03/rman/BDSIGA1/CTL_%d_%T_%s_%p_FULL.rman';
}
EOF