Return-Path: <usb-storage+bncBC6MZUGU7YMBB4F3WSMQMGQE2KZU3WQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE35E7213
	for <lists+usb-storage@lfdr.de>; Fri, 23 Sep 2022 04:46:10 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id s16-20020a170902ea1000b00176cf52a348sf7107046plg.3
        for <lists+usb-storage@lfdr.de>; Thu, 22 Sep 2022 19:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663901169; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSqIXc63QLclcAEIAe/e5EQ8ZQpxdGVK0vseLiwaUIACKYShpjupbQR5S5W/mYt8wV
         VZt8ANL/GqWZf/QYMThhEcAxwRMrOZoThbVNPwGZVptL9rIHzB1Hvo+MyhIFOFO6HqRp
         /oTpliKacJBSmk+bLck9cxI7KqtkvfuoEeiocJN5nccymegP/2U5JxerisUBJWvPy1+E
         GzHHI9HC2A3nilDFH//DKdldG0PhKlgeHgg/H5FrpKnx+H2NVXitZ4rVJuSMeDNdSqdc
         mm0hFV69hTicPHT3i6EY/gV5m8l6RlWEjDukr+UOtwDYSCjOQav12/dt7p7BESt+cWNi
         Xwxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=lFtqi1bsTkEZo5tcsR5+8DcdMdMNrFX5hbq0631w3YA=;
        b=Nx4XjF694fMbStTJvXc77q+Ru47f3JGzAVqdgmVun6eN5i6GfqmfCsmN+N8RmuJGNx
         +B5YvXKvb4F/jMzhgTLSewZM8pb2hJQQUHrNkGz99tnMUheMu3THla99JugeUkVJo+xP
         2qw2YSzof/t/2cfbv6qy+xG8k0ukZT4zXrThB5Y0jLcOMYNsFJNPN7klIjPp+W+5vhyY
         ka+kNQVrZyN4RLa2m3K+VlJP4tfpQ5ZrC+ngsU7ni8fMa5ACFKJrrU8QtsQMsoL9eIfn
         mdLX+bmsXHtTeEaveqYnxrBA0/h+Ri8oS5FQGqkwlkyoU2p88dXMmGQW5sbS3CJpyNhs
         yvjg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=lFtqi1bsTkEZo5tcsR5+8DcdMdMNrFX5hbq0631w3YA=;
        b=BYCWBeCWanbGk8YhfgqqEsdnNqDBWwvO6yyW5PyhOUUbzNsTUOt/V1nfIwnX6iLGqq
         LIqyegddMXRV3XeDhgETJ6/ZqTvkxYdSIuAlH5MNUjKWCYf1DcP9egdl5dOESjITK+vd
         3BiS56GzYisoJ/1F5vKavHbYl3JJ9Qs9tKGfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=lFtqi1bsTkEZo5tcsR5+8DcdMdMNrFX5hbq0631w3YA=;
        b=engLRmXeggMAz4ivK7gPDW6UqOfaxK+Wc3jFqxXurSkIIPronwQ+2tdmTJ0ebaFkDR
         uBfoPgmDK/kGvNYKGXxZfli55nbtenR9muJEGWcKIjoR99m/ETmwJpI6xo6cIno067BW
         1ULy8Pjw6wwI0c8OCEX9paeGY7XJVYxdIjKH8lnbIAlmUaENPUAL9C3fPqoB5EJcKiZI
         xq1zqUpIFD5wzwIBAhBgdLjOnbS/9lDx2A/V+htXSz/tUMVK0m/B92QHythbsTXfQs46
         gaNsZZuArDFrQqWLYi5mS8gHEY4mI4l+At2rGtUH87umkuHyF2EIdUulep1RGtA/S5iU
         O1vw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2mN7p4EEtx4YGA1FqtJaTDJv6a8EbLDtc/agAvVuX1hPc2Sifo
	R+rKn78sSg7xpui3+iCYm6E/Sw==
X-Google-Smtp-Source: AMsMyM6EN8JYQDyofUxuFOmw5UTwdWOEtKtBgRo4OkxL6PPLQkN+Z+IYkpqQhrdd0MQEB7H2gBgtMg==
X-Received: by 2002:a17:90b:1a8b:b0:202:971f:2a3a with SMTP id ng11-20020a17090b1a8b00b00202971f2a3amr7216108pjb.224.1663901168744;
        Thu, 22 Sep 2022 19:46:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:e:b0:545:3921:c50a with SMTP id h14-20020a056a00000e00b005453921c50als8103656pfk.7.-pod-prod-gmail;
 Thu, 22 Sep 2022 19:46:08 -0700 (PDT)
X-Received: by 2002:a63:67c4:0:b0:42b:aadc:d425 with SMTP id b187-20020a6367c4000000b0042baadcd425mr5863242pgc.274.1663901167906;
        Thu, 22 Sep 2022 19:46:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663901167; cv=none;
        d=google.com; s=arc-20160816;
        b=SrlDiquLmUYDD949XX2sLlN/IKJzEvBaeQayXBTOBFS6etgVN/feGpE0B/rH09bXjV
         WV8afll04yp0h1/nt6IpATX5yz5vCNYL1trhVcNGz5dBMU3744U9e8BpAko5L3qDjB1I
         bjVRhKCae51YwREHlWgWMt2yqe6WjWu5RQYlYwHNvvjcD42CaJRvmVNAG2h1WEDzMVAY
         Nvs9RE8wyf4OrZzDCDdFwQPv8NPDm2J2iBalnFDYcrNTebQGifRtRFgaRYHL+o9sTeZ9
         juk8g5X6p5O1K1tgfdnYQMGrp6qod3e0DdxP5OrPcIcXScCMe04z0oBGuWKLKe1U8cqb
         XkDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Chf9XiVR0aDCmQ3VUiAb/BJJxCFNeEf3kUl4/mjSWxk=;
        b=ZxKDQFehKCBtAPQknB3+MEN2vZfHwmZrPEN4PNb19E/zHNvzAf0ffXrSOdB/nDbyDw
         eqkA5nZnibXEHZLcuA4H9QjwL28o/wniUPFfjvFxupk4zL8mUSiYQQjMHeDgLSoPio/y
         Tdw8BqRdKH/hKqtWlbUice+6N8NQs7G0Ek3lukjo1r8J+XdvV+wxyKo3l/2Z0dONsZiY
         3FZnw4BqNm/IXW0OwXfHnejphcBqYvf93xShsmsAKWu+k+z3GdfJMywm+DFrEjhtqxo/
         YNOu3sX1Awp/TXY6MijWmopUa/54SVKijVtQBS86dWpCkzIXBZZuLGVnl3hKx/Ltcu3W
         spOA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id z1-20020a170903018100b001783bb340bfsi1880036plg.2.2022.09.22.19.46.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 19:46:07 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 67dda8216499496e8d4ad281ef56cc08-20220923
X-CPASD-INFO: 948ff03956064632b3e2fbad87410b60@goRyhpNiYWlhVnKCg3l-bIJklWKWjoG
	zenFUYV6SYlCVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3iHZyhpdeYw==
X-CLOUD-ID: 948ff03956064632b3e2fbad87410b60
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:155.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:1.0,SPC:0,SIG:-
	5,AUF:41,DUF:5468,ACD:88,DCD:88,SL:0,EISP:0,AG:0,CFC:0.272,CFSR:0.12,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 67dda8216499496e8d4ad281ef56cc08-20220923
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 67dda8216499496e8d4ad281ef56cc08-20220923
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 985410681; Fri, 23 Sep 2022 10:46:47 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v8 v8 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Date: Fri, 23 Sep 2022 10:46:25 +0800
Message-Id: <1663901185-21067-1-git-send-email-zenghongling@kylinos.cn>
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

The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
platforms with the following error message, then after re-connecting the
device will be offlined and not working at all.

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
index a6bf87a..8a18d58 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -149,6 +149,13 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_ATA_1X),
 
+/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
+UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
+		"Hiksemi",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
 UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
 		"Initio Corporation",
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1663901185-21067-1-git-send-email-zenghongling%40kylinos.cn.
