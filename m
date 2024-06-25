Return-Path: <usb-storage+bncBAABBJG35GZQMGQEYYYQG3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFBF915FA4
	for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2024 09:11:35 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5babff5b1easf7278342eaf.1
        for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2024 00:11:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719299493; cv=pass;
        d=google.com; s=arc-20160816;
        b=jlpzhhYHsu8ClfqiAxhKSoO1gwQhq0bGQ7UVdNsmXbY64SE5BKd0Rn/TB5kE2J3cyr
         jShajh8DB6ewyey/mcvAVBgSb8zmJfVS+vkzguaD+kfIIFg4+KIQRxcXgRbYvLsy+FNd
         pfy7JrxOeCB7wK6yX8sOsnnDKrHT3UdTQ+WH8mRZTryz6d8BLMM46DzfsdSBhrUkH8rE
         VMWt38psyqT2APA3owSKcuAZnMW07hAZMOGGJVkxZ3+motC+cCtMwHhS/PCBLXe/wgHn
         SbFHkcifWvq7f3qEBOFyB8c7KOssH43pu0Q1CuTY+a4cpMv3xtGSIQLoZrHQ5HTyIeOs
         kGCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=zbBLPzkS6woRx4LKUyx9TQxWGbqopdamgoHyTB0Wpis=;
        fh=kVDRuLa3EvrqGbA/lrfkaLbd5Zs8CJTTIpZl8gtUNQE=;
        b=QAtF5VYWo0thI0U4DrYMqEdAHSEvikjOedn1GbkdQ8lRZExmlky5SkXPAr5r54Ih3G
         il9E/KhMjmKoTijZjMfvGUF3DxrucOWsXvvfM4jMFgDm/d9Spm6S5IChdh/vR7h0TWVP
         /oezZD/xDsLNfNHPEi3iV9CwT9Ile2ThpBh0TETiuGQjsUmlYd3jsEYk40t5SYpn8DEh
         NmulPlc5wAV4a15rbBvB600W9/lSKl1VM+9q9cpe7DoiWe3Jt59F50K71lPeWquB6sda
         YCiVvtp16QyfcoBfx0Ed6XMwKVa5mE+BSVRj5FYJEkejGOrvNeqIbfedxEwimieo07FL
         YXdA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of tuhaowen@uniontech.com designates 54.254.200.128 as permitted sender) smtp.mailfrom=tuhaowen@uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1719299493; x=1719904293; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:feedback-id:mime-version:message-id:date:subject
         :cc:to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zbBLPzkS6woRx4LKUyx9TQxWGbqopdamgoHyTB0Wpis=;
        b=NJAMLYN3Is6Azgaho7PgmAp5KPDyLlsiDVrGYy2einnvrzDHfJRL5Tc//lsxnbh1q7
         EoINOK6CXG1aX6brIjIsyofTYDHZ4riqVsKIqfPjs1nQstlpYpQ3uDFKZ9jH7BDr48Gd
         KyoERTKWfCXVNUEqAwQ3ONrgkZpZISCxbGdWE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719299493; x=1719904293;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:feedback-id:mime-version:message-id:date:subject
         :cc:to:from:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zbBLPzkS6woRx4LKUyx9TQxWGbqopdamgoHyTB0Wpis=;
        b=ZUERLuw0zAfdHS7aopl+peb61K7WKWAtWNMV9kuR9yQYfv22roDHkLFHIcuMcl1yHv
         eLyfsW6tdanOJ0S7KUJKkkpy2hSyl59hPwllmFmjVrEnam9VTx1rt2z8clEV13VkO8QQ
         kYEE3+thxaPufhi2YiNxhxA1fHYZmQSo8uK1GDT91SKiYT8IXTtmDFdKcHNt3lsqeToX
         /RaAXMZUZjWhDAzIAaP2hxXJhWj1+3kDDfE8X2+uWfW9llUDlhQVwCxIm3GIoZDKAE/5
         PtIJUmwceDDLDa+pcdaZ/nqQBeb66FvSed3tScIW41DYuCPOkACyhi5wd+6U9Bc7Qqwq
         Jg4g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXZNGJz8cuZdxnPitNTcYK3Wq59t4jg88khVToRJtAiY2CkXWjmGKh21mPu3+KSN3Qu5G7bVPsLCAZSLCZPZLhfOB/4w3lrL8mJ
X-Gm-Message-State: AOJu0YwfGL/HLiqHM/RShAyh8vC3QfoZGxdf/5e1G/f/OrcueMvSdoWf
	6/qE/0QnJOtfHYa6id3b5+v4KHdpfUiT1avjupvB7dMA6xTjbKhksnmsX0IVm/g=
X-Google-Smtp-Source: AGHT+IHfdT5ycovWIBgnUNLo4bYJN9sYxxeSMw0LBOjIt2pxU6mRPgMDbOKiOcKJfTQbDi+m2+lPdg==
X-Received: by 2002:a05:6870:65a4:b0:25c:f0b8:752d with SMTP id 586e51a60fabf-25d32a7576dmr1282832fac.1.1719299493217;
        Tue, 25 Jun 2024 00:11:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:68e:b0:25c:9d25:8f1b with SMTP id
 586e51a60fabf-25cb5e930bals881316fac.1.-pod-prod-05-us; Tue, 25 Jun 2024
 00:11:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWrQW9hxSqsek8tmrJ4lgbbKxodQ2ZwAd2OsSpVVVPUxNI+FqZAkFZqBMhIVcrX0sAnjZ9PJJ8ofb2xIAU7nQ+ioSjFrpUOghHaZ81hUh+wkZV9y1k=
X-Received: by 2002:a05:6870:1791:b0:254:c512:88d4 with SMTP id 586e51a60fabf-25d06e9640cmr1005113fac.6.1719299492600;
        Tue, 25 Jun 2024 00:11:32 -0700 (PDT)
Received: by 2002:a05:6808:438f:b0:3d5:202d:f617 with SMTP id 5614622812f47-3d53c1ae96dmsb6e;
        Tue, 25 Jun 2024 00:07:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6nAfCkvKxX5bPQ3+GQwevneD4N78jQ+dm41QQ4KEOR9aRPYADHZwkpGIMPHCzvhdCgyDn5jDVNTJGRxjR5rnHy221ge241wWAkSLAic7SuW4D1rQ=
X-Received: by 2002:a17:903:228a:b0:1f4:8bb9:924f with SMTP id d9443c01a7336-1fa5e640661mr36076925ad.1.1719299260622;
        Tue, 25 Jun 2024 00:07:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719299260; cv=none;
        d=google.com; s=arc-20160816;
        b=E1QOmD2yP3MqCmahiRphNtW31Lf5kEaZz9npxdskwmBKWkn7dzRns4LT/nLS8WL4+3
         2g0bv95G53bD6HvkN/fPQWcy5lmJxJb1x+lIZ2nRkqnyeQ9CPTtv7EJOVOwPkWw57Con
         cTceFMAefQPfzUnJKyFF89Oi6iu9BJ8XtOJiGlbWG8mHwYARNDuVIma7i9URXsLasx01
         rfc1VgviidF+ncM5jjOJsfI1QmgPnO20jwWb+ZgEb3KGX/lxxMMB2X4+/DEa66d6G6C6
         Gf5c7LOteXeNrfNuF/K0EnFX1MG2kr25D4snGg5U2tmZmTZka3n5Nh5N75Rf825YuGbz
         1/XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:content-transfer-encoding:mime-version:message-id:date
         :subject:cc:to:from;
        bh=zprekLiGFH+XiQpFZ1Cut8SfmPc1ZNY/Gu/Kn1yMgm0=;
        fh=tvA7qXqOfOJ0rbIWSN7jZi1UVGj2/9N1tpdiRY7f9UQ=;
        b=Mki05TGBio48Gkaf8Vq0A/2PdI57sedar6+x94ksJ3HP6uaS1etgovNZ4RY4MAXPXf
         ZUpIPl1AN68qRtCRdA5gxiHctCvbYXwgSpdYy7qxWjp4Yf4LLt8yQXfzIjUHbZENT0uO
         D/TYooCRtP6sfboLWwLl2pYw7CDv+Zf9WaSqYy/a5XszFGRwTShWIColRWCASIT6Cibl
         A9zobLjh6uPk87M9oiHOaiLR9qfj7Ec6rBetDIccfMFDQfzCojc9naQt9bOYf+tcx03y
         xVOSYNC1tcpaURUQ/cw96RD1GoEylB+m1V0pM6DHfjhykFulIUDSi/yiiL86yFwq53t3
         PT+g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of tuhaowen@uniontech.com designates 54.254.200.128 as permitted sender) smtp.mailfrom=tuhaowen@uniontech.com
Received: from smtpbgsg2.qq.com (smtpbgsg2.qq.com. [54.254.200.128])
        by mx.google.com with ESMTPS id d9443c01a7336-1f9eb3250d5si79160655ad.162.2024.06.25.00.07.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Jun 2024 00:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of tuhaowen@uniontech.com designates 54.254.200.128 as permitted sender) client-ip=54.254.200.128;
X-QQ-mid: bizesmtp81t1719299249tfmqd336
X-QQ-Originating-IP: YsTpw8TXEcRnmEuuIyqSvNkkmr5rT8eEDSQNnxCh5hw=
Received: from localhost.localdomain ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 25 Jun 2024 15:07:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 1584190134348375892
From: tuhaowen <tuhaowen@uniontech.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	wangyuli@uniontech.com,
	tuhaowen <tuhaowen@uniontech.com>
Subject: [usb-storage] [PATCH] drv/usb: Fix the issue with Realtek USB
 wireless adapter AC650
Date: Tue, 25 Jun 2024 15:07:24 +0800
Message-Id: <20240625070724.22044-1-tuhaowen@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-Original-Sender: tuhaowen@uniontech.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of tuhaowen@uniontech.com designates 54.254.200.128 as permitted
 sender) smtp.mailfrom=tuhaowen@uniontech.com
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

Due to the dual-mode functionality of the Realtek USB wireless
adapter AC650, it initially presents itself as a flash drive
before the driver is installed.

In Linux, multi-state devices are recognized as storage devices
on startup because the driver has not yet been loaded.

As a result, the AC650 is identified as a DISK device at boot,
preventing the use of its WLAN mode. The issue can only be
resolved by unplugging and replugging the adapter.

Signed-off-by: tuhaowen <tuhaowen@uniontech.com>
---
 drivers/usb/storage/unusual_devs.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index fd68204374f2..f660d3e52436 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1487,6 +1487,12 @@ UNUSUAL_DEV( 0x0bc2, 0x3332, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_NO_WP_DETECT ),
 
+UNUSUAL_DEV(0x0bda, 0x1a2b, 0x0000, 0x9999,
+		"Realtek",
+		"USB Network Device",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_IGNORE_DEVICE),
+
 UNUSUAL_DEV(  0x0d49, 0x7310, 0x0000, 0x9999,
 		"Maxtor",
 		"USB to SATA",
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240625070724.22044-1-tuhaowen%40uniontech.com.
