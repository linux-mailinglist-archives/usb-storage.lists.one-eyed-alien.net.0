Return-Path: <usb-storage+bncBDDLBMU22IMBBIVXWOQAMGQEU6GGAHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B3B6B6055
	for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 20:51:00 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id o10-20020a05622a138a00b003bfdabf3b89sf4790328qtk.13
        for <lists+usb-storage@lfdr.de>; Sat, 11 Mar 2023 11:50:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678564259; cv=pass;
        d=google.com; s=arc-20160816;
        b=RLTD4YUyaMJiCfmSvSj9nmkmMB3iHORPpGXHBJfdox7zKl3rBJM4beTNDAbHq8dq5W
         eh9EP0a1gd7U82LQmeXcF11xWwke3np/ofdhfBRaoR0zq+D4jgqbz8IKtoxdWUlJQdKd
         j/le0etTWkStbTWoRflVZ7XatNb8mB3vr4U+YSCxvvAgCZbaoBveKd96RKGK8ZBHqaEA
         Va7/edWRLdt+3TqXCP1AneJu853KRYRFNlb6wK4y0cdLDHpDWDLGP8rgMe3gQVEVUUoR
         sROZVCYu7dXYrKE3JEeHYKINIY3HyTgbkYem5Sm3y7dHdNKKxc3LrDp6V4qQqsR2wM37
         yEwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8lyUOwXorK1UX9eF2/8dnoksH4lr7O7mOYdqpmUcG+Y=;
        b=UfjeiHHoadSR5qPD/P16c+4yIcs29Mv0vUUG9JfZlef/uXmwHjwPrbMyD60s960Llw
         7GAoC3t6i3RbmWpfAmLIvoSzzDCFd838fGZa0mU+1jFlrIfSk74Pg3dYjN7Ijqux4UnM
         0omJr50aWtr7/x/GMrIUGKqxQsVnCCfyQmSEpLmM9UaXa/ZzwFDt79HDdbSuJt5V2ClM
         omE4yd5qfcU1o9pBJhK4hjV29fu9tPVx/YgQxviwekpp1e+ZfV5YZ71Iw4nzzFOYAyoU
         BjRPOUxK7p4YLlTjU6RTc8SGpRmnV+/5tlOPaJojHzrj6IIZimj+tOrzlJ7FWlA4Dnz/
         7hdA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="aBl9T/7Y";
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1678564259;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8lyUOwXorK1UX9eF2/8dnoksH4lr7O7mOYdqpmUcG+Y=;
        b=lggvgJHKi9xGk67H4GgngYEyfSLqkoA1izn14aF3UgFSLwIUT0IHn6e+x8epd64Dvd
         Sowr3b3kcgWpFZcUGTylxLWyeN5Vmbz+fQCkOmx0aJqIte2vpKZM1gokRlGrCqIbv/er
         mfRs1wCz0FqaYpCPiFdI+rAnR6T+ClMnMpP5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678564259;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8lyUOwXorK1UX9eF2/8dnoksH4lr7O7mOYdqpmUcG+Y=;
        b=XdJOzXbMGxnpRKA+1Onx+QJ+imR2vQJY/Gl7WK01GFfN6AxzySfwmIRlenIKQ4szRr
         HBf5PYGD0+6X+bIojBXwIn1Ts+LbxdbHNrqOaQjWeT56mkKonWTe0LAQtAVFWQKbrm36
         Cknyh3rhEsA+RXDnDA4ADB7k4Qh+K2X3HGXFtL+17s7a+OLZ7rs8aD1C78DyDqQ4ZPCN
         NTDOGSMEVrjg2XEPyRSqGujQ3Atf8ra8vwdQdvznZwKlyrUvWHVrrKox0Ft8Nzi5WAuk
         6iMFXM60nWFt98h7vbk16KLniK/udtZjcYRboaQj4/IW3OhD1L5U8Yo3hxa4ZbioLs3S
         nwqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKVQHnCRis8Cg1OwNWI6GT9kbIwibP8EoSCo37gAsZ7w/dTOmRw7
	DHbkTESqDsa0J8foOMG8FFMspg==
X-Google-Smtp-Source: AK7set/4FzaS/9hwqLQfxg88ieQs7NymM1urpgrzY8cMcLdanobCXTOepSkmFvMNnbjdg9YzoDS4AQ==
X-Received: by 2002:ac8:60d2:0:b0:3bf:c180:584b with SMTP id i18-20020ac860d2000000b003bfc180584bmr1820200qtm.1.1678564258817;
        Sat, 11 Mar 2023 11:50:58 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:4188:b0:3bf:a931:fd92 with SMTP id
 cd8-20020a05622a418800b003bfa931fd92ls9320258qtb.1.-pod-prod-gmail; Sat, 11
 Mar 2023 11:50:58 -0800 (PST)
X-Received: by 2002:ac8:4155:0:b0:3bf:d520:1d57 with SMTP id e21-20020ac84155000000b003bfd5201d57mr7810847qtm.2.1678564258431;
        Sat, 11 Mar 2023 11:50:58 -0800 (PST)
Received: by 2002:a05:620a:2911:b0:6fb:b4b9:8a32 with SMTP id af79cd13be357-743738a044bms85a;
        Sat, 11 Mar 2023 09:12:41 -0800 (PST)
X-Received: by 2002:adf:e402:0:b0:2c7:1c08:121c with SMTP id g2-20020adfe402000000b002c71c08121cmr19398534wrm.61.1678554760095;
        Sat, 11 Mar 2023 09:12:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678554760; cv=none;
        d=google.com; s=arc-20160816;
        b=GJdsueXmdS+MzJoMxWAb7mzbY7yWaCz+nIL/pE0/T2edjMTCF7MIZPwHbhsXiYLL9w
         Rwb0V9JKonm7w+eV54DdFiv8HcDYLV2cGYIMO9w0JiIUNh7rG6LrEYjop45sFhok6C5+
         hErPVDgFDpfY6VXYlm66zVLbvnbUbmPPgsfzH/TQYNELs3WHFAB8MBeRctPLyIaIoh8M
         Cl0/Egk/ezTWufQ56XGn0zYaNAfjqBsxD08Ek9Cx5vtjPkA+sh4W7rw5i3mtMpkBmRnj
         TeLsOnp9MJ91JccIWhgFQ6q0TBr26uQ3vxl7Jd7G9P7TA842UvBWtiqkrPDpgVU4YYqX
         4zUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UneVJauXqzJbqHiPtAbq37DezBUTdm8dXTrT8TwnGEk=;
        b=jwFc0n7MCyOck6Osu1L45NdVN2xLEGjOzmNl8n1FozcZaEcBWgvoCfi84U3pmNPOAS
         axtpPgJdsgGnoCsMr+B3LUMXvp7q8Ho+ydCg+hrAOrGBpzsnUlh1EmF2aU4i6t/4Jvcj
         anuKe7SKCOjLCRuYWgvo2jOMTIXgg2Vby7lA6Qn5O8q+/X1//BO6rtv/wZSkIJmYfZY0
         vkdyYkMa9iRseABPs1QDilaZYYj6SvMf/KwrfNQD8gcwyzmlDhrS7BN2xkEyBvLtt+5O
         aOod+2r8swZ0G3C8SUJjQLU8kzE+RbrqW0TjHtWmFj/M5Ge3ow0WTxnQjqAyLpDJctpq
         yaHA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="aBl9T/7Y";
       spf=pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yaro330@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id q18-20020adff792000000b002c6eea2fc09sor1021328wrp.57.2023.03.11.09.12.40
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 11 Mar 2023 09:12:40 -0800 (PST)
Received-SPF: pass (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:adf:f5c9:0:b0:2c7:1210:fe42 with SMTP id k9-20020adff5c9000000b002c71210fe42mr18967094wrp.47.1678554759710;
        Sat, 11 Mar 2023 09:12:39 -0800 (PST)
Received: from localhost.localdomain ([84.32.202.14])
        by smtp.gmail.com with ESMTPSA id f11-20020adff44b000000b002c6e8cb612fsm2932354wrp.92.2023.03.11.09.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 09:12:38 -0800 (PST)
From: Yaroslav Furman <yaro330@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: yaro330@gmail.com,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH v2] uas: Add US_FL_NO_REPORT_OPCODES for JMicron
 JMS583Gen 2
Date: Sat, 11 Mar 2023 19:12:26 +0200
Message-Id: <20230311171226.20353-1-yaro330@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <7f670cac-aa36-4bb9-a2b1-4451e4e85fab@rowland.harvard.edu>
References: <7f670cac-aa36-4bb9-a2b1-4451e4e85fab@rowland.harvard.edu>
MIME-Version: 1.0
X-Original-Sender: Yaro330@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="aBl9T/7Y";       spf=pass
 (google.com: domain of yaro330@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=yaro330@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Just like other JMicron JMS5xx enclosures, it chokes on report-opcodes,
let's avoid them.

Signed-off-by: Yaroslav Furman <yaro330@gmail.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index c7b763d6d102..1f8c9b16a0fb 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -111,6 +111,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),
 
+/* Reported by: Yaroslav Furman <yaro330@gmail.com> */
+UNUSUAL_DEV(0x152d, 0x0583, 0x0000, 0x9999,
+		"JMicron",
+		"JMS583Gen 2",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_REPORT_OPCODES),
+
 /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
 UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
 		"PNY",
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230311171226.20353-1-yaro330%40gmail.com.
