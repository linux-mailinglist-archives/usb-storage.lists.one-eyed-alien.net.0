Return-Path: <usb-storage+bncBCCNRMPMZ4PRBVMWUSZQMGQECVXSAMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A4904929
	for <lists+usb-storage@lfdr.de>; Wed, 12 Jun 2024 04:43:35 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-dfe44496da9sf525436276.0
        for <lists+usb-storage@lfdr.de>; Tue, 11 Jun 2024 19:43:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718160214; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pfz+9EfBjeHxACLUGQUNW4vnLhcOxS1DUK/3EsYBsCmU9tUqaQw/XSuQmdOmMB5AKp
         fThExTpD/pz9tqW+0/52RIUqW+q9982AZ6YruyynaV7+hIemW/INWL25ZGzJdYDHBFXH
         659sV8mJr5A8AgYHSy08vctZLELYzO1kgAUDXAgWEomSJFmefVz/bEG4XenYMYzaTvEL
         Wphewz/mPGa2SM1W79EYxyruLeAsxsdzVFMrGrxZ3L7xqeAqI2uTwgAK6BwkPLyN9h9M
         ntRIQzPzbyUMjQHDTlU84zwqQcTJ7mGeH/LRa9Q/FMDMt+DMubs6Rk3kb9Cjgn3+bs6o
         fvug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:message-id:mime-version
         :subject:date:from:sender:dkim-signature;
        bh=7p1S1jBXogMRMjsaXvnNVWTc+IaMPQtf285qVdTS0iA=;
        fh=s3MvZDb5F9itEJcYsVIQJkSUM+Pet9r+W6pZpivrruc=;
        b=i43FE9l4rf+0MiY7a7IgHtZJpmM0hcwNPCzdTcmgHr/NkMEUHSUY6PBnXruzidEvZu
         csSpU0uoYMkTNsncxM5nUPMsSUPgSi1Z7tzLIHe+dRWMhmQg4vCJ5/hRr40GD6WLBF2f
         1S39f8+cW+xExDylKBw6aN/v56HI5XhIQD4DVhgsxp1yBILTpR6iu8H5OfTCPREFP3II
         mOUrrWOZQa2aQD4z//7MtSF1GcK7CMaepfryWmEr2V0aVQj/7coDkWkMoZqwRhocAehl
         bmH+viZpfWcBOAym9hfjTmLWtKBfrQUeThCPZMBD79i+DQeO6KRMINckKLCW886oIhf1
         3RoA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=JNRGtLfp;
       spf=pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1718160214; x=1718765014; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:message-id:mime-version:subject:date:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=7p1S1jBXogMRMjsaXvnNVWTc+IaMPQtf285qVdTS0iA=;
        b=csoUxuvFROr7ysQOC7s8Fbao37IwRD7kT5eTaPnx4Vn3Tt7DYU0c1DsAXtUKL7ko40
         +93YSruMR3zaxSAKRcUOv+Suv9c1YE7Ro431iYOFElc+ZlNsX+7v1mmEPZ9Lyf0Zgfvd
         u/I5uQUZeF2gv43B/83YwS7Kyk+06jwf0QGwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718160214; x=1718765014;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:message-id:mime-version:subject:date:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7p1S1jBXogMRMjsaXvnNVWTc+IaMPQtf285qVdTS0iA=;
        b=WytFcknhEhwUY6FXgCa5iLo1rAeqaLJF3r/49BFNjFT5Vxmlw1KHzq3CxIDL8LLIvy
         41W720M/T/JYqzt08mNT6mnFPAh/vexs9UCPI0iFqqLIqC9BKUtUE7DjJ32G4szwHzyh
         8PFuD0sH25aC66ecbrd4qv+BH6mhyYTSdLTXftkDGLPkQ9V4DVLQmdyfLJ+HYyZml9zm
         1FZssJyBPjWtu1diQWbJBJTWOwENx3/vdSTe4NJc0hm2VxnzkVTFMJS+QsWHbDqcNt4R
         BNNQnTXzfR/EYv3VP+7EN9mxAqEkT+dtVvbu9DJ69RBtb9IsfEPNVSwT0CHWdkypXMcy
         wMzQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUHXyTe502uTfGo6xXOq4cVYsHVKw1V0gU0lHzH8n7DPBQPbM9Qfv4TEA7GNXc8h1qZOJ23fMkp5lQAXd5EPUq3IvsiJrtUHVpT
X-Gm-Message-State: AOJu0Yye+rmuNGheb2w6MmBGuRVd8WWU9y6oDnnRV2PuXVLqa7oCi9Gq
	f3eH0TaTFyRJWBCPYleEZzBByx+xUV/4biNK5hvZx1CUAgLF8VXnyQLPQC0pNYw=
X-Google-Smtp-Source: AGHT+IFSPcK0d7rgo843UJ5Twc5E0jCx4IXSYyEtHAGk4Ahk44tBIld/YeY7zXHxGqlAN84bhzNBDg==
X-Received: by 2002:a25:db11:0:b0:dfa:4a7c:b2d6 with SMTP id 3f1490d57ef6-dfe68c0a422mr489095276.50.1718160214150;
        Tue, 11 Jun 2024 19:43:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:6910:0:b0:dfe:54e6:8233 with SMTP id 3f1490d57ef6-dfe54e6849bls368011276.0.-pod-prod-08-us;
 Tue, 11 Jun 2024 19:43:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVBV/h8zt9XNes0e4ppGYsn8ZjlYj6zmxKqqG/y4xF4OTsWN85pJOpRlkK4ch1QthbB1FpBxQgOgzQ23cAgGiHhgn7vZl1dlOl/ns/zmCOTYviG51w=
X-Received: by 2002:a05:6902:110d:b0:dcd:88e9:e508 with SMTP id 3f1490d57ef6-dfe6656c01emr129679276.5.1718160213283;
        Tue, 11 Jun 2024 19:43:33 -0700 (PDT)
Received: by 2002:a0d:d995:0:b0:61b:e8f5:76d6 with SMTP id 00721157ae682-62f63f85b8bms7b3;
        Tue, 11 Jun 2024 19:37:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWSB5KJz2icdX8bb5SwhkwsAuhKAqCrVdceccEIU+NJ/jguu+Pot/zn0Dhs5vOXymCnJXmwefe6xpA5FPPcjiRRl7l2VD9Ee/K/fq5iTfMGk1FXP38=
X-Received: by 2002:a81:ee08:0:b0:627:e414:2f46 with SMTP id 00721157ae682-62fb8a5a9cemr5252557b3.28.1718159846738;
        Tue, 11 Jun 2024 19:37:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718159846; cv=none;
        d=google.com; s=arc-20160816;
        b=pnihmRDuXnWExJSt2lezoUBbvbJZ17Scank7yTQI4LuI2MUf7IDer0YMXy4Yysnnbg
         RDYKgQU2Vyl/mH110lK8nZV1agDh/8YHXpMlR4k1rq8ktHdB7XHW2DhNTjkotiaOk0Xs
         qrKjQ6kH0qs/cGQ0qKSmZ6YTGuCHQR7rZityvXFKi8vYV4ffGytelNuf/4PO3xArnOPI
         zfb8pabv9Z6QQx7IfJlzQ8DRZ32IQa97lxuYv9/7LPnNHJPaCjGU1uV0sk45WOHPWqnv
         GSrAwMmyMyvFGP20FJ6dicTlpxRVrkARAMbDFkFBI52UbLQsiy7xRmVPRHVUzHjIsjk6
         bkdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:dkim-signature;
        bh=dL/OjdmAVSy+SNFQu2VJRGbXRL5/DpTz2Gw/w62br+c=;
        fh=7xGoyyyhVr0Z/tllK4b7AogI4RoOUvEy87og37xLyvk=;
        b=HfH8IzxdZAL5VV5dra7s2TPJTbg3VGYpP0ancZb2XxVG+dtilvEV73T80OB4a4pXWF
         t45A/jx03w+KXXBaNzjaQEWuoBFHjTL5NjkBPJOA5h7lK2xBT1F9aL03o/6nDE/F3AGB
         P24SZKuTFjfbm8WExiuNDzunaRLAGlHR+ByVRrAc+x7FDpKA7f/KqMTl8sK+fUVTC1Y9
         s+kuBDftFPJ/oySn+tCIgV5y0TgQcacdE533WYVglG2lkij+7t4HFNiQJOZaUjyRVV0S
         +EQ2KYZVdj6K6MJJZuWAluvUq1NXxRzXzByiQVSxGx2phvWoREHzPUO7jBvpmnQms/a5
         LmwA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=JNRGtLfp;
       spf=pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com. [205.220.180.131])
        by mx.google.com with ESMTPS id 00721157ae682-62ccaebd6d7si53266417b3.322.2024.06.11.19.37.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Jun 2024 19:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) client-ip=205.220.180.131;
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45BDmAGv011284;
	Wed, 12 Jun 2024 02:37:24 GMT
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ymcnmyw5e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Jun 2024 02:37:23 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45C2bM1i016440
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Jun 2024 02:37:22 GMT
Received: from [169.254.0.1] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 11 Jun
 2024 19:37:22 -0700
From: Jeff Johnson <quic_jjohnson@quicinc.com>
Date: Tue, 11 Jun 2024 19:37:20 -0700
Subject: [usb-storage] [PATCH] usb: add missing MODULE_DESCRIPTION() macros
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Message-ID: <20240611-md-drivers-usb-v1-1-8b8d669e8e73@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAN8JaWYC/x3MwQqDMAyA4VeRnBewMrt1rzJ2aE02A1pHoiKI7
 26343f4/x2MVdjgUe2gvIrJlAvcpYKuj/nDKFQMTd1ca+8cjoSksrIaLpbw7kMI1N6YnIcSfZX
 fsv2Hz1dxisaYNOau/20GycuGY7SZFY7jBLnTZiJ/AAAA
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
X-Mailer: b4 0.13.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JDBySRTaunjx1iEhh1rC7EVO5Nj43UbF
X-Proofpoint-ORIG-GUID: JDBySRTaunjx1iEhh1rC7EVO5Nj43UbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-11_13,2024-06-11_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 clxscore=1011 adultscore=0 phishscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2406120016
X-Original-Sender: quic_jjohnson@quicinc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcppdkim1 header.b=JNRGtLfp;       spf=pass
 (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131
 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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
index a0c432b14b20..65f9940bc7e8 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1150,4 +1150,5 @@ static void __exit usb_exit(void)
 
 subsys_initcall(usb_init);
 module_exit(usb_exit);
+MODULE_DESCRIPTION("USB support library");
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240611-md-drivers-usb-v1-1-8b8d669e8e73%40quicinc.com.
