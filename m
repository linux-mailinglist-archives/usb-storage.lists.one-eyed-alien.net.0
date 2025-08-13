Return-Path: <usb-storage+bncBCC2JRVCV4NRB46K6HCAMGQEHPKPKKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC95B246C7
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 12:14:12 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-61590e4718esf5143637a12.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 03:14:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755080052; cv=pass;
        d=google.com; s=arc-20240605;
        b=O9wEMyoTp4018sWnSQ2/IiSq0iZaduIPWOJBty/WTqWt90bgCa4kW5ooxhOrFQaKlZ
         mmHP9mZjLfPMUcCL3H1VUni3AQE6EKgASScJB5Y6FQYXU3TGP7ICt9265lZycd4QxrHQ
         kYRmZSO3RMry8I/E5Cw3HIzIMiDFa7eRHQ1Tqci7AhHpWpRQZVZgjkxq02BMbqsYW3AG
         VyO+I+o2xl1Iqk0YSIG8eTSn1rBRaJK7TfaNf+eBzKiwaxkfgSG5+EqJMWaXB+pdotyG
         nU4kIIDLNbMySf2r8VqmBdIpim6BXosZCuD5LFDXUuBl/fD5HNO7vLDeKtSZRdm0qcOn
         VtsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4t6xFkIHPHeV4BrekSoc7DIO/LrbPO/GxqxAgSy0xUI=;
        fh=a/1qbqW4kLcWLy68YKu4z8/VQiOtOR4zUqyNAYZHVt8=;
        b=Z5Pk9vXOcn+KgApxe3/rrFM1aTr/Fc+evYRNjpppvH6pObgryoMX3i4YL0K0/dC0Kr
         QGCmbq6fxI9EFs0RAgnQ92sNfo9/9pwwi3JLj/Cnf63VugBEi06a7+2kTOS2eRR9L4LG
         F7G7G8WFtBPz1xYkQkO6L460iHoUjHKw5F70LTRkVeIkb6lQ0qeegb89nVGw2AJDNPQB
         S+MRjjAk5gnxMOvBFrx2j6uIpkjrxiQkhoZADvUqLJErOOxCGSViCcGP9erigI/CtMFb
         hTcPxe016Zp43jCXWo28m+xlQvjJOia4wAdU7JhvAVYE+YpdO9wEWgoL7qEm4WjZOXXU
         7M9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=NQ5KxT9Z;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.177 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755080052; x=1755684852; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4t6xFkIHPHeV4BrekSoc7DIO/LrbPO/GxqxAgSy0xUI=;
        b=ZtMCdZQYoCrRGDdJgbetJVTDSP4CdSv2djR6NVakD+ZfBXQx5Ln6a1NW6Ab8SOl6gr
         smWW6RvxX+x95mSH+gdIJw5nivIuplPTMSFmLcjScqYSeeQgRYf/Ab2TRX8ddLqKc06l
         IJmSe5/w+qyaLsYwS0gFgPSL7mZjZuDCTn138=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755080052; x=1755684852;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4t6xFkIHPHeV4BrekSoc7DIO/LrbPO/GxqxAgSy0xUI=;
        b=RqPqvFg7sYCd11FXfh4odYHLqmtZMo6iBT4LwIEbIYjnSElKbUv2Q0DhPjwO6I+/fl
         sqGM5yQAW85mLhFoeInHnlPsS0tmDN5y6XYu4m98Rtk0svYFl5qoTrWETLggEzLm0QjK
         1PVwrhkpOCYYx/o2/jeueYMS28i7Vywvk9LiqiKMmIIPmyyxt2Jqn1NECOQehxCJFKJf
         DXH6XHIVSGUSsJ/r3DAnxDaQlV4wJ1cejJrxnyU2+HyRMZEyLM7tzaRXxnuz/af3bhUh
         Nbn4fcRExFjX5e/LJv1R2bydo3tmrtRFE6YYZ1csG6b4iZhaPF7F7UwE0vpf7s392UMe
         47mQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX1QBt5nE54QdR6HUnzgFfibFzjzSMG5ux70T4s13evpvWxV4Bd481WJlO+O3kbxk/aqmzKXA==@lfdr.de
X-Gm-Message-State: AOJu0Yz0xo8Sr5QenSBKPcAv0FLYYZY8j20fxsQqtEa4gl5gZ6ssnHdL
	d2hYiFtEa8dMkRXeqM7rWcacIBLFQ0SvXP32ArDceFUzfSnYUpN6ZreHEz21P9sMTWU=
X-Google-Smtp-Source: AGHT+IFff6Bo7QtnzKnGa+J/9J2h1RT+H88+DVVTnweH984qxBDhRwDACsdVtV3x2MCVhXoZfLrzTw==
X-Received: by 2002:a05:6402:3595:b0:618:3a9d:53df with SMTP id 4fb4d7f45d1cf-6186bfed227mr1993428a12.17.1755080052258;
        Wed, 13 Aug 2025 03:14:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfvDJy1VR+gCK2CegY84Rycrd48pdToDG5RvrL6pGeUsg==
Received: by 2002:a05:6402:c9c:b0:617:b2af:38d0 with SMTP id
 4fb4d7f45d1cf-617b2af3dc2ls3857134a12.0.-pod-prod-06-eu; Wed, 13 Aug 2025
 03:14:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXHE01JR0Ur9hqfL4NlrRgMv0fINvt0fEbmIei2wMnnGvC6doLqQjJmJFd8OjTioJTFxENN4KFAMLq59w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:280c:b0:615:5bec:1d5 with SMTP id 4fb4d7f45d1cf-6186b786ef4mr1886992a12.7.1755080049645;
        Wed, 13 Aug 2025 03:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755080049; cv=none;
        d=google.com; s=arc-20240605;
        b=Xvx5X7kXH7LXtc+sjazaRiooHfVjkEuPt2cLgtG46DztyYtwNpyCQYgMBpqymgCG8T
         jJodWD+OpzoPy+S9eKs/8Kx3Zb940kueMVd5etAasEYiLfVP09OJSKUW8zJGPv3QTQOw
         Z96XtyDtxEA5V1iHjS894cIpJzSdR21ccEnWaVAQYX4N3saJvmLPBb8dK8X6AoqDvc+c
         LMPHylxr3RWSIiBSnXbT7FvyxTs2fu7Yi2/YdlVESfaC5v5rSnOS/CpwlhXAiuseY26Q
         0kRGPa+Fri3GYXAGwp1sElpcRUdh9nCnwltvwTW8iH1qYuuU97K1KmCqbFZQk4IlQbqH
         djDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SMBG032zU6ickgstPxN/GJlE9tfEuBGsOIIn38UsQNA=;
        fh=zjuZudG/84AY9U5EMM1K1kqQyj28sh8X2vByyQPlJ8s=;
        b=h2Idsbi/h4oM3MrglM4QZyPqjHk77Oj7hiWXMhPbzM4DUyIERoH8c6bLjzvXjErAR0
         F3agP8OMJAGQ1kM37ub4CQCALjUov3/Hfsw8EaVUp8Ky67z6L78+JBeFNUvzdaNTt7gs
         TmmhV7wrifWhzx1TN1LgXMuvhwtb1U3jxzzcDQNoBVcdcI7N/KZpMCdRGvGWUcU0wur1
         4hgommdRvO8l22Usap0MzLlbFd/c3UWSLXfKL9UcPqOW5JFSNqch3cQcng+cf3dMcW3h
         qdWh8VvaJH9D3l/1ULwit1dLPzH5yYV7iTT4vo/fp6ZvWUsvwgTm+WYggjRi7LA7Eyjd
         cvhg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=NQ5KxT9Z;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.177 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com. [95.215.58.177])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-615a86f804esi19270895a12.363.2025.08.13.03.14.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 03:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.177 as permitted sender) client-ip=95.215.58.177;
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 2/3] usb: storage: realtek_cr: Simplify residue
 calculation in rts51x_bulk_transport()
Date: Wed, 13 Aug 2025 12:12:49 +0200
Message-ID: <20250813101249.158270-4-thorsten.blum@linux.dev>
In-Reply-To: <20250813101249.158270-2-thorsten.blum@linux.dev>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=NQ5KxT9Z;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.177 as
 permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Simplify the calculation of 'residue' in rts51x_bulk_transport() and
avoid unnecessarily reassigning 'residue' to itself.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/usb/storage/realtek_cr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index d2c3e3a39693..8a4d7c0f2662 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -261,8 +261,8 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
 	 * try to compute the actual residue, based on how much data
 	 * was really transferred and what the device tells us
 	 */
-	if (residue)
-		residue = residue < buf_len ? residue : buf_len;
+	if (residue > buf_len)
+		residue = buf_len;
 
 	if (act_len)
 		*act_len = buf_len - residue;
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250813101249.158270-4-thorsten.blum%40linux.dev.
