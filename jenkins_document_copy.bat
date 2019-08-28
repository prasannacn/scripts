@echo off
net use s: \\bosch.com\dfsrb\DfsDE\DIV\CM\PS\Projekte_PSEP\7620000280_Daimler_cTP\95.Software\14.Versions\iMX

pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/UNIT_TEST s:\%IMX_FOLDER%\%VARIANT%
pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/PTX_DIFF s:\%IMX_FOLDER%\%VARIANT%
pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/IPKG_DIFF s:\%IMX_FOLDER%\%VARIANT%
pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/BVT_REPORT s:\%IMX_FOLDER%\%VARIANT%
pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/%DATE%_%CURRENT_VERSION%/%VARIANT%/BUILD_LOG s:\%IMX_FOLDER%\%VARIANT%

if %VARIANT% == FB_RELEASE ( echo copying oss_tarballs file to IMX path
pscp -r -p -pw changeme nip6kor@10.47.97.22:/home/nip6kor/INTJ/%TOPAS_PRODUCTS_BRANCH%/%CURRENT_VERSION%/DAIMLER_CTP_FB_RELEASE/bsp/oss_tarballs s:\%IMX_FOLDER%\%VARIANT% )
exit 0