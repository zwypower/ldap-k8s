首次clone
cd /home/scm/zhaowenyong/backup/
git clone "ssh://scm@10.1.2.123:29418/All-Projects"
git clone "ssh://scm@10.1.2.123:29418/All-Users"
git clone "ssh://scm@10.1.2.123:29418/MCU_DV"  
git clone "ssh://scm@10.1.2.123:29418/TN8540/Algorithm"
git clone "ssh://scm@10.1.2.123:29418/TN8540/MCU"
git clone "ssh://scm@10.1.2.123:29418/TN8540/Middleware"
git clone "ssh://scm@10.1.2.123:29418/TN8540/integration"
git clone "ssh://scm@10.1.2.123:29418/TN8540/xdc-sa8540p-basic.service-platform"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/local_manifest"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/manifests"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/aop"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/boot"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/cdsp"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/common"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/cpucp"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/smss"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/spss"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/tz"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/oem/tz_apps"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/qnx/apps/qnx_ap"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/toolchain/prebuilt_QOS220"
git clone "ssh://scm@10.1.2.123:29418/TN_8540Platform/utils/cmpl_scripts"
git clone "ssh://scm@10.1.2.123:29418/TN_8560Platform_MCU_ASample"
git clone "ssh://scm@10.1.2.123:29418/VW_Chasis"
git clone "ssh://scm@10.1.2.123:29418/VW_POC/MCU"
git clone "ssh://scm@10.1.2.123:29418/VW_POC/Middleware"
git clone "ssh://scm@10.1.2.123:29418/VW_POC/integration"
git clone "ssh://scm@10.1.2.123:29418/VW_POC/xdc-sa8540p-basic.service-vw.poc"
git clone "ssh://scm@10.1.2.123:29418/dockerfile"
git clone "ssh://scm@10.1.2.123:29418/git-repo"
git clone "ssh://scm@10.1.2.123:29418/git-repo2"
git clone "ssh://scm@10.1.2.123:29418/pkg"
git clone "ssh://scm@10.1.2.123:29418/qualcomm/sa8540p-qx-1-0_amss_standard_oem"
git clone "ssh://scm@10.1.2.123:29418/qualcomm/sa8540p-qx-1-0_hlos_dev_qnx"
git clone "ssh://scm@10.1.2.123:29418/scmtools"
git clone "ssh://scm@10.1.2.123:29418/test"


后续pull
cd /home/scm/zhaowenyong/backup/MCU_DV && /usr/bin/git pull

cron定时运行
10 * * * * /bin/bash -x /home/wangshibo/gerrit-bak.sh > /dev/null 2>&1


scp到NAS
/usr/bin/rsync -e "ssh -p22" -avpgolr wangshibo@192.168.1.15:/home/wangshibo/gerrit.bak /home/backup/192.168.1.15-gerrit/`date +gerrit-%Y-%m-%d`/
rsync -avz /root/hello/ myuser@192.168.254.134::mydate --password-file=/etc/rsyncd.passwd 

/usr/bin/rsync -e "ssh -p22" -avpgolr /home/scm/zhaowenyong/backup/MCU_DV centOS@10.1.2.122:/home/centOS/backup/ --password-file=/tmp/rsyncd.passwd 


