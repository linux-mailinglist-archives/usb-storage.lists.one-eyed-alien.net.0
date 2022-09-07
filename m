Return-Path: <usb-storage+bncBC6MZUGU7YMBBTEP4CMAMGQELS7JDVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1FB5AFA4E
	for <lists+usb-storage@lfdr.de>; Wed,  7 Sep 2022 04:54:06 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id dc10-20020a056a0035ca00b0053870674be9sf6768045pfb.12
        for <lists+usb-storage@lfdr.de>; Tue, 06 Sep 2022 19:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662519245; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z0OWIHl3KUCAdAjZsS8LTif3rmicVfs1L5YNiYBF4Pf0fGkgZoXbyV4gUKazfFT2dq
         MHp4Z3U2ZgSUh6CZOmf1CVcQ6O3jH8ofXkDd71HG6Z+ZJQlf+v6RfavoFbaNqjjbrZEG
         JeyY4oMQQ1KOLbbIHI+UJ6uKkl42PdScaxQhZXi2gZaq8kCoxRp4TntbWN9VXQTIUXcj
         AikOy58RNVVQBC1m9IF1BYhsVin8C6vmuMRu34+bSQn/WLq125KxPtKhjZDj3kpT/dbY
         41FTcucsk76g2sSPPcpt8HMMchfgecJp7Y4DVNgflqdylUYXVOPeAMurJYRBulaG8H9a
         dSEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=tS1e95QTUYQGJXDpk4T9+2iOuCBYDVpxseQtgrL68jk=;
        b=AjW53QDQJtIep63Qi9bLGIHUc3LEFm8YANLKCMYMhSls35CUMAH98akuCz60vYEvgH
         Cdse8dJIzrtvWcFcQZxsNL1QiZvazU8PhoC2SBU7aqJG/EQ6o337xvXUoHqwYUZ2+iff
         FjCX2a202CCk+Hqg+BcT6fM1a7iHUyzkec4Giusv6roX1bIM2K/Kytcxzlh9sXT06aut
         VIZn1sZGnpqmWvLKvYn54BBQ+O7Y+rYm2UqokGmM6meJxmNoLLVRxomIeDA0RkT8sQ9G
         P4Vd4Pbgy1j283KXDT/7kksjgsNERq1K8Tzp6+3cnHnxDG2AqpwiOPUb/BXNVAaaodcT
         dz2w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:message-id:date:subject:cc:to:from:mime-version
         :sender:from:to:cc:subject:date;
        bh=tS1e95QTUYQGJXDpk4T9+2iOuCBYDVpxseQtgrL68jk=;
        b=fjFEFT88g4yqRI3WCqj1JQ0BLQssq4Pe4X9r4FGiK0+UFUXShwfYy7BBmFdUs19q1s
         RLtwtXai9JzhPXyP3SaPUQQh/S5djat/HAu5NAe1cukeeUvxMoidvZpy3iQs1+yB0oCz
         Xa5tD5bSfVplqpZiaFpLJXglwTKEuw5KZ31WM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=tS1e95QTUYQGJXDpk4T9+2iOuCBYDVpxseQtgrL68jk=;
        b=zpvxOqfWB1btAhQMoEi/DFk8Q6VAMNCXH+m1dZbw7xt4OF3UGnTkbi4OJuJX2umPEF
         t/cpN4g+jUOTwCfKJZZ4CTsa+2sJrE1rcMP8V0lRJchNI18Zxm3gB72wkL4SQpGlvzPO
         u4VWncUAAhEJHl4DW79QdQrWJyv6WSK3q+dI8y0GQXyo2ZfOkFNl55RfDR7Va+7YWuEe
         J3MsWjkBmyz6243xImRN1y+MTLcs+glq5c94Mave/tcTM7TwPVVO+xMoScRFqf0IAbgl
         4WsYa/pdVSy7FQWhmC8ZjlxVBlGJ7TP1HI3p/57sw8xftythq8syTQ6rahONAcbqvBfk
         Eoaw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0Vi/XmDZ1Br7yvwIIp0KM6GSa63kCf0MFFfvDPu778F9XZIPWd
	AfozEy2dv6LTeJSvX8UN0n1qWA==
X-Google-Smtp-Source: AA6agR6xdnJsuIp4bNvlR3apuzbRmtq2JCBDVVM/0cjeKJuD7aBTF9sK97tmgv3kWbNoorGiVYTcgA==
X-Received: by 2002:a63:4f4f:0:b0:434:b9db:b9f with SMTP id p15-20020a634f4f000000b00434b9db0b9fmr1568184pgl.438.1662519244679;
        Tue, 06 Sep 2022 19:54:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:82d6:0:b0:538:7a97:b81b with SMTP id f22-20020aa782d6000000b005387a97b81bls8694263pfn.5.-pod-prod-gmail;
 Tue, 06 Sep 2022 19:54:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:2395:b0:536:8296:51d5 with SMTP id f21-20020a056a00239500b00536829651d5mr1597410pfc.84.1662519243940;
        Tue, 06 Sep 2022 19:54:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662519243; cv=none;
        d=google.com; s=arc-20160816;
        b=t7svz8u7I/x9aVu6LitlaIYho6E6OyhOSL1QAlZxicXdior15Ci0SccjWKQbx2CbtW
         HDfRR6xWCHDNqldSRUuIM+RKvPkgfYd8gwxUklgR3QMQFtkqZyeC7WF0JrZORvr/zmd3
         WusIEpcSJKPe2xvz0n7iyqM/OoYjoM1ODJy4tGnfhfOuETs9RkutAOUFfJSNS4Xo6AEX
         BYOGDTTWqsV24+jplDhWJg3t5dgU0gptKFfKQ7vtAnqnKvYtpxSiM5czI2s1AAWm79ue
         9eOsieW3ye68fXYte1QLVVv9BXiSBQQo/SoQlylB1caroS1QgjbKUHgOJdA1sI7ZHz2p
         OI8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=f75QIM3tSzxQbbSp32i1ybldmHcdbtNkbcwGAtqquu4=;
        b=FUMPQYlhBxqfecfqw+20wNbyTICmexkqDflt1dEE/Wv7W9iobDiTkV+7NTzeXlVF2Q
         +wB4kyKwHiGHDzi5sOl0s6t2eoJN1/68RPFq2wK1RNBk+igQ1+cAnyNXZZV2eKZqcWSM
         UiutpZ/Rmu0wpMLOxFos8srZbuZ7iebmJ+rQXW/PYTO0kAMcVue/9yRUkZa1DopzhfGV
         w6z7mgnbNj4hQeEZdLfsH75zLYHzxy6+uS2Qer05oQ7xZy67KNUvI9F3ezT/TiI4Q0sV
         6+kPWTMuO5Bd1HH+cByfwzyYDpKCGjSCAkWw7XRFhMt51ho2yWMfIl1MdicJ8NJev1IV
         1bQw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) smtp.mailfrom=zenghongling@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id mw17-20020a17090b4d1100b001f5902550c5si12474187pjb.155.2022.09.06.19.54.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Sep 2022 19:54:03 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of zenghongling@kylinos.cn) client-ip=124.126.103.232;
X-UUID: 3d00f30be93649969f28105c82ec9009-20220907
X-CPASD-INFO: c78c7e3bcbae4b28a3fd479f7b26a936@rIdyg2SXYZKPgqOxg6V9coFklpRkY1m
	1eZxSZo9pX1aVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3snlyg2mTYw==
X-CLOUD-ID: c78c7e3bcbae4b28a3fd479f7b26a936
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:172.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:123.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:2.0,SPC:0,SIG:-
	5,AUF:18,DUF:4221,ACD:72,DCD:72,SL:0,EISP:0,AG:0,CFC:0.308,CFSR:0.104,UAT:0,R
	AF:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,
	EAF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: 3d00f30be93649969f28105c82ec9009-20220907
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: 3d00f30be93649969f28105c82ec9009-20220907
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1856273885; Wed, 07 Sep 2022 10:54:27 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [usb-storage] [PATCH v2 3/3] uas: ignore UAS for Thinkplus chips
Date: Wed,  7 Sep 2022 10:54:28 +0800
Message-Id: <1662519268-18488-1-git-send-email-zenghongling@kylinos.cn>
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

Change for v2
 -Change spelling error.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1662519268-18488-1-git-send-email-zenghongling%40kylinos.cn.
