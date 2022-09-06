Return-Path: <usb-storage+bncBAABBAVH3OMAMGQEJTA6ZWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4265ADEAC
	for <lists+usb-storage@lfdr.de>; Tue,  6 Sep 2022 06:58:44 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-11c68f9ddd4sf5597527fac.22
        for <lists+usb-storage@lfdr.de>; Mon, 05 Sep 2022 21:58:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662440323; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLA2AOBegrEKK47sRBtw1eMt1BuMwyZSaNKNwkrnHAtrwO42VeBKJR6rRawjcsx+8F
         bOwVNljv/3ZU8LytWDPxefhDfPzpcIi1maZNj6S60jJZX83cNNNjOEmQPR8yyOW6e3i6
         6cYCtcg0REA1jtPLl9tOwguk5+d8T1tUCY5h1je8LI4hle4hLsLHZEWjHWTF4l5ZVgcA
         RuCOpy3DaNEKsSv0Np6HebwhsRCwFXtzrM4KGTbcwK9uiVKki8khng+RnyKUOgMtbTyL
         Gx3I2reFHYY7Na1xuoJLKgeJWeUgDU7PTNv8XX+alD5jMl+UKXjRDTve9B8PWYNDOS6B
         /JnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wA7djZOe/Dqp7jetww/EIH/ypwzfpB4VfJ717mlwm5Y=;
        b=LoenY8IcylqLSYNDvSj675rPkzBiGgxWQ2oY7Xhq7he+Ghg25SVLWl7D47ua/ebqVD
         b289ckpCEP/tuyaqxf9qbDFOaXvjUoeOHsaClbLH3S75xlCotlOEMxoIiyXmsGsmwOFz
         4KIYOSVKgkohLGNUxGp0F7WrfWA8hjp8HM/lBKAur1l9qqTTKA7MoElW736TDuFnN9ou
         /alPD6eUBRMGEwri4uzQliDsztjmXY9rQNlEMfKKwnGD1Fm9qAYCEJd332sE1EyhX6Kw
         GFKDV4f0HvSSR/ud5FAR2KiaWGtph/OYeCuHF3CJgCYwHL4J2gC2LwUzK4xzLbPvJXxF
         RgRw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=wA7djZOe/Dqp7jetww/EIH/ypwzfpB4VfJ717mlwm5Y=;
        b=lqqbVt8f0FlQrZOBklQRgKzyBIV48RVf4/xahIMatk8r/8PsCjMymLkCKifkVnMFBr
         MCAmUTLKXE2YVoYxclxkShMAqeCOXd34h16FAYwTgagdIxkWwGaJMy+YxDga2iIoLDPq
         CzxtUh20LgadJhmEQmroJeFI9Rj2OMXXZlzt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=wA7djZOe/Dqp7jetww/EIH/ypwzfpB4VfJ717mlwm5Y=;
        b=YsmeTqtVcIBW/jbBUsmduhBSv/ImkyucDvFap510ZR0SAJZR6M7UbEeUcmjqXsxxiR
         2R0zAop+UYHe4gbygwjEmV1SKwvzrNnjwp/tkZd1LPtE5Ua2bX1Yn3Kx06EFbtxZGB3o
         l12OGHOun4oofzfsfzH6jVCDUBMBMHzMUnxc033eh58d/FTARhSVGif3tiEZkqsTtO9T
         ewaWnvSC10gyDzuwdbsIy+V8oYeYtspqDsFBChdBOIyQMTUe30qadvwxMZoCXtg9UqAi
         OeWH6+Cetv3uZOUDszk/4WQAmkZI+bdpj/l8tnlHnRNLJArxlHA2wh40BSQ83fZHJIA1
         /rAg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1KLcsHc7c86kASMeWOqtb73CKvtKokazNPid3g0U+Do1nvUjrJ
	LUx0zzVHkXwXb0bDngPxhsaQcA==
X-Google-Smtp-Source: AA6agR69gkScZRc+nldQsAeSQz810SSaG8MSnpvIVQYOlYvqtJF2cZDujVEGP20glrD+QrZCIeB+/Q==
X-Received: by 2002:a05:6830:1bfa:b0:637:1491:2ac7 with SMTP id k26-20020a0568301bfa00b0063714912ac7mr21022710otb.9.1662440323290;
        Mon, 05 Sep 2022 21:58:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6808:5:b0:33a:322:8c2e with SMTP id u5-20020a056808000500b0033a03228c2els4236460oic.0.-pod-prod-gmail;
 Mon, 05 Sep 2022 21:58:42 -0700 (PDT)
X-Received: by 2002:aca:b01:0:b0:345:4295:e9b2 with SMTP id 1-20020aca0b01000000b003454295e9b2mr9233726oil.28.1662440322588;
        Mon, 05 Sep 2022 21:58:42 -0700 (PDT)
Received: by 2002:aca:b882:0:b0:344:8807:3e85 with SMTP id 5614622812f47-3499d4bad01msb6e;
        Mon, 5 Sep 2022 20:27:37 -0700 (PDT)
X-Received: by 2002:a05:6a00:acc:b0:530:e79e:fc27 with SMTP id c12-20020a056a000acc00b00530e79efc27mr53593064pfl.61.1662434857213;
        Mon, 05 Sep 2022 20:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662434857; cv=none;
        d=google.com; s=arc-20160816;
        b=x+T8TCyccwsX8ooHAg0ZAohPNvVrar2JTQFnZa+PJw3HLdu4sYUuK1QpT55sel2bzi
         s3Apah53SNWVaXgOwrCUy5jTrug494M9vZ2DVSt20JOHLLmaAUe68R4v10k1QFSra6Ml
         1JQ8FU2kFk9iFwhE90ziRWOz4dqoGf52CR290npJdX2hl9SExD1WGno31lAplrmH49sr
         o44KBnVRldOpNcXx+A1nMSU5nhAg+06M3HIMh8yj73I01BWZLu+vpQapKtHSJs3V0lYD
         bPZEcK4ci9gCGr43LHRtNmFCyTZuWyXnTyDwnAg9VbUw2ZL5rgV93yqM7rfn435lr95e
         9Iog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=lCoTpFDv944K+WbAhK7O8KdMV8JhkWr1yoV4qRsDcAw=;
        b=Rz1rUM4E3NO3+b8VQTnamBsB6Hf0RNj6NP+bOyDr2MdBWNDQydv4WdiFxluHL12M4I
         LdEgKxm+lMTzgxLeTC3LK8DMScDe98M5M8kkhTLcLZc+XdMvF5ImY+gAm8PuJHm8jRXW
         wJvAoYUCbIj3R9DlJOoulgkhSiYPsgZtyeKGEXXQNA6SJwXchkRxwK/ezUHiF3LeqBrR
         N1e7C6uYDsH34VJkTHy2iyJUahJOPLMBHX6bIojJDVdKRXo+tsegaEecAr4Q34MKqbcY
         fFyJvssKRN7oI6Koz3Rg5u3O+kLN4V7aH6E0Xl4j+/XnWfq6QxnFSc/b527OqpuO0T2t
         e+Uw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id ng10-20020a17090b1a8a00b001f561cba131si8368862pjb.179.2022.09.05.20.27.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Sep 2022 20:27:36 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 9ca6b3b5ee494520a2c44c9b04f4a8aa-20220906
X-CPASD-INFO: 743a436644ff47e7946ab9795cb4f12f@gIRtgWFlZGZgVKiyg3qwcVllZpGSZVe
	Id52CZZRhXoaVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBhXoZgUZB3hnZtgWVhZg==
X-CLOUD-ID: 743a436644ff47e7946ab9795cb4f12f
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:1.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:141.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:1.0,CFOB:1.0,SPC:0,SIG:-
	5,AUF:12,DUF:4112,ACD:71,DCD:71,SL:0,EISP:0,AG:0,CFC:0.2,CFSR:0.155,UAT:0,RAF
	:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,EA
	F:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 9ca6b3b5ee494520a2c44c9b04f4a8aa-20220906
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 9ca6b3b5ee494520a2c44c9b04f4a8aa-20220906
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1249559960; Tue, 06 Sep 2022 11:27:57 +0800
From: zenghongling <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	zenghongling <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH 1/3] uas: add no-uas quirk for Hiksemi usb_disk
Date: Tue,  6 Sep 2022 11:27:54 +0800
Message-Id: <1662434874-5116-1-git-send-email-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.1.0
X-Original-Sender: zenghongling@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Content-Type: text/plain; charset="UTF-8"
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

Signed-off-by: zenghongling <zenghongling@kylinos.cn>
---
 linux-4.9.327/drivers/usb/storage/unusual_uas.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/linux-4.9.327/drivers/usb/storage/unusual_uas.h b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
index cdff7dc..2fc6787 100644
--- a/linux-4.9.327/drivers/usb/storage/unusual_uas.h
+++ b/linux-4.9.327/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,12 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662434874-5116-1-git-send-email-zenghongling%40kylinos.cn.
