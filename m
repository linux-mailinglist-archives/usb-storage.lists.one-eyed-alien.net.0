Return-Path: <usb-storage+bncBC6MZUGU7YMBBYFFRKMQMGQEV2J5IOY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 6328B5B92C4
	for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 04:50:10 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id s33-20020a05680820a100b0034fffd34dd7sf260177oiw.17
        for <lists+usb-storage@lfdr.de>; Wed, 14 Sep 2022 19:50:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663210209; cv=pass;
        d=google.com; s=arc-20160816;
        b=PtFPBPFa1bu/anVlMcRUGvHaLHa3bblsVYy1nbKijICEDdERxFFkOuNrrtQ1xhA7KU
         EJL3HwX2zmgJqeCdrDUon922R6eUmsipUgJvLEFDtrKvdUfVf+UP2Acw4WbZMmuQt5/F
         Z70V94MbOQzW9fu9N3oY4CdjzyHcT5LIXhGCpG6BwwZOVWHa7Bs5/XzypElU9SE4emqu
         ooQ+MSQYIZJnxzQHdEIY42szLIW7CqSf2lxQQ0CDKIepEYUkJhB4lTl5cQVOMKpiB5bM
         cfQVIyyIUwr3a1BjQpEUrRB3EfwHFRYk3IU77ijLNO7XGL5IQTE1rCdOJwpVi/zalLB6
         0nrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=a1oY+ISFNp1BIMBON2xJ3ONS2t0h5SLd5rEPervyGy8=;
        b=09KkNEimq1gp5ycwuiuRAbYwFv+6e8Ax5J8hfcYNjz9oq+JpcaRccJCZYq7D/WYqUd
         dW2nn5+VIqW20aB2Yq2K8rP+v70ZY21q761QFuy20KK8x5VRNJLQ33kP56tdN1aLkZc3
         iiRzGB+JCTQehPM6Y+lCJGh2paMlH/GDVsUnRCbC7XLQI0HtwnKKEw6pwHaErBdoLv6c
         1BvF5E8dayL+vCwA7OL83huYgLa8sYihW7gt8SieL572UpYh+HqTE8VXP3aK7E/0zGlj
         KzxisuAPC3lNOieNelwd6qY7z4C70MJ9quWNBbmjOuTm/m0Ykin+XO2okLSzkarKIuOg
         Qz/A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=a1oY+ISFNp1BIMBON2xJ3ONS2t0h5SLd5rEPervyGy8=;
        b=a8xjuos3YXMX6PAU22UEklYv0Tt97Et09A4StJHKMXUZw3AAG9A+GNsPY+wdVnyVT3
         yXov7JBMZlXNiQAlJ9OFkITbHewlJ8Xu37mF43KSzN9eF6/J4zSrzGoRVApz7PARqGX/
         o0I82u3oVhu6IKN7jYfhItvL1JgdjD7pXfdmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=a1oY+ISFNp1BIMBON2xJ3ONS2t0h5SLd5rEPervyGy8=;
        b=BZW5gUa2NvjK2AC5pW7J2UhXf1sbmVYN+Z9hOsCHy1NfnMrkGGlTdTNsxGFbf0GeNo
         1A6Qv15GUopD7AhOkwGELqQGDgHatASI8quZyYx5aiMTGK8Zo4h4CgmAaqLtWeO8v9bT
         YT633U7qVk9wirIILmMakIUmVNInTIjvaS6qlNaQqsiDoIVfLOWRYFLtJVQlipM7GTl4
         YoMYyR9Y4gMhdvWnrouEjVRpk4N3xcATXqC7wrPn+lpvD5RGnx814Ajv0cMPHBmsJOnt
         e0SYbwLeIk4uJQ5XZw2+ObLSHaJ/EtNsWPKpj0H06VCdPvmffaOyOIndqiqq6Ept/RV+
         hZpg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2AwqI8XjQRaqwnnqlZEfI3ft/eAh3CW7lo0EHldkl1G7wt7jhS
	E/Iv3q3B+z+MCgp6c5u3GHtP6Q==
X-Google-Smtp-Source: AA6agR6NNE1FqSY78bNeJssLTW2uUXGoDTqOfoy/urRXY+91ly4Krgl7t0AZHpOwPpMMtzqra176hg==
X-Received: by 2002:a9d:2de4:0:b0:639:158c:ec87 with SMTP id g91-20020a9d2de4000000b00639158cec87mr16316925otb.204.1663210208868;
        Wed, 14 Sep 2022 19:50:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:36c7:b0:12c:52bf:5541 with SMTP id
 u7-20020a05687036c700b0012c52bf5541ls8000oak.11.-pod-prod-gmail; Wed, 14 Sep
 2022 19:50:08 -0700 (PDT)
X-Received: by 2002:a05:6870:d146:b0:127:76fd:382 with SMTP id f6-20020a056870d14600b0012776fd0382mr3992300oac.257.1663210208358;
        Wed, 14 Sep 2022 19:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663210208; cv=none;
        d=google.com; s=arc-20160816;
        b=gzOnskkHsNTaHeBvlT3WLYn5V8AJ8kgvS3nFGWaHsqRfAZ+cvAGWLIaSqqiFDReUqJ
         FyaCg3T8sXn77i+qnRJAVnsarLM4p6uQ3vpWfrySnu7Xk2wkjGj+5lLCXZ2gxoms95m9
         i8Gzo/iiYHyEPht7NjN6+fB4yxST1RV4VeIGU/Jkz+5b0woBgM67Dg/+hOE5JiBzjSHm
         /wfpvbE8LgAcBxPYuyBLkQ1SlIycDtUK2zgz0OuDGec18OdgDL7avr6jwDuKg/TDlOxb
         J1p0951xcMcrSNpAKZgPCH+R+8fDTbjRo+T2uYJO6JEZWkgB4PLHpInTHzxLbm/xIQSe
         iXWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=yxANJWP9kMDLg8nqBOBYSWG1vvEySz6V9VjZsiOpS/o=;
        b=eSEgFnEE5pDDXoLdSsLM0K2q5xF1WXC6mMvYVAEhLF46OYwjWXVmfesdwl2BWD4DTI
         fFQGc42r4m0i/RCKgKtnIQn0rlckl4FcFMMfSVMolYIK2RgMAR5Fwf+46dt0A7YbM2Rd
         /YScRKU4vHF/fvcAZALmFx7hIvk46kUgeb1urMyfW1GkCYucMkxow7GhJ+qJHSXfMVrK
         rRJ8LjsevIXYpT+omV8sBPAmJH2kCqYOa4+DooKiQNb3YzkVIgyJqbnHE4JKlw0gBu7/
         fKHR4t3p6PG4Vs+JdLMQUxSlLSonXN6dNmiUQNIpo9Jj0qkDF3hTcWKYaY5EH0m/He96
         Ycxw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id bq16-20020a05680823d000b0033f187f30f1si14925226oib.15.2022.09.14.19.50.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2022 19:50:08 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: afa130ed3e6e4c54b6f0da5bd8ffbfa3-20220915
X-CPASD-INFO: c20da3d8a18c44bcbe85b89d0a23f7c7@rIJqhI5lkmiNUXqvg3etnYKWaGWSZFm
	zcptSY5Rnj1eVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3snRqhJFhlA==
X-CLOUD-ID: c20da3d8a18c44bcbe85b89d0a23f7c7
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:171.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:34,DUF:4806,ACD:80,DCD:80,SL:0,EISP:0,AG:0,CFC:0.274,CFSR:0.099,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: afa130ed3e6e4c54b6f0da5bd8ffbfa3-20220915
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: afa130ed3e6e4c54b6f0da5bd8ffbfa3-20220915
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1512078381; Thu, 15 Sep 2022 10:49:35 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v6 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Thu, 15 Sep 2022 10:49:23 +0800
Message-Id: <1663210163-5435-1-git-send-email-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.1.0
X-Original-Sender: zenghongling@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Content-Type: text/plain; charset="UTF-8"
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

The UAS mode of Hiksemi is reported to fail to work on several platforms
with the following error message, then after re-connecting the device will
be offlined and not working at all.

[  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
                   inflight: CMD
[  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
                   04 00 00
[  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
                   inflight: CMD
[  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
                   00 08 00

These disks have a broken uas implementation, the tag field of the status
iu-s is not set properly,so we need to fall-back to usb-storage.

Acked-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
change for v1
 -Change the email real name

Change for v2
 -Change spelling error

Change for v3
 -Add Acked-by

Change for v4
 -Fix version error

Change for v5
 -change version

Change for v6
 -Change the git message for patch 3 
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index cdff7dc..a6bf87a 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x090c, 0x2000, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /*
  * Apricorn USB3 dongle sometimes returns "USBSUSBSUSBS" in response to SCSI
  * commands in UAS mode.  Observed with the 1.28 firmware; are there others?
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663210163-5435-1-git-send-email-zenghongling%40kylinos.cn.
