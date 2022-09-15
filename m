Return-Path: <usb-storage+bncBC6MZUGU7YMBBCFGRKMQMGQEMS2S55Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id F19DA5B92C6
	for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 04:50:48 +0200 (CEST)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-11c68f9ddd4sf8573222fac.22
        for <lists+usb-storage@lfdr.de>; Wed, 14 Sep 2022 19:50:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663210248; cv=pass;
        d=google.com; s=arc-20160816;
        b=GIflKhyNTRJ6CDnmvo8o85QjI3FQmMlYnJzd7odmEkvdnMZVRGDLArSCrupLEF5gN3
         ovPYmp+ez+X41Gv7+xXPJfDeYui7bcbVTFhjkSl7McbhlvbN1oIzwpcN99Y6JWAIGaJi
         od9ToFh6hHMQ/TAc2ndCeZr0WrlNJLQnaPomPPbtPNGYaqpMuTBecJNrZvWS7+YVdBFS
         y3NrMVwFu6Ww9p73X3oCzwhGSITSPHNbsgANfd+wVitms/bW2AdMLSZIhbbzMB+esh/X
         Qy6phQjyTiUWPpnizW/dgwtaKrQJhaSE90l5RUwVMJxTfRT8ZIhLYoAXE7S0Egi/VoXw
         kH7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=ehG4bvQeDFYgvMbTSzPk7OQftecv+cSV0HITu2Gaayc=;
        b=qlxcvhjyOLbBTdSEGQ4MVCZyOL/3QwoKgJPX55DWNhVzsbBbh65kWTlFgMdUV1EPzF
         vmA8f454NISWEXVKn5po7FGKkd0vOu6r1ywcWh5pc6+BhOVQ0TEIisCTSSCdajhEjh+y
         xirn/9tAahAKV3S9UzWQapY5X8KlesJw9M0W0agLUkRWAGtutjNXpbGLAVYiY/cHwjxv
         I+lGKqJqXc2aiN3XOQQGkGaur5okDyNf/2Eu/ZfYO0GMyFNmKqaQVmMzsOg5kecY7VNa
         19xZVLdvWa3rQtoKZyjoVOgGBe0Hq+YRr2UcRnXL+IsqZBz2UbXeHvfTAnTwbbCP8dfM
         B77w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=ehG4bvQeDFYgvMbTSzPk7OQftecv+cSV0HITu2Gaayc=;
        b=RMxwaaBWtD1w+Zvb+uWiNN3fB+FEpHNG2AcDbV3nmEzCIv3kztBW/EvRuvO7AKctQX
         DI7kb8EFwI9q/pGknCXBYs3+EP8qsrX6N3OyqKuef8K1mGCF69dJCxpgVA/VJrnGz/Wc
         rA51x8VQIVMhLG7vOxrS3bqlk41Qyzv4zQcQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=ehG4bvQeDFYgvMbTSzPk7OQftecv+cSV0HITu2Gaayc=;
        b=PvMPbsu7sEh9Ih9hbiwkotjsFEojokqfJDwZpJNXLpQOZcG0JRfvfvpI8FRjoTj6fW
         g639jj4cLhZhToXqwXguLqBNekJSzrgYl+blzdDnoPcrGyCXct/kkBo7RfheXZsbpi0F
         fqtVk7XdLvwN7sJ53aLHYooZ4czHztEyUvRTN3YuvtAIY9h6D2fKzzQNN19NgNTbNYYQ
         5ntQ47hc48amPVONcHX5Zl1Y5ynDJ6XWLmuA2p/vv7RMXlYlg4Mb93hvJ4ylVnAqsaml
         90qM5tGXIf9kZPreUi4XK+7uz60kkj7+L/fly7IRdrIE/89LKspBWCPNWYTHOPcaaaaq
         Iw4w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0JwizUIWXpOHP1vQIPe0bvSkm7MfWesCI8XXYCi1PpUYhRPwYt
	Mw4Fbgm8VSk6nRCx0jzGtCRnFw==
X-Google-Smtp-Source: AA6agR4Kd6yKhC/UsWxvaLMywFrxv8f1dkZ4HkeOe6wva4Tmpi2LoeOKpGFc7008KHwStud8dHUVFg==
X-Received: by 2002:a05:6830:13d0:b0:655:cad8:e57 with SMTP id e16-20020a05683013d000b00655cad80e57mr9172008otq.156.1663210248495;
        Wed, 14 Sep 2022 19:50:48 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:b1d1:b0:127:7af0:8da5 with SMTP id
 x17-20020a056870b1d100b001277af08da5ls7688225oak.2.-pod-prod-gmail; Wed, 14
 Sep 2022 19:50:48 -0700 (PDT)
X-Received: by 2002:a05:6870:b69e:b0:127:67cb:6d8c with SMTP id cy30-20020a056870b69e00b0012767cb6d8cmr4093185oab.165.1663210248053;
        Wed, 14 Sep 2022 19:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663210248; cv=none;
        d=google.com; s=arc-20160816;
        b=AuBz5UK/r9Og+us9p+3XUWj9DCjxnnEsCDmRoZfyLOCKFgC/pgjaekcpyAO9K07hDV
         BYdCX3vadXjyk2k0arUm5ufanvvj433a1z1Gal+P3FsX6oGSj8SgghXxLiFirh0Z/fl+
         Y45/Ux4bRPKKjOLtrEI504sjPi5FbkDmsGE0Oncxrp0P2vgfx6dp00yFW/Ot+jOQd8Uy
         srWBByf3pkXGYKggzlFPRMRJ6LB7btYqJIUuzaOwaXJLsr7oAA3A5AA8lM7NtOrP7oRy
         vUhX/hM2T0DuUMOBXyRHIlM+zyTS1W3q5T1xe8OB3zZBaJXH7TFVsNm6AX60UbdSRGWZ
         s7gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=7MId6uG8zzTJ6uZbgUxr4Pd/Sb1nFVDXsAhPeZtLxPc=;
        b=0ZdPqC+JiU8MJ2TjTnG2Fk9nBNLgTwTlLJ74l3zZ54lNtSBQTW/CRsspKbmhiX4ika
         x/g+9ImHi9JM+WmYUka272i5zmTh9htyONkH3eKGf1YAyxSMofkBDTY4KTsXS/RIAtKk
         j8Pgb+NsHGZjuH7/UTAuZCW7seFXy6H+AHur1Ip3vGEiCYkWokHoEghDT0vpx0dfeE/b
         /dKxEaZGSO1NEGf+JrpLsbdsWr2wT9zNxZdp3en3amw87kFuwz287U/DHiekRB5Wjs0m
         /VgHyKTmTPMjRoyOCjjC2e6QPoEX/HP3oPZpR8+CkKSO3snZBVinD4qpnvPN8kTJrCDc
         /Xdg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id 188-20020a4a00c5000000b00448b77e404bsi14353171ooh.1.2022.09.14.19.50.46
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2022 19:50:47 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: e25f43756ac4439f892232eb0418a542-20220915
X-CPASD-INFO: b5d28dbcbe7b4982a4515cf5ad677aa8@q4WeUmWWkJOOhXmug3yDbIFlZWFlj4a
	Eo55WZ2WRjViVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3sXeeUmiSkg==
X-CLOUD-ID: b5d28dbcbe7b4982a4515cf5ad677aa8
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:185.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:36,DUF:4808,ACD:80,DCD:80,SL:0,EISP:0,AG:0,CFC:0.435,CFSR:0.056,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: e25f43756ac4439f892232eb0418a542-20220915
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: e25f43756ac4439f892232eb0418a542-20220915
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 820060032; Thu, 15 Sep 2022 10:50:12 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v6 3/3] uas: ignore UAS for Thinkplus chips
Date: Thu, 15 Sep 2022 10:50:01 +0800
Message-Id: <1663210201-5532-1-git-send-email-zenghongling@kylinos.cn>
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

The UAS mode of Thinkplus(0x17ef, 0x3899) is reported to influence 
performance and trigger kernel panic on several platforms with the 
following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

[  720.545894][13] Workqueue: usb_hub_wq hub_event
[  720.550971][13]  ffff88026c143c38 0000000000016300 ffff8802755bb900 ffff880
                    26cb80000
[  720.559673][13]  ffff88026c144000 ffff88026ca88100 0000000000000000 ffff880
                    26cb80000
[  720.568374][13]  ffff88026cb80000 ffff88026c143c50 ffffffff8186ae25 ffff880
                    26ca880f8
[  720.577076][13] Call Trace:
[  720.580201][13]  [<ffffffff8186ae25>] schedule+0x35/0x80
[  720.586137][13]  [<ffffffff8186b0ce>] schedule_preempt_disabled+0xe/0x10
[  720.593623][13]  [<ffffffff8186cb94>] __mutex_lock_slowpath+0x164/0x1e0
[  720.601012][13]  [<ffffffff8186cc3f>] mutex_lock+0x2f/0x40
[  720.607141][13]  [<ffffffff8162b8e9>] usb_disconnect+0x59/0x290

Falling back to USB mass storage can solve this problem, so ignore UAS
function of this chip.

Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change for v1
 -Change the email real name and the code worng place.

Change for v2
 -Change spelling error.

Change for v3
 -Add acked-by

Change for v4
 -Fix version error

Change for v5
 -Sorry,Make a mistake for tag information about acked by of the third 
  patch and fixed.

Change for v6
 -Add description for the third patch. 

---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 8a18d58..156e89c 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
+		"Thinkplus",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
 		"VIA",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663210201-5532-1-git-send-email-zenghongling%40kylinos.cn.
