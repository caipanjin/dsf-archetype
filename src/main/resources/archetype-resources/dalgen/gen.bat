@echo off

rem �������������д��ڴ�С
IF DEFINED modeCmdExecuted GOTO START
mode con cols=120 lines=3000
set modeCmdExecuted="true"

:START
rem set variable for ORACLE "no ocijdbc10 in java.library.path" --error
rem set NLS_LANG="SIMPLIFIED CHINESE_CHINA.ZHS16GBK"
set PATH=%ORACLE_HOME%;%ORACLE_HOME%\lib\win32;%PATH%
set TNS_ADMIN=%ORACLE_HOME%\network\admin\tnsnames.ora

echo ----------------------------------------------------------------------------
echo ������ʹ��: 
echo gen dal [table_sql_name] ,�������ݿ��������ļ����ɴ���,(��Ҫ��xml�����ļ�)
echo gen table [table_sql_name] �������ݿ������ɴ���,��������dalgen�������ļ�(����Ҫxml�����ļ�)
echo gen seq : ����oracle sequence SeqDAO���ɴ���

mvn groovy:execute -DgeneratorConfigFile=gen_config.xml -DexecuteTarget=%1 -DgenInputCmd=%2  --errors

