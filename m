Return-Path: <usb-storage+bncBC6MZUGU7YMBBC5Z6CMAMGQEQBZ6HZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E405B4431
	for <lists+usb-storage@lfdr.de>; Sat, 10 Sep 2022 07:11:40 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id b25-20020aa78119000000b00536a929d8e4sf2103110pfi.1
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 22:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662786699; cv=pass;
        d=google.com; s=arc-20160816;
        b=09qn8g9jvBrCWKFbsfYHmo2XkA5qi17oSVuWonNZGw2SXUV06bcjFVmPpfck1ZbvkC
         yJl1BTsIJ6s1T7FYyE+CRER87sD/bzX2OaNWVnceWx3BHFP5en5FavbxSCa42oa1IqJD
         l6TSXbOaUjGh3rzg2JSKhrSYTsDYs85o3gEkukBbBzdXLKq2f87lCTY9uDPrwmTbQN3F
         +tl6iSGmIp9/PGmSYetwFSy+09nVJ1evlkEXsrW4BJP3wfm0gn6x6/kkZetnAWHWrI6m
         nPu2oIucldZZoq//LvQHdHTK40DoPm29SsWSsV209rhKZiv8hKn76wfY1LcH8rfYZbLz
         j4Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:cc:to:from:message-id
         :mime-version:sender:dkim-signature;
        bh=cavwkQBP11DFd9CKIgaavRJhMdJ5hv9soM4U+f+2e6o=;
        b=tCFBI+Fm2OSXvnNMQpU5L7SLkkFOPuRFpWK3sDCTXkhdX/64xtm7OFA/GSY4i++RPF
         obFeR6tU5efvY3Mt4aGAuTt4FryMfyfA6deE3lfxlRz2BFYCQUtFchZQgziNMvm3ezy1
         Zm+Vvx2MB5Fgn9n0Octa98bv7Wexd4ELGKGH1VHpH4qSfJXUKcTDmyMiMyRpvFYFhveU
         jNscw4QdxCdhWNLE3nk8NvwYgT/ZJgJgEZiZp0RFOhPuRA/p2U1+U/APyiQT8ZdX9LrT
         bX9lumUbE/3iawzsf7OCRBNDqrPS0kLlDbgJBPoGPbSsB3iNBWxVhAV2RbAsuCsjp7ju
         3p9w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:date:subject:cc:to:from:message-id:mime-version
         :sender:from:to:cc:subject:date;
        bh=cavwkQBP11DFd9CKIgaavRJhMdJ5hv9soM4U+f+2e6o=;
        b=H/eLHKTlsFiLfoBM3tjbmvITdyMu5K4SpWWA4ERgyEVP0aXVJX6kXLH/KR+7TY3Ywt
         jYeJZZWPBayxlNnRigrObhHG/IVI4wTzEqJkg0c9a+2E/S96qLOfHe+af1dhwb3ykxGf
         sfM77XXb4cs7/1f96PF1gTsP+qrO4IM9XG/eU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:date:subject:cc
         :to:from:message-id:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=cavwkQBP11DFd9CKIgaavRJhMdJ5hv9soM4U+f+2e6o=;
        b=VRuJgejfYcq1S2OmtLAjwgMeXSmOpYPh0rRhiyxK0snozlt0eQ+3g0aNylDoAmt4+q
         sIWioE9IFSGFDX4Kf4EGnHRDiKQPOxgurSGnz781O71hGnAHvNgJ3xTFV9jb25rDFEym
         Bi6UvTIrxFaGwt63SAFWH2+6V8ljOiAgQCovIuOxHBju654E8AimRRc3tY9y+lmyt7GU
         utcBU7U/fZI6RjInDNrfF8U7D/bNldPz9e9SmjbbDjgKCnUEdckGeojvY5hV+jJs4qz0
         vdMYzac4nXxb+U5DDAVVBdNk8GK8gdetqgKmmv3HjBbu76LeslSfBTnRyiIwy23fH/Oa
         b6pw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo21dnLi1NVFzmxdx3Ci9WC2Iba0brD+gDCJi2hUgrHmDzLvdTfu
	rMOc6rKViOZBzd9KnXD/YVMXqg==
X-Google-Smtp-Source: AA6agR5F4zpm0Cz/x5taX6XvTph/l3qN931KV0vNDg0dlBJKrmFBEfzOoNmwl0iFthaTIxMSZYPnIA==
X-Received: by 2002:a63:a501:0:b0:434:ff77:1fda with SMTP id n1-20020a63a501000000b00434ff771fdamr13216633pgf.310.1662786699324;
        Fri, 09 Sep 2022 22:11:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:a00d:b0:1f3:5f7e:7a34 with SMTP id
 q13-20020a17090aa00d00b001f35f7e7a34ls4353568pjp.2.-pod-control-gmail; Fri,
 09 Sep 2022 22:11:38 -0700 (PDT)
X-Received: by 2002:a17:90b:3b4c:b0:202:989f:50c4 with SMTP id ot12-20020a17090b3b4c00b00202989f50c4mr4252904pjb.229.1662786698508;
        Fri, 09 Sep 2022 22:11:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662786698; cv=none;
        d=google.com; s=arc-20160816;
        b=ipGcozBFpkpPmBBkV3tLd3Jw0/xQlOks8d8ckogtW/NNSJ9WeUnlfR/UWThq9boiky
         mDPsn8/r7etlgzTpLYzA/Q2FOo6rnCp+YsGfj7onqNDlW9bUSvU0ryi6OQ81cWC/8HlQ
         bfErUTyhtgnI/5kFYNZA5XoeDMtm97LliCPFnyVR3JcGU6Puj6+acuTXR0CIQkPsrFKX
         7cTIdVIxh/7aOkMNjsZ1PS0w4iTpgw2RL2iC4d90q2K3e9TdnxkpkJt/iYnEamkFEwU+
         Gtmb3Lo+SGZBYkrJ+0y4+wc1gMtr8wHpyiC9cYwIIe19qhZeQiWsV7LDKgPTBl8YgEg/
         tkPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:cc:to:from:message-id;
        bh=mtTY9Z0S4Igrj4Sk7Qmj2aqWZDN07reAC+1MsSvlWVY=;
        b=fNlKQNrZ+erxRpHV0c6tmqMNCbNrJr0kazjs6bvii4fFStKwVu4OufWnJMkpNbm39V
         D5CX3K1LwrBRi6J4K0CNbk05lpV+0CKX6GAIz2uVA2Oaa0WwTMPlqWS4LGad3mS/cBsw
         UvpC8d7o6eWBXdMM/cc9rDZ17ffxf1K2zJZu20mUCNp/VoK8jnmQUnQho75kGUtOIH7s
         O1x2oWcgeFbywX842lywBYfirmAfKHOo7rSDXVBNf5gKgRmrPqSNlvqQC2UGH5bG6ZZi
         tPH2QTJNKikkrlEQ444C2amaMnN0jqKEjCr/swf1DkPxCT6p3qbMBDSx/hXJwqvcTO4c
         wvUw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id c18-20020a63da12000000b0042a8ba84c15si2672028pgh.17.2022.09.09.22.11.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 22:11:38 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 2927a0b319be4192aefb1c26302fbe98-20220910
Message-ID: <1662786724148418.11.seg@mailgw>
X-Spam-Fingerprint: 0
X-GW-Reason: 11109
X-Spam-Reason: Heuristic_Spam_Fraud_546F022B
X-Content-Feature: ica/max.line-size 82
	audit/email.address 2
	dict/software 1
	meta/cnt.alert 1
X-CPASD-INFO: 419e086a96be42e0afff3cd9e3e21feb@fYFzhV1qZJFlVqSxg3WwaoGXmJJTsqZ
	zhWOTYl2GurSMbFJkYl1ZgYFqUWJnX2FZVXp4blJgYGJcWHh4lHKPVGBeYIJUdJOAdmtZlV5o
X-CLOUD-ID: 419e086a96be42e0afff3cd9e3e21feb
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:12.0,FD:0.0,CUTS:166.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-
	5.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:
	-5,AUF:33,DUF:4509,ACD:75,DCD:75,SL:0,EISP:0,AG:0,CFC:0.256,CFSR:0.104,UAT:0,
	RAF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0
	,EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 2927a0b319be4192aefb1c26302fbe98-20220910
X-CPASD-BLOCK: 12
X-CPASD-STAGE: 1
X-UUID: 2927a0b319be4192aefb1c26302fbe98-20220910
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1185665759; Sat, 10 Sep 2022 12:32:45 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v5 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Sat, 10 Sep 2022 12:32:38 +0800
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662786724148418.11.seg%40mailgw.
