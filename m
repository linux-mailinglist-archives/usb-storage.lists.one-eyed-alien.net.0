Return-Path: <usb-storage+bncBC6MZUGU7YMBB7UF4CMAMGQEYRTVSII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id ED97A5AF9E2
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 04:33:35 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id u16-20020a17090341d000b001774940cbffsf2956ple.8
        for <lists+usb-storage@lfdr.de>; Tue, 06 Sep 2022 19:33:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662518014; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pc8Pyr33P/GoXQ0JivC7kaXw4T7ewqy3yqUrxEKe9gemVKqt+LhX+UyqudqIlyLE5i
         U0LpPEGhDtbtxxH+53GpTuJwpLD/00e7lJM4X2+KsVxm0ebzmfXVOtnYkhfRgNmn2SLN
         jrJEZqw/kFBlhWC4q3fzQuB8NvQUemw7H8Fhwp3F2om9R5jijrujbEnN1sKqvpmNBLeS
         o19NGAAiUvt8OtBaxQ5nUuCD7om11JMqcjA4jnFT1mK59YMoVKUL+zk9OR9K6L4OzvwV
         E98+BNtCtNhbOdAMinSG3gMcZtrxc5Oe6InbF4zvWCdq/f0U7FRi4bD4IYcXa8YVcmmu
         Kamg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=mrzIs+UMSh9kl8YX2yxMVsalY1mH6DSO20FM2Ugzj08=;
        b=LhapOOHszD6Yk6e4EU0UC8e1JMVSnQyx0Z6Qabxk2BPPcZWISm3JNum3c7jecdnxj3
         zVSdrfV4hmEca/NcZ08BRIuWdc+sJw3418vj+bjcLqS1pjHUl7KiS2t089pSciW/w/eJ
         Oap5bTugiRbJUn1ofWDbMX9yGkme+Jj9WcaazO7aLz2wc7fHSZaOdfddXNq7pj39rmDi
         6mKiaeS2qzxj44x0a1EX96V9QyPsix5w/WPi3T/ZoHNcsZHFKXF1V7x01gbgR07XZ+eP
         1gPFOLBlmd5Rf9mvjgiYRI2I6ewpJCFMF9DfvxHiUCS+1TPG/fCA05JXXzmk+1EvhlWG
         2K2Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=mrzIs+UMSh9kl8YX2yxMVsalY1mH6DSO20FM2Ugzj08=;
        b=RGyAfkEBzgY0DVHsu3U+Esj+QbXgXwf9WMq/0B3Pj0nEp5ObAGgI9n1ni2TLuAXVLo
         r9K6Ycjc8QCZaWOKFh8uwXndGt58Fr8Vd1M39KmL9t6yqLsIFPr/cCae14lxqbg7plMr
         YZp/EXshy5TAFKlcV3HJRQ4LAjPiNaSRHA4nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=mrzIs+UMSh9kl8YX2yxMVsalY1mH6DSO20FM2Ugzj08=;
        b=4dl5pRinsUwWorutG2UVonrao791yzPfCxRn3uTCMLfSjXglep0fXBYXJWi3nJ7AIk
         EIPPs12tIfOMXCaqZxS3hzDyL7A+DP1YhfyQNjTY/0pi26K5AAagqoKro+eAwlMYMGyr
         hGty3scJmY2uIzqD9pVk/vNbkiEThGqj4s8V7wJd2oIwDCf2ZaJ03oKZxfW2pqLxEUSR
         7JeJdCKlMotScAnXNB19s+a4UNKWW8W4UYa8bdOP1b7PuoK2clY0xDXV0Jkh7fh6iaBx
         lUhjt+sE35y8feMkzTmJM7qsuFLRdil4zvp+g1iSiyovmqPJSGoLss13ddb+QOaMvhL1
         Lylg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2UpYdUxPPv//N0CnmyivpVT72ufzxI63q8xIeh7WNA9Khrwr1S
	m3ecOnEUqYhVnXOyE+wUkjqcpg==
X-Google-Smtp-Source: AA6agR7RBmSdZBEubvFLq+8NB5hj+50C/IlVDlaYE6RFmCdkFHK705loz1FWu5HE6HdA6J5z9NU2iA==
X-Received: by 2002:a17:902:c206:b0:176:a575:5ca8 with SMTP id 6-20020a170902c20600b00176a5755ca8mr1712167pll.74.1662518014438;
        Tue, 06 Sep 2022 19:33:34 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:164f:0:b0:434:dcca:d108 with SMTP id 15-20020a63164f000000b00434dccad108ls684953pgw.0.-pod-prod-gmail;
 Tue, 06 Sep 2022 19:33:33 -0700 (PDT)
X-Received: by 2002:a05:6a00:174b:b0:52f:c4d1:d130 with SMTP id j11-20020a056a00174b00b0052fc4d1d130mr1402412pfc.23.1662518013645;
        Tue, 06 Sep 2022 19:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662518013; cv=none;
        d=google.com; s=arc-20160816;
        b=F+OGzERuVGObi3jnCFK+FUqO9/tKUH1nypvNOi8GA7cOrBSfP+6yFXErr30DGWTMKH
         AEMoC5LRmzBWaJ3NtZ47vANiuja4l0VTA0FuwCIakY+qhvnNgdgaKsgh4VB9PTAQTqcj
         gEkJUUI/6ieHDDwocCf3j11/FLPhMEOyZSi1/cRq+tSxEYCib8zkkz+mJr/vZFLqHQL1
         OfwyS/q49PpXlXiuIbCKvQMjvBCglakvxdRdmigqMOF5lbz72Xbp7Qap0QNPoBdoP9vh
         DSVgdr4ZLWlsoO1GGhU5/n/UNg8TkX9o0s0JJitSw1k5AnltcvSzlyFSxsDGgFSo5CpX
         sMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=/qKnrqfna42BscxjVR3iBw6VzPUs+TAMfuSmcuS7VwA=;
        b=orLb0WzaksB5GvEys+B4bVdp3Xy1D26xKQksSZVK3rTTH2hSYqK4W1LKC0NNWqE/2/
         q3o15U3cei6Udh5n+z+jU74Px2Blg/UtQjCmG1QwCthE8wBCCqrPPbkrnYNirCLF5e9q
         YgpB5zzKNgB+OyZh2jNe0weIS8rB8uqgMKICsavF79MSP7PwY1NJ9WoBz0TCheG400NJ
         4Q6envRFz1UbXQW5xOUqOFCKSBF5pkz8Ljg9DMhPSn8DcyaA3f/8N/77rwD0cAel32JR
         eQ7mAWtX89x/l+w74DMa4Ca0Xojceswhv5REe39ehqPYXLmabPid65GaieJtcblZjCos
         5yMA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id j14-20020a17090a31ce00b001f3e1e8f91fsi13284957pjf.22.2022.09.06.19.33.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Sep 2022 19:33:33 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 8502a2e9897a48c1abecfa665379da46-20220907
X-CPASD-INFO: 458630f5711143d0b8de6b53f41ba9e0@fYVyVmBilGVjUXN9g3avaoJplJVmjlW
	CqG5Rko9pkVCVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3g3dyVmNelg==
X-CLOUD-ID: 458630f5711143d0b8de6b53f41ba9e0
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:146.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:14,DUF:4211,ACD:72,DCD:72,SL:0,EISP:0,AG:0,CFC:0.208,CFSR:0.156,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 8502a2e9897a48c1abecfa665379da46-20220907
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 8502a2e9897a48c1abecfa665379da46-20220907
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1261898946; Wed, 07 Sep 2022 10:33:55 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATH v1 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Wed,  7 Sep 2022 10:33:53 +0800
Message-Id: <1662518033-17777-1-git-send-email-zenghongling@kylinos.cn>
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

Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
change for v1
 -Change the email real name
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662518033-17777-1-git-send-email-zenghongling%40kylinos.cn.
