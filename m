Return-Path: <usb-storage+bncBCCNRMPMZ4PRBTGKY2ZQMGQEGLHRN7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B86B90D6F0
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2024 17:18:38 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-dff1eb1c1fcsf8012565276.0
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2024 08:18:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718723917; cv=pass;
        d=google.com; s=arc-20160816;
        b=yrd6u4AsKTUNEc3rg1Omo8VVtcW4Wy9NfIzHUkj0EpgT8ZUQrdtYfmPWx7fs+zZjD1
         7mU+BwhXMdv+TOgVcNQoxJxaK3J2jz6UVaUDWtgZAMTGzrEjLTgkJrInq2AiSv/WzW1C
         YzOpZj8SSb2aIGw5lZRN/l2Z4Py9DcpIQSU/DE95StbuJp1+PFBwjJEBAzK53zsxxXhv
         42ez6KhUVYfFjp4YvBxexC15fgk8WAT29442xSQ0Q9jk/DkTgcjymshuZH0jASLFK1O+
         S5+3Q34Lp/gq4nUl52ntmNCxxAbpnyMRjFJqWNbOsy5psu8atiDXzCtFL6Na/u7VU1/x
         sH3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:message-id:mime-version
         :subject:date:from:sender:dkim-signature;
        bh=PvQOFSR5xN81DEJJoZzSzFm5RtHUfRX9qkFNra9GSjk=;
        fh=k7QdM1qUoDpgcGsEecFybgIX5ljmTcIuu0cVbQWpxLg=;
        b=zf/rNoFjuj2dJ/hTOog1weFRDiYwRaezfnGEn9Oi/myzlnEaFfKMrleBFNxzYzoW++
         NCi2/PdSVY9ShXwRssiTItonaN6drnTs11ElaCcyHGVYKicSjQqcT+9YSKLtOjtmNqrc
         BYGWpGhq3X+HekcKxxjTZ4+ZytTnOGM6jhqLKtNeYC6UAozF/AIEZvHPHcHYT+yLjIUo
         4D01PFHiwaNVTfTNhRjS9X3RZF6+NiRZbtBHVMAu1vtDpeQnfon6cgaqL3+HovfEg8fV
         DdKGPuMRTCqtlIUpBof5yxDKTAGEwLBt8HtEEOCug+ZAjP7G2HEQWDmak+zssw3a8alZ
         u+uQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=geE5LFiZ;
       spf=pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1718723917; x=1719328717; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:message-id:mime-version:subject:date:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=PvQOFSR5xN81DEJJoZzSzFm5RtHUfRX9qkFNra9GSjk=;
        b=igd1ttbtLZ5y5x3PTe8QrJHK2v8rXrqsLcIJc82V+t+DxFEzeyYfM4q6mnjykBnp3O
         jgC83bHJqUKluBgeJ5qC+DXnSdnLHXIMYYDhyzoiUCxanW2Mq4lLzGyFKOCGqnHBD2bi
         AzkdIt6oldtj284CqIrUC5U2Jf7ix3FkaHs3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718723917; x=1719328717;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to
         :message-id:mime-version:subject:date:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PvQOFSR5xN81DEJJoZzSzFm5RtHUfRX9qkFNra9GSjk=;
        b=XS3wqrulh+uuQby5UOCTCQy6eULEZPw9Ah8BDBVbXfHA/1D2mffqiHs3rMYdRU2q/J
         2c9kQ+uDMqmj2uB3LUd5GqXc+MONuzJXNXzJmYqf1gaYkRBVvsS0rmCqluU3UO3Fyu3q
         QN0lWY4uC5GB/GSAmATG+Z/m4j0cgDzVwkN0Q8Ep6wDc65dPDDtzkYpx/FmlKD9o80Fo
         zzYY9w/1DvrMVp09ARrj7EhVIdIbmZb55u922FxzMdsdngwRZ5lAzMX228bIvRd3K+L8
         ad+/KcvqrAPz5Eww7AeNh7I4WLtgYF7CLRYkz/qT3boqRn9BBoMcQOTJwmabZjeAs3oe
         rS0Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXdIcdKMsrS0vKg+Cmu1gAnTcgbA4WctQv7/vAVuv88O1ls7Zvque8vCgT0dsUJKUJ5E84D1HHsiZZr/1cg6SODevI5WFUQDYbV
X-Gm-Message-State: AOJu0Ywt7OvvIj0nPXkWvnurH4tHNOCNx8mQS3C642aEP8nOIwSrRhZ+
	04wpTZK1/6Rgs75EsP7zCGL2P8Upni+8fo06ewmj29LJchTaJm2uC66c2hg0msM=
X-Google-Smtp-Source: AGHT+IHWnmFZfw8clLIEwf+iQFU6IfTsbDtvaZ8lXCpve5wLYbUOU6jMdxesHJ5VnnOs6MiB61+ddA==
X-Received: by 2002:a25:2d14:0:b0:e02:bd5c:8b4f with SMTP id 3f1490d57ef6-e02be231f8dmr144494276.22.1718723916935;
        Tue, 18 Jun 2024 08:18:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6902:18c9:b0:dfe:6e9a:9820 with SMTP id
 3f1490d57ef6-dfefeb3b1cfls5046359276.2.-pod-prod-00-us; Tue, 18 Jun 2024
 08:18:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXLgYT10EGy9hxLqhutYMlAVKvYMtmLaWsp6NvVGzdyZ3JkDe3FJBnTZjXzozYyXPFXQWyEI8BXBIzcuJ/qu1vo/ZYLmf8w2OdW6Jryqvj8sXegZXU=
X-Received: by 2002:a05:6902:46:b0:dff:33f6:c63e with SMTP id 3f1490d57ef6-e0222466379mr1925750276.11.1718723915218;
        Tue, 18 Jun 2024 08:18:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718723915; cv=none;
        d=google.com; s=arc-20160816;
        b=W/btuP/4nvGAgHWhNQ+UwOFZn1iXw1ldCi3BAQMQLwygEKnDaEJi+XOmchyUmn9Bzd
         oD/8Ujhc3GVtyqkZtMQgsqJJpPGxtFiLldmSiejmpz/SUBEemP8Nn/fP/uj0jrOhRTTC
         3NyASE9jtHNRFf3is9X/CiOG6upKG/hmKl20YMm9oFenaXvXbZSeGTvsU+kHNQlQuvEB
         AcpsCuWkuXMUrEbHgElODeGswOgVlzrsUStEM9AzAP4vhgMn+mNWzyc+Ais97vf8quLw
         uqgUzGk/9BJtoskzUkOF6dqdZvYUIW25W0Da3WLJ0MqgdpBUUSrQiuZaguTwGvnFFTPh
         olqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:dkim-signature;
        bh=Durdm3Ss1qe6LtFrzIfT5WeOKJaKnsW3YZanyZgKCYI=;
        fh=7xGoyyyhVr0Z/tllK4b7AogI4RoOUvEy87og37xLyvk=;
        b=wpmokv8Ws40yYunlCiD7/LaPd2ZQUVy6ZBIval0c0My4r+YaminRWhMjH29O0yFxNu
         RIMZI20MXKQtSptYqCg40vweIuBqVcqho/TZuEd6FfIZn1ZSNMRRFPVjx+BbaIZ8mk16
         +1J/StiYTk+rDwJPF2ZxmiKVjDvrVokZp92RwVilq2+kbqc5rZxbesCtmAbFoIBukkdl
         bRPTftn6OU/Lm+UQ0XH4adPt6C5e9Ihy/vRmGf3ESlmQkUE+h5YvPp8/wTE9AbxNtc1y
         mlqQeJxrt4dIZT3ZBzt891p1o/tJ2qfzbIYIN2nJNtlvmVdav2UKIi3+M9f3HKIwTW16
         Re1Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=geE5LFiZ;
       spf=pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com. [205.220.180.131])
        by mx.google.com with ESMTPS id 3f1490d57ef6-dff04a07f68si4649011276.645.2024.06.18.08.18.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Jun 2024 08:18:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) client-ip=205.220.180.131;
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45ICqgwc006175;
	Tue, 18 Jun 2024 15:18:29 GMT
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yuamp0cmd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Jun 2024 15:18:28 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45IFIR1W011196
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Jun 2024 15:18:27 GMT
Received: from [169.254.0.1] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 18 Jun
 2024 08:18:27 -0700
From: Jeff Johnson <quic_jjohnson@quicinc.com>
Date: Tue, 18 Jun 2024 08:18:26 -0700
Subject: [usb-storage] [PATCH v2] usb: add missing MODULE_DESCRIPTION() macros
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-ID: <20240618-md-drivers-usb-v2-1-e9b20a5eb7f9@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAEGlcWYC/3WNyw6CMBBFf4V07RiKWoor/8Ow6GOUSaRoBxoM4
 d8t7F2e5N5zFsEYCVlci0VETMQ0hAzVoRCuM+GJQD6zqMrqXCopoffgIyWMDBNb0KppGn+p0Us
 l8ukd8UHzLry3ma1hBBtNcN2meVGYZugNjxi3eUc8DvG755PcTn9LSYIEbbVXqkGN9en2mchRc
 Ec39KJd1/UHbgaEWM0AAAA=
To: Peter Chen <peter.chen@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Oliver Neukum <oneukum@suse.com>,
        Alan Stern
	<stern@rowland.harvard.edu>
CC: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
        <kernel-janitors@vger.kernel.org>,
        Jeff Johnson <quic_jjohnson@quicinc.com>
X-Mailer: b4 0.14.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: nhU7BEU7uW8DlvoFktTopxPNM_nIwuxx
X-Proofpoint-GUID: nhU7BEU7uW8DlvoFktTopxPNM_nIwuxx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-18_02,2024-06-17_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2405170001
 definitions=main-2406180114
X-Original-Sender: quic_jjohnson@quicinc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcppdkim1 header.b=geE5LFiZ;       spf=pass
 (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131
 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

With ARCH=x86, make allmodconfig && make W=1 C=1 reports:
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/core/usbcore.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/mon/usbmon.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/class/usbtmc.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/storage/uas.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/chipidea/ci_hdrc_msm.o

Add the missing invocations of the MODULE_DESCRIPTION() macro.

Signed-off-by: Jeff Johnson <quic_jjohnson@quicinc.com>
---
This is the remaining one-off fixes in usb.

Corrections to these descriptions are welcomed. I'm not an expert in
this code so in most cases I've taken these descriptions directly from
code comments, Kconfig descriptions, or git logs.  History has shown
that in some cases these are originally wrong due to cut-n-paste
errors, and in other cases the drivers have evolved such that the
original information is no longer accurate.

Let me know if any of these changes need to be segregated into
separate patches to go through different maintainer trees.
---
Changes in v2:
- Updated drivers/usb/core/usb.c description per Alan
- Link to v1: https://lore.kernel.org/r/20240611-md-drivers-usb-v1-1-8b8d669e8e73@quicinc.com
---
 drivers/usb/chipidea/ci_hdrc_msm.c | 1 +
 drivers/usb/class/usbtmc.c         | 1 +
 drivers/usb/core/usb.c             | 1 +
 drivers/usb/mon/mon_main.c         | 1 +
 drivers/usb/storage/uas.c          | 1 +
 5 files changed, 5 insertions(+)

diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
index 7b5b47ce8a02..1661639cd2eb 100644
--- a/drivers/usb/chipidea/ci_hdrc_msm.c
+++ b/drivers/usb/chipidea/ci_hdrc_msm.c
@@ -303,4 +303,5 @@ module_platform_driver(ci_hdrc_msm_driver);
 
 MODULE_ALIAS("platform:msm_hsusb");
 MODULE_ALIAS("platform:ci13xxx_msm");
+MODULE_DESCRIPTION("ChipIdea Highspeed Dual Role Controller");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/usb/class/usbtmc.c b/drivers/usb/class/usbtmc.c
index 311007b1d904..6bd9fe565385 100644
--- a/drivers/usb/class/usbtmc.c
+++ b/drivers/usb/class/usbtmc.c
@@ -2592,4 +2592,5 @@ static struct usb_driver usbtmc_driver = {
 
 module_usb_driver(usbtmc_driver);
 
+MODULE_DESCRIPTION("USB Test & Measurement class driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index a0c432b14b20..0b4685aad2d5 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1150,4 +1150,5 @@ static void __exit usb_exit(void)
 
 subsys_initcall(usb_init);
 module_exit(usb_exit);
+MODULE_DESCRIPTION("USB core host-side support");
 MODULE_LICENSE("GPL");
diff --git a/drivers/usb/mon/mon_main.c b/drivers/usb/mon/mon_main.c
index 824904abe76f..af852d53aac6 100644
--- a/drivers/usb/mon/mon_main.c
+++ b/drivers/usb/mon/mon_main.c
@@ -419,4 +419,5 @@ static void __exit mon_exit(void)
 module_init(mon_init);
 module_exit(mon_exit);
 
+MODULE_DESCRIPTION("USB Monitor");
 MODULE_LICENSE("GPL");
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index a48870a87a29..9b8f578eef53 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -1280,6 +1280,7 @@ static void __exit uas_exit(void)
 module_init(uas_init);
 module_exit(uas_exit);
 
+MODULE_DESCRIPTION("USB Attached SCSI driver");
 MODULE_LICENSE("GPL");
 MODULE_IMPORT_NS(USB_STORAGE);
 MODULE_AUTHOR(

---
base-commit: 83a7eefedc9b56fe7bfeff13b6c7356688ffa670
change-id: 20240611-md-drivers-usb-86999d57ed16

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240618-md-drivers-usb-v2-1-e9b20a5eb7f9%40quicinc.com.
