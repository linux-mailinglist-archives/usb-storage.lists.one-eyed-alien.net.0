Return-Path: <usb-storage+bncBC6MZUGU7YMBB2N3WSMQMGQEEFK4JHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E465E7212
	for <lists+usb-storage@lfdr.de>; Fri, 23 Sep 2022 04:46:03 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id j11-20020a056a00234b00b005415b511595sf6360838pfj.12
        for <lists+usb-storage@lfdr.de>; Thu, 22 Sep 2022 19:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663901162; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWS9WY2qxshOWj+ayVZTUhUZk4n4GGeY5WTJOXl3Ul5MTol84+gQ1YCdR2DJg6sEEw
         M+r0c37LTBomDqJUH0XoX2TJ9qjwqRtT0bMN/JzbqTQaKdMKF77LDx36y0R20G4LatPa
         puCb4i1FiXPAwuz8xJyHs3pGKv6tdOFzB4XDoAqmkFU4vuVz+J80ptU3LGdRaWMI2gBj
         7REn3lZmsNukkTF5cBj42Vo9wly2QZuSMweS9PepY4G3+WxZr5pO6p39I6vkUyh9tYFR
         J5g7m0VfQmh39xYwwIZItB8mWIPfHcAuocmVQg5+gZM1Y4JymXSvWRuAOPtvyAQQ1YIB
         XZAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=NKfAPl3kRRYsYGEJkrbjyI794Tc6kQeeyQvjuaGOIc0=;
        b=GhhHs6xG+3fMV6Ut6aYPcAn85hE0DXaMH46vcAUrqUUBDVpH+Hfy7CrwRavNRP5mu5
         2uif/oGmnKhBhKC326RBsvB/wXB4PdGCnIxwFKqG9NaTVxwQry2wYlTN/TW0DR2mFMnD
         2V8lQXhnR79HJvnoeOyJnXBxmU1MEEX7dObmTW361LbAhB1Iqlis+1nPzUbUpvPS3ntS
         YrdEOSJN2i3n+w6M52JTnk0i5kEx97DLQuWkvJmYKEMoLm4lKLRQHmY+QeJZmbMdSGsj
         hFl74FY++ZOu3haEYEWKwfyZZfctltKJyDXJhd6cJW6Lhp5FaiG0CUfMaQAr4EKmD0Y6
         KAUQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=NKfAPl3kRRYsYGEJkrbjyI794Tc6kQeeyQvjuaGOIc0=;
        b=GA3DXIz8LxQSOV9PEbkSD2Qb9gxCyVStK6NzbkAvPtxDaYsZIy+tKb13gFdT4UJYZL
         Ape0I//C+V3rXgejJdq2M5D1ry1d3AtMSrXUEQAghNUaeUz9QMh6w4nXcjGruThH8wRh
         kSjte27vzHHDayLV37ElNc4aqTJR5b5pQK0HU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=NKfAPl3kRRYsYGEJkrbjyI794Tc6kQeeyQvjuaGOIc0=;
        b=MLl4BuWQ49IeY7CUEzvz/Ch7hBYJyGsFxn388aVdl+mmlMxJWkJOCqvLy04S3I45Q/
         nFqCBbqcnodP9VpFQ+v3+8nlUmBrv1mEyZ69ffWicmEEOFE1F7ZoWKoJGfZ8cpe5CWP+
         HJKCsilp5LkdlEVpNd8UGaBN6HI36/y3J/GWgMP1zvZ4R5Gq9WCAFbnCnfjR0Gnx74ym
         3vcTxd4O7xcV/sV9tt2iT9vA2BTzJd2Vn1cx6TSpCtIOgfG2J4bRDXVd7WG9XYJv6Wvh
         QOVuBfmndq1CjVhQ/ayH+xd6ClbMD0Hlq4cEaVKaYa6ryWCoGbuKY7BSTPbknWEG+mx8
         gRlw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf0tF7PnaxFcx3aJrLrNKSafcpEmswueKKvT4gKhv5zjs/7u0bZC
	FcqyrLxesG5TodSBgr0MJR9Uew==
X-Google-Smtp-Source: AMsMyM5M0lMh0weIC5GjIx5w8dW7x7ndR1ZME2GikpvHy6iI2MQ3Yi+wG3Lc5UpUW9CInW8GQqt3/A==
X-Received: by 2002:a05:6a00:2918:b0:536:3967:5d08 with SMTP id cg24-20020a056a00291800b0053639675d08mr6715401pfb.68.1663901161841;
        Thu, 22 Sep 2022 19:46:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:f683:b0:178:3881:c7e3 with SMTP id
 l3-20020a170902f68300b001783881c7e3ls11097077plg.11.-pod-prod-gmail; Thu, 22
 Sep 2022 19:46:01 -0700 (PDT)
X-Received: by 2002:a17:902:c401:b0:178:41d1:ef50 with SMTP id k1-20020a170902c40100b0017841d1ef50mr6249700plk.66.1663901160998;
        Thu, 22 Sep 2022 19:46:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663901160; cv=none;
        d=google.com; s=arc-20160816;
        b=fAsBxrbKEJOk4n29LDdPs4QHekS6vEEohXwNDm02f2sb8EzpCnYOSxm/27VGO3lq1F
         B70fuAomGLJfw/sgkyIiYTfoDktw3+/iY3emHJq73PF4Z2y7fbcoCXCjThBWsUnn4LFI
         8EC7TqBQB4+zd8yTJ09dD9/EZlno5qRf66leOxA7cmY9nmEh66H88e9nlmDySZIOSMJa
         sqqFgOBcmHN1Rr2cPkPEdDJqshkV8NzMaZioC9ENXTv04wi4ZegCGaVz11XAtSc9jFUZ
         s5mvOzAVpcJkWLLUH52wEFrByIPlUtVxuuq9Ay94tespYrnQfWgBzcBwg6btrtIzEPL0
         mAfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=ix4uCuQvocfa2lKFerubgG4a+MAid6gviCygWaMS2Yg=;
        b=vwllou8vi397B4wF8qPI4OGrzOkPk0QRa4O3OYW5s3a21VRgR5hHi+bzQ2Iq+q2U+L
         bmX0hDK0ZYOhvatDuwyy7we0QHWzOXYx0C64OnTdzjEM9NGRo+b1BPEejLoRyi2VmBxl
         kBKhPR+9xXeY0S3YB4xojxt9vItPI5HiOHn58T3QpfDGjtw9oE4WbJ4PeTCbLcfXbmi1
         A/Xxa6G5x56T57h9lrRo434xJwApvyE8hgPjULs3GUJS0r/aGPUK8Vm9q3ewu8DayxqR
         uQfQ846N1Nf8qvyC/Jq68gQAkYGEusfeCLu2bDmVFvGzHnij1pLbIyRqT3a0Nb2LMDwd
         1a8A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id gj6-20020a17090b108600b001fddb1ff1dcsi1215747pjb.63.2022.09.22.19.46.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 19:46:00 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 218828dc5bc148f4a9459cf36284e246-20220923
X-CPASD-INFO: 57e6f7169adb4a0f9e1dff0b42ddd227@foefVpNpX2Zlgaaug6R7oFmWYZSWklC
	xdmyElJJiXleVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3hHmfVpZlYQ==
X-CLOUD-ID: 57e6f7169adb4a0f9e1dff0b42ddd227
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:208.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:154.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:40,DUF:5467,ACD:88,DCD:88,SL:0,EISP:0,AG:0,CFC:0.312,CFSR:0.103,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 218828dc5bc148f4a9459cf36284e246-20220923
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 218828dc5bc148f4a9459cf36284e246-20220923
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 256080858; Fri, 23 Sep 2022 10:46:35 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v8 v8 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Fri, 23 Sep 2022 10:46:13 +0800
Message-Id: <1663901173-21020-1-git-send-email-zenghongling@kylinos.cn>
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
Change for v8
 -Add acked for patch 3/3 (thinkplus(0x17ef, 0x3899))
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663901173-21020-1-git-send-email-zenghongling%40kylinos.cn.
