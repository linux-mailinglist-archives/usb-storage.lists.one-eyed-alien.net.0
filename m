Return-Path: <usb-storage+bncBDF2TOFO7UMBBW7GQCEQMGQEMYZUZ2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 6063A3F3717
	for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 00:57:33 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id iw1-20020a0562140f2100b0035f58985cecsf7933574qvb.10
        for <lists+usb-storage@lfdr.de>; Fri, 20 Aug 2021 15:57:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629500252; cv=pass;
        d=google.com; s=arc-20160816;
        b=DHOw+aZKzmlWzJuJB+Sk1F8SgnKk5ab6yjWD7ilX8nyT9RMZv3n56WVDPT4vkiTYx4
         2wUaBfz8+E0dOE48ez+L7gBBR+ogcgU2dfZNSE8luOFZkVlMcVaVvBqBGrPCLXcn2v2d
         kJuMhurzeitHttQvKoqR1YNxLFHzMekPh64JmfD6IJ39H+lNmA2OhoKKIgfVr/qPYerV
         WN3JOy13IybK8cEMXHGwl2Qcr4w0/qAbgrS5eTS2KxtoaarfUXuvKg6FLqZAyoPahusg
         OkdhH/ZN1qkPzKeGSE+6TT9YimbStjEuZP4H5oH1rJP5aVKwT3aXTEsmL0Pl/DP/jpM2
         5Gyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=y3qoEAbmA7WgW8AgiRgg8ve/sYEtLANaL8K3ZXiYEYw=;
        b=RyOWxUPVRqTxjI03M4laDSmG478xiq5NnDUUafX+RBFlzeXQ4B0uZoRGkrYietTkVk
         UGkne42JdA45BJforthgGKJhThGPBOquvYQQzce7q5WCz29HLBPJ5FW4EIj0e8KxOlov
         HLYYsXJJUEA99fux0RAYDrHJ+5ZqE0QpUBIMvILyPCeWPg55zoJSVhT28WI06uKx+I1T
         O93bPyPTiK5dsg0zxyTj8FWalplIZbkolASy7LsYCsAKyTgpHkOulSP9zOMUhIsJoN1A
         EbA4+JApEoenju6i7NPz7uOOBYVNBIfGU6qDD+JxWTdeL5XklaGhjfibiVpi+TxbCwHA
         gz/Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7gDmfWp;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y3qoEAbmA7WgW8AgiRgg8ve/sYEtLANaL8K3ZXiYEYw=;
        b=ROzGCElz/xmxPLmgdC2fKrQI8A7EnsfL2z3t/M8cPF/tIXSyRx3nDzx0N5PJZkmyyX
         9SUrZmN7MfNWVFKrTrtXVDe0HWAXrFK3f7e9JjmIMBrPIFMdh/dlTPGHwyqUe0pG86rn
         1fAH06diLrXxk0KiZmTqWt7OTECT+LYSkoEqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y3qoEAbmA7WgW8AgiRgg8ve/sYEtLANaL8K3ZXiYEYw=;
        b=mNK2ylTZZPEiNZE9/tHX8tY/9PXYfQJw8+hlGRj651X7u5OSmrGOp2DvEevD4e+ksc
         +GG93teqZQ4VJrUuPJm3AbXr91bLibTV28lpy+DTnQjQabkhEVbqWarXJNJ+TPhP8B+c
         yYKrs1Hu5uRfzxGLvjNBP++FVvzExlrB8yHB/Fxp8lgqtcIf1SKbHJjad8f5dcQe079p
         KKe8wH5+KOs/9gStLOB9RHvJ2P0s2CsewzqAXsjH0iHyJtkZdwCqy6ndGjBbnU0vxhpT
         /I+YpX/Y08ig52X4L+C/P+HfI8MrrAYweRvtOb7jokic05+V7B6SbA99QESP8qjBwNu6
         J3Gw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532kZ/6F8NfN0yQvsF66WL9BjT0OMYDbKNyTlOLw+ga15Jkn9HZJ
	yu7W7GJptR6sct1wZDrHFKZ9bA==
X-Google-Smtp-Source: ABdhPJzmhvYpGIGvk8MfXaCHTiM2O0Ym2TJ6CZWSC91Lh/baSdBqr4tSzqa9H2BPNHo5pj7fEnN5yQ==
X-Received: by 2002:a05:620a:11a1:: with SMTP id c1mr11083122qkk.255.1629500252158;
        Fri, 20 Aug 2021 15:57:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:fb12:: with SMTP id c18ls3009607qvp.0.gmail; Fri, 20 Aug
 2021 15:57:31 -0700 (PDT)
X-Received: by 2002:a0c:c707:: with SMTP id w7mr22720041qvi.14.1629500251769;
        Fri, 20 Aug 2021 15:57:31 -0700 (PDT)
Received: by 2002:a37:5ac1:0:b0:3d3:12f8:3b76 with SMTP id af79cd13be357-3d5d0417c8bms85a;
        Fri, 20 Aug 2021 15:41:14 -0700 (PDT)
X-Received: by 2002:a05:6512:3f15:: with SMTP id y21mr15771954lfa.370.1629499273572;
        Fri, 20 Aug 2021 15:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629499273; cv=none;
        d=google.com; s=arc-20160816;
        b=VBXVDnXP3xflEkxRtrSnlqVDarD0i3jTRBJk+EJ4OkuhPl0Eh6y+RegZWTICz9ju/i
         kMXLlPKhY5ZhArIObOkUxVALzYdQdutiL0VngdveKhmmpRqNdUX03m/RU/r6rsx0sBzn
         Ex6V6xEP4DfoZNHnFMR1+oGOD2B63v9FO/nbZ+sMISTSWrq3zO/J+zRfpBIY9RLM4LY7
         3KJN5N9bM0z2bhCgMXd6/2CR77BrGRo3GSfIBd9ABimpyAyXM0b74qCi/7uQpn5PpfJS
         nUe+lzmD18mOyCo5jl0a8W5txHbAl9b+hfIOoi6gI/Bo+QLeBD6awPS9YtfY/H+MAXum
         01rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SFicaIfoYz57CJTwaU362imjBTcDv84/jGlGPzq+gP0=;
        b=zKoyzvTcgh+KManOW3JdlFXHPVP9SccWz1Dp9bl2EHqbIF25VN7oq319hy+ZGFeoxN
         6KH//WayNQt9LaDfCrTp3a6qfvYVmqc14P1XNqRWxhQ9JKx74S7KyGIU7pOi9XXTSAoB
         +K7bO5nSmb7KJbm54x8hE1Eu5ZBuMlb1IZDDRMhRmtiZ52YCxt+ERfii0xXDAmtm/8dZ
         VF98p6c4KF+eCpaFleF+BIAA4pUVKfzwXZWQUpc2v7Yx1NsExQb5U8L3T3zsH4fji36R
         Eb53tapz0PrkCCZiXuXG+9bCqxg99VVJm/AViuPxNDVotzMrBoxLxQm8Xx3zYuAF+yYX
         mjfQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7gDmfWp;
       spf=pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=niklaslantau@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id j4sor2311444lfm.15.2021.08.20.15.41.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 20 Aug 2021 15:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6512:3f15:: with SMTP id y21mr15771947lfa.370.1629499273263;
        Fri, 20 Aug 2021 15:41:13 -0700 (PDT)
Received: from localhost.localdomain (h-62-63-208-27.A230.priv.bahnhof.se. [62.63.208.27])
        by smtp.googlemail.com with ESMTPSA id i5sm640022ljm.33.2021.08.20.15.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 15:41:12 -0700 (PDT)
From: Niklas Lantau <niklaslantau@gmail.com>
To: stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Niklas Lantau <niklaslantau@gmail.com>
Subject: [usb-storage] [PATCH] Usb: storage: usb: fixed coding style issues
Date: Sat, 21 Aug 2021 00:39:54 +0200
Message-Id: <20210820223954.2945-1-niklaslantau@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: niklaslantau@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O7gDmfWp;       spf=pass
 (google.com: domain of niklaslantau@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=niklaslantau@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Fixed coding style issues that generated 1 error and 1 warning.

Signed-off-by: Niklas Lantau <niklaslantau@gmail.com>
---
 drivers/usb/storage/usb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..c3d710f323f6 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -295,7 +295,7 @@ void fill_inquiry_response(struct us_data *us, unsigned char *data,
 }
 EXPORT_SYMBOL_GPL(fill_inquiry_response);
 
-static int usb_stor_control_thread(void * __us)
+static int usb_stor_control_thread(void *__us)
 {
 	struct us_data *us = (struct us_data *)__us;
 	struct Scsi_Host *host = us_to_host(us);
@@ -926,9 +926,8 @@ static unsigned int usb_stor_sg_tablesize(struct usb_interface *intf)
 {
 	struct usb_device *usb_dev = interface_to_usbdev(intf);
 
-	if (usb_dev->bus->sg_tablesize) {
+	if (usb_dev->bus->sg_tablesize)
 		return usb_dev->bus->sg_tablesize;
-	}
 	return SG_ALL;
 }
 
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210820223954.2945-1-niklaslantau%40gmail.com.
