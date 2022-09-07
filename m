Return-Path: <usb-storage+bncBC6MZUGU7YMBBFMG4CMAMGQENH4XMUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFD65AF9E7
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 04:33:58 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id o14-20020a17090ab88e00b0020034a4415dsf5788548pjr.6
        for <lists+usb-storage@lfdr.de>; Tue, 06 Sep 2022 19:33:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662518037; cv=pass;
        d=google.com; s=arc-20160816;
        b=hghF+G3+C5yEqkVJEYg3QIuWtUgn/hoPId8PL8G7PUJpys2hGdDyJkS7zbJNwVUNum
         0lrEeyvneKJbs7g10qdE8pKYP/dNyt2M+XcnhCmzdFEvOEBdj7noDzFGPs1acbEGXgys
         hrBJupk+PA0aBER6broVYU/TYkEMbvst+gyjtCEeev/pooEtQ69eFeujzPgPS5yaQim4
         lHI0yYSZiEC4hoBn5BYu2TVyTZi2AgEAv/Oi7lTN1QskYSrBrHiQbb0kBtZVa+R3KFs+
         5Z+vjYGAaI8jUfTyB1WkoKNVzwVpPogwShg3M13cK9v7mL1+RTH+qGd0UuScZYUTPZTQ
         Nfgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=NKo95XLD9rGSFq95Y7tmP1hinGc74lYjPJTm3akqYfE=;
        b=oqqOcErNKSQVj/wZYVz0L/Z3r6sTNN6KAunb+tNIS3ExhK6wZ0F5wySs69zd+u4Kzl
         6WniAUCXlD6zd6Mm90ye3WeqRogwbhOWANpJ2EFg9kIa9GYfv2oqufKme8GOviAcG/LS
         W3SxcaRhLa+aGdMmiTe5WCvJfq1VnGDrxyH1Y+mOoCWBv/7SAG667wREgBuTvSs7Z04V
         3OMIJeCFKesJXYLwBiOEvS0ylBgPO0MyLcu2je2PQrAag3kxcum44yZTmaUK2vgqA/5N
         YNLNiXvs+oOyLwBysMZb8TdvwBcc0+Bk2ldZCAwJLF4UY8COE1e23BAsWvDQytaho9Qk
         O5vg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=NKo95XLD9rGSFq95Y7tmP1hinGc74lYjPJTm3akqYfE=;
        b=B7w74drJUCD7GXzJJU48WUMxZgxiPFxcRf+L/3kP/HG/TDUEKb626Lnsn2Qxk8Dq9P
         Ar4OfByvv4ek5Y2a0ddwifVlTL+oc5VfBsb9ico6j0QfGlV1mWsyLxcDKrJ3VIxy98px
         4fzdL76P2EzBdtyCQOBF96x3S0iMRLewa2rxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=NKo95XLD9rGSFq95Y7tmP1hinGc74lYjPJTm3akqYfE=;
        b=GLaPtg+tMlV+3mAND6B+/zqDD1ov9v3tRtxVlvYjWvQH0wPJryMGuujAeNTkVWwuzr
         lJPxht2Om7hUUWzuaDS10p5CSx6IYT+3QcdXOm1UaOMOpnC3UCSOkX+/8YD+x702KAQ+
         V3Xn0P4m2S7Kd8wqLwOyudMf9qL/W+lovPldRY5CBV86JGe+bw4otNs1ROvBBVI0kZx8
         75MIDUtaAX/fNviQ8DEswP+8oQw1F2PZwjG1oJ6GjC2R46TBru2ws1jQHVxtnhJGZElE
         Ywu1t9qxu/FJwM8tUnkLWlLUqDvyFL6mm1+VDptdbUPMJasMPBkYWztHI8EvYVhRDt91
         rcLQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2d28ouXcEV6HUnNHEJC0MY494ZnyulRBJpf0T6xSkWsBp7CMo8
	PgkI4EsdXYe0Bm+VfOZCrJ4sGg==
X-Google-Smtp-Source: AA6agR4Fc8oiJRzSHoeyblrG3F65vm643wxEAnTwGg2v8Q2/bCEu2qqvMsTVbJrTYhWqWobBx5GKiQ==
X-Received: by 2002:aa7:910b:0:b0:537:cd65:e7d with SMTP id 11-20020aa7910b000000b00537cd650e7dmr1518660pfh.63.1662518037561;
        Tue, 06 Sep 2022 19:33:57 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:acf:b0:536:9915:e9f8 with SMTP id
 c15-20020a056a000acf00b005369915e9f8ls8670103pfl.4.-pod-prod-gmail; Tue, 06
 Sep 2022 19:33:56 -0700 (PDT)
X-Received: by 2002:a63:5620:0:b0:429:9ad7:b4f2 with SMTP id k32-20020a635620000000b004299ad7b4f2mr1464741pgb.162.1662518036833;
        Tue, 06 Sep 2022 19:33:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662518036; cv=none;
        d=google.com; s=arc-20160816;
        b=C2pGSVvdCZBCp0WC45qETiUtM38yURGrgxkb9jqFujYy4TZT+t2arahtDy60FCVBb0
         KoLbQFJF6UhiieDj6iEu/F/LNXXekKqw16nhvtTRleNrsf+tG0Hryu0FoOfBS+XP58ka
         ZarnNto3ywqG4cJKSKjD4lGQeyzmaYRgY6hpDPWpbUAW7MiW2DhaCStti0toFo6UrRSK
         vQT85UWBAqHgjIYnWLlEhbkgrx01GPu2jwYjaix//p2g0jUjmrX4Pg1qOQSkDQlUAbbb
         KoHlWKwTBwGVuTVGJ3ljyfrBn/5tPKHhgwGkgFgkVe4sHr7rwMPvOIeHhJuZqe+7tLdZ
         ZFzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=t7h3uaPtxU4in8J0W6iXobDg8JWYo/geKrMItFHey5c=;
        b=VceN9jRHLtXS9k81XV/UEjGVLs3KliFVM4e+rASSS6UJROIGB7V7DqULWMEiRuPoU1
         7vS7xSq/N+RgWvewBMN3I8xi56aypClw3chxfLNaMW4VxlFDmILy8qIdn8Bp28iUaY0u
         g0D0eiPFR43olOVGfPTOQ4Onsyj/KCrTkR7E8xFmS/gWpF9mGF3r+lCGBu/LLJ5CpERI
         RRaeCEwR+X1NF5imyL35EUknh/Hm5PgWnONkKszpjbmExULxvBEfxyhsdIyTmeaxNwkt
         1T/mTwL+/a+zAc2LoWXQsF2PwQFSNW/DdMz+JuzNsc+X8Mwptt1lgXxGsodJFoUU/qAl
         IXsA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id jo15-20020a170903054f00b00176bb74d927si5391150plb.230.2022.09.06.19.33.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Sep 2022 19:33:56 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 021d893284f34916964152b9cf7392df-20220907
X-CPASD-INFO: 8a1482a0888043f89e2d50c5877497f9@gbFrVGVkj2BkWHp8g3axclmWYpRlXIO
	EenFXZGdnklmVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3h6NrVGhgkQ==
X-CLOUD-ID: 8a1482a0888043f89e2d50c5877497f9
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:119.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:16,DUF:4213,ACD:72,DCD:72,SL:0,EISP:0,AG:0,CFC:0.325,CFSR:0.105,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 021d893284f34916964152b9cf7392df-20220907
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 021d893284f34916964152b9cf7392df-20220907
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 298534234; Wed, 07 Sep 2022 10:34:21 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATH v1 3/3] uas: ignore UAS for Thinkplus chips
Date: Wed,  7 Sep 2022 10:34:22 +0800
Message-Id: <1662518062-17875-1-git-send-email-zenghongling@kylinos.cn>
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

The UAS mode of Thinkplus is reported to fail to work on
several platforms with the following error message:

[   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled
               endpoint or incorrect stream ring
[   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000
               1b000000 05038000

Falling back to USB mass storage can solve this problem, so ignore UAS
function of this chip.

Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change for v1
 - Change the email real name and the code worng place.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662518062-17875-1-git-send-email-zenghongling%40kylinos.cn.
