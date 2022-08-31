Return-Path: <usb-storage+bncBCS25756ZQFBB3X5XKMAMGQEUPU53SI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id A01915A7390
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 03:52:48 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id r74-20020a632b4d000000b0041bc393913esf6350703pgr.10
        for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 18:52:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661910767; cv=pass;
        d=google.com; s=arc-20160816;
        b=LiU9Hrydu9WQOBxMb8iGvgQ4ko9JYpDCuibTQ/CoTbz0u4y+5oYlbPM2oa0QgBmIno
         NDnOfF02TRjNjvZ7wML2n0UskgV7h99ZVa7W4A0Mrw73OOb/s9gF310o03ZE1y//FUk8
         TBOWkxezX1jQAyGYN7O/sWjJon69roRD2JxWJ59uO9LIjAlkMDtWOZljnDYZVLS2ZMfk
         AJi2b3JjeJ9ZVk66cUzwBV/tS96zSNpvDs3s7DtBMjMGxLM95fA52/XtRChbM1d0JV6l
         jgP8qvRatfgZw6cJHhf0C/AInn3XZIXcnEgRJHskmCvcyeIGB6aiBhf6OPDo1o4EctDN
         s1Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=7HqDQAZARHZVmien1YBU8kC+fGLMbygx1A2lOaJTIuQ=;
        b=WfAJYHxP4rJ7Pyw/rb4tPnkxK60KwNve+MbIfc9/xPP5mqmhHbUqoqFfDjijBww02R
         m9xvcwkbN1/DdxFG58x4RanZjbqagkQUo+fA7uCMGhaPMmPKkvDuPvhqaRbqt40Nml1f
         JZD5ngpDYZUYeOYaNb4ivkCXlHN34t1o6jnNA9WdTx8GUUxBQIKsUZGcm1hAIzdGLe01
         HSCQGDxoGkpnTtkpEVdYjJj03QuEbo3UTVs+1GX5Mr0rC3FC+PAe+ySGEFQDD4E02LdY
         8iNwMKQtKv8RatxTCVpZExGbhqDv2CrNMoEgI9oT3TZlgDkHswQ4Ov6b91JLoBN3Svgh
         TNog==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=7HqDQAZARHZVmien1YBU8kC+fGLMbygx1A2lOaJTIuQ=;
        b=h9yVTGGYa8aLXCk/df59eGEtxecLDj0lj3cE58Ef3Arln0Ayy4HdY/98Sgz5TuOCHz
         PsKO3lLlwoBP04ZucVR1u2GwAsIIhXUp0tjKExbO5C9gl3ylfOHaaBQhQ6cQKhOXEpRp
         ePBMtmW+TEuFI9Q+L0n1Jc49MHlyTwszneDXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc;
        bh=7HqDQAZARHZVmien1YBU8kC+fGLMbygx1A2lOaJTIuQ=;
        b=vtV8YwwcG8zHDNE2iq1QwmUTaF+NtIyIPTusy/JBb6rcKxzfIyuiwvaJW2YrPGqUoY
         BFOEQYt4c8i7PUPZKDLqHOURikDOCapdFvAl+VKuKkMnxKbxgn5ISgyBUUDsnX4mu6XL
         MTVN7CEgZsGgfoJYK0aRWM203zUFomH4tmZ6XxMOP8NBW5OF68Y7VG2ozouz2zX1Cz19
         1ZctDyqhHJdmS5Jt1b8P5jmajLuvqEX1tIQJTc6R7Z178vS2cH0b3K4JY83enTopU8VP
         fIJZCfGPyhbViqKiYAuh0psUXd1Mfn4FUzZk+nTBgyUOYMF++72+ddSjIByOAPImuVsu
         8yag==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0PEer+XkYhddc/wD9FghONxg1d7ta1eXLveJZX6vYNgCS971iG
	XrK49OHurnsoNJq4ycC6qQBJ+w==
X-Google-Smtp-Source: AA6agR5T2A/qWLxks5gUh5AQmg6sr04ZOF+co0Fh2AybkhuhsIW/c+kQVey9Mac+QmJBFYRAmSH5uA==
X-Received: by 2002:a17:902:d4c8:b0:174:a871:152d with SMTP id o8-20020a170902d4c800b00174a871152dmr13911419plg.4.1661910767086;
        Tue, 30 Aug 2022 18:52:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:6f41:b0:1f2:da63:2f68 with SMTP id
 d59-20020a17090a6f4100b001f2da632f68ls2588439pjk.3.-pod-prod-gmail; Tue, 30
 Aug 2022 18:52:46 -0700 (PDT)
X-Received: by 2002:a17:903:484:b0:175:1b64:d437 with SMTP id jj4-20020a170903048400b001751b64d437mr5638183plb.68.1661910766292;
        Tue, 30 Aug 2022 18:52:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661910766; cv=none;
        d=google.com; s=arc-20160816;
        b=OhM4DKVKT3Eh5GIarUfBD2eMlOvsz83TYPOXKqwB4Jxgxw4K4gMshh9NzDJddeHs0t
         ffwTZBtAYeDg6u2I/IBhmKE1/I/QCseaWoE2K28S9EbdTLPh7vFo7bYKFGn/Jd43LYRy
         A3LanLtZxnEp+khOG094/NHF7etaB/D+d3LCQJYhZZ50A5YRpZTwAa6gGM1aSbtceQLj
         nr5NpvKdZcTfuw0iUQkDdz95a/45U4BEkwBf8Joq1yFSh3l9bMRbMPN9+MW1pc8e7qiA
         4T85Pe7lhkOTbVCnokv2hJiZy1cWIW5J+oTYiFUN6ELVHSJ/Ppo/GQhRw/0yY5OI8fao
         WQMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=0GdUEL5Xj2pDXKBE7EwvYi9k8kXG1VT0WRr7/eJWhXw=;
        b=T85m4ZOXPA37mAH0Xzne6600d5NPzG59nvRDPsbJGF2H3ltLAM4MgW1PvvFfdO+6vF
         T9qRgGoMtjLEdZn7qEghM+HuK7TWdTeeq+hqgOMnmfgIESquHHZjpcla+ooxEwt6UpfZ
         mOkm/16p7BES8dSLykG5ZGDnFXs/4hqF27RIVK7yifYVynQj8TEDuL0ZB+kFUF5jjVaB
         auZJuG0NxOLWc0DFhqr828sxjTdzkNL4Kd0TQuu4QVIaVHqqJYErNN8XXJSwu/9pvKSN
         0w7AEwRfiGbUMAgxJpvsUCvfQeODIPPHUklPh55e0CmepZE3L75yMEq0j5j4HRUkyHDQ
         T65A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id b20-20020a631b54000000b0041d70afeebasi3906437pgm.652.2022.08.30.18.52.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Aug 2022 18:52:46 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: b06198feaa43475f977da810b3909272-20220831
X-CPASD-INFO: 3dcdee8cd1a341cba5870ef212fc03d1@fLSdhJKXZpOQUaN_g3SunIFmaGdgkYa
	Bc2yGll5jkFGVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBjXoZgUZB3gqadhJiTaA==
X-CLOUD-ID: 3dcdee8cd1a341cba5870ef212fc03d1
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:3.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:128.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:3.0,CFOB:3.0,SPC:0,SIG:-
	5,AUF:4,DUF:3605,ACD:65,DCD:65,SL:0,EISP:0,AG:0,CFC:0.449,CFSR:0.05,UAT:0,RAF
	:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,EA
	F:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: b06198feaa43475f977da810b3909272-20220831
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: b06198feaa43475f977da810b3909272-20220831
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 753277048; Wed, 31 Aug 2022 09:53:00 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: linux-kernel@vger.kernel.org,
	Hu Xiaoying <huxiaoying@kylinos.cn>
Subject: [usb-storage] [PATCH v4] usb: Improves USB2.0 write performance.
Date: Wed, 31 Aug 2022 09:52:36 +0800
Message-Id: <20220831015236.1119093-1-huxiaoying@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: huxiaoying@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 124.126.103.232 is neither permitted nor denied by domain of
 huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
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

USB external storage device(0x0b05:1932), use gnome-disk-utility tools
to test usb write  < 30MB/s.
if does not to load module of uas for this device, can increase the
write speed from 20MB/s to >40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
---
change for v4
 - Update two email addresses to be the same.
change for v3
 - Does not send html mail to the mailing lists.
 - Update patch, which sorted by vendor ID and product ID.
 - Modify discription, correct some english words.
change for v2
 - Update discription for patch.
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 4051c8cd0cd8..3925c7c67915 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -62,6 +62,13 @@ UNUSUAL_DEV(0x0984, 0x0301, 0x0128, 0x0128,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
+/* Reported-by: Tom Hu <huxiaoying@gmail.com> */
+UNUSUAL_DEV(0x0b05, 0x1932, 0x0000, 0x9999,
+		"ASUS",
+		"External HDD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_UAS),
+
 /* Reported-by: David Webb <djw@noc.ac.uk> */
 UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
 		"Seagate",
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220831015236.1119093-1-huxiaoying%40kylinos.cn.
