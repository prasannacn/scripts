@echo off
net use s: \\\\bosch.com\\dfsrb\\DfsDE\\DIV\\CM\\PS\\Projekte_PSEP\\7620000280_Daimler_cTP\\95.Software\\14.Versions\\iMX

set PROJ=%3
set BUILD_NUMBER=%4
REM set BASE_VERSION=%3
set src=%1
set dest=%2

pscp -p -pw changeme cit5kor@10.47.97.20:/home/cit5kor/REPOWORKSPACE_JENKINS_PRE_BUILDS/%PROJ%/%BUILD_NUMBER%/%src% %dest%


REM pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/PTX_DIFF s:\%IMX_FOLDER%\%VARIANT%
REM pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/IPKG_DIFF s:\%IMX_FOLDER%\%VARIANT%
REM pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/BVT_REPORT s:\%IMX_FOLDER%\%VARIANT%
REM pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/BUILD_LOG s:\%IMX_FOLDER%\%VARIANT%
