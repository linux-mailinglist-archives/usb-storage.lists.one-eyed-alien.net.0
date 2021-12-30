Return-Path: <usb-storage+bncBCNY737244PRB4GBWWHAMGQE4VYV5FY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF0E481A6F
	for <lists+usb-storage@lfdr.de>; Thu, 30 Dec 2021 08:34:09 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id c13-20020ac81e8d000000b002c402f6db41sf17095409qtm.11
        for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 23:34:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640849648; cv=pass;
        d=google.com; s=arc-20160816;
        b=VDrG+WgeG7DXLB1eMxSKwFw62VH/KlL7ng4cZgyozxYZIFt6DnnIaGTBVLOvYw9XgF
         7Fvgyn7nDGUCng9KO6OIv7YUv1E0zMW5D6lTNXgdvSjMdIa1iiumjTerYsjkm+tCKTAI
         vyQD5yMVjNQOTC9Gd7Qzk05I9SX62lDNbTOr4iZKWXPq7PqW5bjCLxxX8Az6ibYiFyci
         h73tPEtiJ0Pb9/3OpB551mAxMyEJGc/Sc9bzt3HL31a3wAZX0rlJQRBqXYU/yku6/fBU
         yW01wdPSLgjW1te87F42gWbT9yspWi4dI+UpZhCmz43BNxM8Xhj7iV9+hrGT0tGCyurG
         0/1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QBPe/x1plNqXLhcETHvDPBijlXB1RMWfN0N9oQLqJxs=;
        b=qM5cVuSiW56vO1+A7fwgOagLAbl+idcaYbnT3ch+qgndCpRuEygkK/ig1rs3eIW/Ps
         fXo++RsHhfG/oxQEgw+9ebTwbuNfvbYEwsUAVFJzpzydszXnEIp2nxscE9Ia5GlvaD2y
         hS+hpHuR15OAoOWd3UFHRfO4FDc+W+gi3t+Au+b/ye3wLKwcW4gZSZa8Bix9vOGFqG+c
         fSIPne8866OWOIQhW9/yKgNKSbVF4nPtig5N0O36conpB77bIw2s9EIk5glnvHHbgRCO
         BiNQVdguzJIMbszetN0meJHvqQEAnfuiLoV9lb8qhUwkEKijcymNHulrfFpxuQIU4VG/
         Y9VQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=C++FEa4o;
       spf=pass (google.com: domain of cgel.zte@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cgel.zte@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QBPe/x1plNqXLhcETHvDPBijlXB1RMWfN0N9oQLqJxs=;
        b=EDtP1Dmj7p+TJalm+11W51Ep8PEiKMbvo44IilwZrdBPyKgXGz/joyDNSxuDNioZXP
         yxDrDn9wDsyTrJ6a4k+mHyXpnjdYzRdAFQA21VWHnbgHB7wBaMd84uGuys7W018B7NZ7
         5fMsh1ysbRujb9wAUBOQBE8/WWptLGe23Uvg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QBPe/x1plNqXLhcETHvDPBijlXB1RMWfN0N9oQLqJxs=;
        b=J08ZiD/KYDuHsQWF3wXIIR6LUyQn9atv79/ruja+8IV6tqWO9YXS9Fy/5Xp5gDLTFi
         JRXQuC7ETJzBQ45Q+3dv7QxdXVEFEE+B4GG6ij6OqrrP8MsVKPfbZ9AwaTTc/q4sLADn
         LetCu3Kk6sIH2hQCmvTPfUj4vLgJ0xfHyc6xrJdPh2kp0PpWh8dWKMDUO/uPm28MISSH
         KZp6tZ5Ymwq/MOvF1bM88PQ88KvHTBig5MehA/xNWt2P1Zc7u2wz6dJCWeUVGYssRSlQ
         ZJWWm66B6InayaOZnxD5o2gLChGD7dA9HdiO3tkz1zkhE/e8AQr/KPInoWJ5mgW1mjO6
         g++g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533loAI8uCLiARgKbgXDQWTtumUFxWYYtgAuwekXYVSHLpNVYHuP
	Is55gzoF/8+SMFpE+IjzCTooIg==
X-Google-Smtp-Source: ABdhPJwzLEpDpvw6gN66KFH4cJ8x1+gCRA8BBUxN+ynApLxxud5dXhKwKqjfiACDetNUvr97gnfBbw==
X-Received: by 2002:a05:6214:daf:: with SMTP id h15mr26552048qvh.9.1640849648764;
        Wed, 29 Dec 2021 23:34:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:e206:: with SMTP id q6ls10176045qvl.0.gmail; Wed, 29 Dec
 2021 23:34:08 -0800 (PST)
X-Received: by 2002:a05:6214:252a:: with SMTP id gg10mr26888760qvb.19.1640849648447;
        Wed, 29 Dec 2021 23:34:08 -0800 (PST)
Received: by 2002:ae9:ea08:0:b0:467:2cad:eb19 with SMTP id af79cd13be357-4757e299306ms85a;
        Wed, 29 Dec 2021 22:38:26 -0800 (PST)
X-Received: by 2002:a37:90d:: with SMTP id 13mr17793532qkj.144.1640846306448;
        Wed, 29 Dec 2021 22:38:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640846306; cv=none;
        d=google.com; s=arc-20160816;
        b=egaZyu55iWqCcQaAOLW4p1q47VXEcB9GQNsKX8n8OYwV/VaRytRNX3nxMxtNw8ps20
         OeFRTZzoyoHByJml8VsR27xnrln1bw8Kg2LhHl7/Y7IL4l3T/lPZBG6p1lHNhOFlesht
         rGMAE5gaa3tb+6M3yWuaJ45JK6B+z7tjsE7lon7t4xfCPDrsotZPLxRgI+Euy0FOK1yd
         bypFjLqP6tmx9DKuGy2IrI0SZOeGD2904lT6P2d2KC6K4Z43UENd7o2VByJrhImG/89A
         jo/7vMOcNhw1zaNLxPU2Gd+fhwr1rHEFBmDvjceiMVXHq6QZT/u4t7r5+A2Wc7KPu5tV
         g80Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DHepH6WFdLmTwtF4ySUnxzCwyN0QrtXXmuhORtez5fw=;
        b=iCD45FxN/aFHGmsh+LJSqdKB1E6DaKNy75EK1XzM3c7EUlrgIrUXmOrLcc74FA9E/7
         NWchBy9aiQt6dS8iOJVqUlTEpJWWPU+YJZB4oy/2frPmChTQyUB9XfeTX6VzyZQbV13P
         NvfqiXoxbPcj6ZTf2CbesnpvghkLupVr8uG+A+IGzT7qoKL04NRUI1a9GXAD/iPasFWv
         sLybZ+d00iksl+z0UPA48eLelnUBMqQNr1BGBKjFO1q/IYjjrFI45OCRKrtDW/WcW9Gw
         GIqO74UeTU5qyCILOopdKZzItzFUqC5l5E3z9S+Tv3B8veSPDN5dfSXRBfaS4uAqZB0s
         lF1A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=C++FEa4o;
       spf=pass (google.com: domain of cgel.zte@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cgel.zte@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p3sor20047818qtw.34.2021.12.29.22.38.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 29 Dec 2021 22:38:26 -0800 (PST)
Received-SPF: pass (google.com: domain of cgel.zte@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:ac8:5bca:: with SMTP id b10mr25682665qtb.170.1640846306237;
        Wed, 29 Dec 2021 22:38:26 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id l15sm20505059qtx.77.2021.12.29.22.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 22:38:25 -0800 (PST)
From: cgel.zte@gmail.com
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	luo penghao <luo.penghao@zte.com.cn>,
	Zeal Robot <zealci@zte.com.cn>
Subject: [usb-storage] [PATCH linux] usb-storage: Remove redundant assignments
Date: Thu, 30 Dec 2021 06:38:19 +0000
Message-Id: <20211230063819.586428-1-luo.penghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: cgel.zte@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=C++FEa4o;       spf=pass
 (google.com: domain of cgel.zte@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=cgel.zte@gmail.com;       dmarc=pass (p=NONE
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

From: luo penghao <luo.penghao@zte.com.cn>

The assignments in these two places will be overwritten, so they
should be deleted.

The clang_analyzer complains as follows:

drivers/usb/storage/sierra_ms.c:

Value stored to 'retries' is never read
Value stored to 'result' is never read

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
---
 drivers/usb/storage/sierra_ms.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
index b9f78ef..0774ba2 100644
--- a/drivers/usb/storage/sierra_ms.c
+++ b/drivers/usb/storage/sierra_ms.c
@@ -130,8 +130,6 @@ int sierra_ms_init(struct us_data *us)
 	struct swoc_info *swocInfo;
 	struct usb_device *udev;
 
-	retries = 3;
-	result = 0;
 	udev = us->pusb_dev;
 
 	/* Force Modem mode */
-- 
2.15.2


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211230063819.586428-1-luo.penghao%40zte.com.cn.
