Return-Path: <usb-storage+bncBAABBO4CXGMAMGQEY4GWWSA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 026985A68E0
	for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 18:56:29 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id z27-20020a4a655b000000b0044ad2d0eeacsf5441283oog.18
        for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 09:56:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661878587; cv=pass;
        d=google.com; s=arc-20160816;
        b=QB4NUP3b2VIJpIokGwaGm5xN5Zr6EOatlNgbPDeYIYPBmjKEkWh1FAxXMFslf14LEF
         5YXzSOj5+7f9Iu0h6Nh3sy6zhFj43+tWrQIRnWTs2GsfAeMokbi9KvIg1xSKsLyIenkj
         /Dk6cWKjlDnE7CeswSJOh4G+icFl3knAHMs1c+xTOT3ou6o1tjp03HzugeK/iC2cgiOt
         ta53NkrpUIf32KcrBp5d13UbopoaKcz4zQxscDzGxyhPnyC9cq7IrdVK+pwIbHlYR5vy
         +39kR5/wtgJaUJ5RR7kCehncDVoatIJrTjsh0sqoi/eQxUNNes8h5Bf8Cl5Z48MRWDUN
         dbfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=z7jYiFg/aibU2TcpCCZOtxZslryNseOR1R0BT9aJ0CU=;
        b=Y0SYR6httlgjfxae4vOLn26ov89PkMLDCkzgAnOD1yp6kK1+Ebh0Gc38v8kUkMT/CG
         kynZRK6mIFm5z9Bm6OKa2w0zFffisZYjoumBpPk5smNIy9KXiReFH6lWpWGHEa/DuMPV
         N6GQrDX9zS7+BUmdQfD9qMBoiB9zov1Q9GUdlVP80UN5abTpvfvdnfM2O1A1PpPkP/2h
         paYcOu9hBergohVPB82tU973xDKDkaUJs05xlJAKYrTK4qtQXCSqvySL13G08PzYh3r5
         K2/PXT+4vvoH3Tu9lJh+Uu2PsCiZXZ8yq0TnILs/ASmPJyy8Fm733hVXM2ZZVsK5ieXQ
         virQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=z7jYiFg/aibU2TcpCCZOtxZslryNseOR1R0BT9aJ0CU=;
        b=iLY368l4u5+OR0nbuWxxpq8NCmcHOaqjVUJ/C67u05zlv+H5ELxe612XcYv7CJixMF
         G9eIZRT4oAyVsSFhPDigJADYj24dg0gcXuJ8IZ4hiy9bPLOxrKbWxfM7Jg+s4lVbi0ix
         7skmf7rOu56TsPzKH8wI2U9OFJOY6xSEYv0yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc;
        bh=z7jYiFg/aibU2TcpCCZOtxZslryNseOR1R0BT9aJ0CU=;
        b=dDTs701Iql4twuvI0CICnAPDCTYteFviy1qWo9h2Cv2e92oGLKSs7sEy+Wg2HUkCu0
         fMM4Tgii/gzhRdBtYTRGrJBgdAUgUhslt801n6BNIs9Idno2fZ44tYQOouOiXiS1RHWn
         b08Xh3NJ/rh4c8D7bDt/GJFxnZv5jZbMJjls/LVmGhG2VKvgCRbvD7CMa4BeB9fRew1Y
         fCj/2qsWcJF7/7ohz41yxNg+YtVI2kqHNZOWF00ubNfACKhJFJwu8AQflCjwthgay6nb
         iBBHZzyaCX2O7tIl78naUQlHorhZqq8dsOPpjNnyUzKudXURxxJJcpuUDIfApYIJVFO8
         RZVA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0udWazm2cGR9KG3qteIyeOupBgA7UqGSU2BVWVjqj7QkFPiEgN
	+kxIKtfGQwP9ynsNSDTTbr7azw==
X-Google-Smtp-Source: AA6agR4k2CYp0J7BQnbKD3bB+RZ2ujRIchNLQPXnQNb2Y3rmehwCQdwHjBosYr1VAnaVJrQInam/3w==
X-Received: by 2002:a05:6808:1589:b0:343:7564:91ff with SMTP id t9-20020a056808158900b00343756491ffmr9518939oiw.97.1661878587727;
        Tue, 30 Aug 2022 09:56:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:6503:b0:637:18f0:d52 with SMTP id
 cm3-20020a056830650300b0063718f00d52ls2089890otb.8.-pod-prod-gmail; Tue, 30
 Aug 2022 09:56:27 -0700 (PDT)
X-Received: by 2002:a05:6830:25c4:b0:637:2a66:1dfd with SMTP id d4-20020a05683025c400b006372a661dfdmr8553546otu.383.1661878587123;
        Tue, 30 Aug 2022 09:56:27 -0700 (PDT)
Received: by 2002:aca:b941:0:b0:342:e42f:f566 with SMTP id 5614622812f47-345b6b894d6msb6e;
        Tue, 30 Aug 2022 01:44:36 -0700 (PDT)
X-Received: by 2002:a17:90a:6783:b0:1fd:ab56:5af7 with SMTP id o3-20020a17090a678300b001fdab565af7mr12903908pjj.39.1661849076349;
        Tue, 30 Aug 2022 01:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661849076; cv=none;
        d=google.com; s=arc-20160816;
        b=t20T3J79ULtfxiYKJepg/NHnODKpykbIaSHr4BhhzSCshtjZBPsd7ESYhhk9XN571Y
         DqUVU4jxYoNScuX/hA8jTy4bAFo6w7a/kGiyDP0jdk/QdK3JkR0p6djmyvz+wrNt7qoT
         CraY2LlUnN1c4V2iZ6J51J5qRpJRgJYKomXRQG/GaN7uggYD9YG6eg4EwN7OVrD+ao14
         wBk12/vPiwzZ9D7sIHZVLn1tF1sTfLdk6TMnynMgk2URDxGcZTExEcUkYKIpmezOF7Xi
         tp8P2yEgPr4c5CaVWB3YfVJzLYWNUkr6kQgGhKo7vHZyfakuahOV4CnMdi/+jBv6e+P6
         cL0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=uujR8Y9dCnklQ3gKI7gq7KQrXI3tQqDhnV9k3+DTIa0=;
        b=L8EAiSKL9S9ItwShXHz0iwwaN1pJYNCuCjzEyYVMq6Ly90Om2kCMbVfF9PAw4+oRm8
         CjijAtOdSo3O04TvzqJebJfTz1ITPQ0X1f7PJ6xkOg591iI9DmFyLfAldX6N/+uM6fqt
         9eXaRCkZYX7g7qJvIBm2jLpzs0T7Dyf7x5ycljWQrPxAdYQ2t9jYJVq87lbNQ2Ugg/I9
         xzW63BJGOL1O+aLr+dymJirvoVD/5iRrqEZRo7p6PBbd8BLZ4HvtwQNa44CuucEKSK9v
         e+2di/ng9K1X0StN28Wy/ePf2+w0v3VbI0BznT3zjwMfHykbLYIb7PXMNk8qgxxlD1Gk
         u6cQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) smtp.mailfrom=huxiaoying@kylinos.cn
Received: from mailgw.kylinos.cn ([124.126.103.232])
        by mx.google.com with ESMTPS id n25-20020a056a00213900b0052d979ab657si11163694pfj.125.2022.08.30.01.44.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Aug 2022 01:44:36 -0700 (PDT)
Received-SPF: neutral (google.com: 124.126.103.232 is neither permitted nor denied by domain of huxiaoying@kylinos.cn) client-ip=124.126.103.232;
X-UUID: a1eacdbadf364491962084fe0678a21c-20220830
X-CPASD-INFO: 5c614a9c99bb432ebf4fe4b30a3a12d8@frNwUWGTZ5NlWaSug3Z9n4KXZJaVYIK
	CcptTkV9ikFiVhH5xTV5uYFV9fWtVYV9dYVR6eGxQYmBgZFJ4i3-XblBgXoZgUZB3hKVwUWSPaQ==
X-CLOUD-ID: 5c614a9c99bb432ebf4fe4b30a3a12d8
X-CPASD-SUMMARY: SIP:-1,APTIP:-2.0,KEY:0.0,FROMBLOCK:1,OB:0.0,URL:-5,TVAL:173.
	0,ESV:0.0,ECOM:-5.0,ML:0.0,FD:0.0,CUTS:102.0,IP:-2.0,MAL:-5.0,PHF:-5.0,PHC:-5
	.0,SPF:4.0,EDMS:-5,IPLABEL:4480.0,FROMTO:0,AD:0,FFOB:0.0,CFOB:0.0,SPC:0,SIG:-
	5,AUF:2,DUF:3567,ACD:65,DCD:65,SL:0,EISP:0,AG:0,CFC:0.338,CFSR:0.081,UAT:0,RA
	F:0,IMG:-5.0,DFA:0,DTA:0,IBL:-2.0,ADI:-5,SBL:0,REDM:0,REIP:0,ESB:0,ATTNUM:0,E
	AF:0,CID:-5.0,VERSION:2.3.17
X-CPASD-ID: a1eacdbadf364491962084fe0678a21c-20220830
X-CPASD-BLOCK: 1000
X-CPASD-STAGE: 1
X-UUID: a1eacdbadf364491962084fe0678a21c-20220830
X-User: huxiaoying@kylinos.cn
Received: from localhost.localdomain [(112.64.161.44)] by mailgw
	(envelope-from <huxiaoying@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 2131062562; Tue, 30 Aug 2022 16:43:47 +0800
From: Hu Xiaoying <huxiaoying@kylinos.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Hu Xiaoying <huxiaoying@kylinos.cn>,
	Hu Xiaoying <huxiaoying@gmail.com>
Subject: [usb-storage] [PATCH] usb: Improves USB2.0 write performance
Date: Tue, 30 Aug 2022 16:43:25 +0800
Message-Id: <20220830084325.752655-1-huxiaoying@kylinos.cn>
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
to test usb write  < 30MB/s. if does not to load module of uas for this device
, can increase the write speed from 20MB/s to more than 40MB/s.

Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220830084325.752655-1-huxiaoying%40kylinos.cn.
