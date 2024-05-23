Return-Path: <usb-storage+bncBC5J7HGFV4DBBTOTXSZAMGQE4MIVLBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1058CD14E
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 13:34:39 +0200 (CEST)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-371405718e0sf23077055ab.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 04:34:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716464077; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHH1jyzENw8Sns/ELKz7Kz8Kf8fzXWqxgOmYqkoiDKe5Ym3pjGIxvc2mQxhUTT/hNz
         df5PaSkKrzLZhqRn0QCvHvpn5EdI83d6Z0bkD0KFt37fAmPND2lu6lvPbTTQaSx5bxBh
         aGoqV14MOcAHsrHSoNej5rmaT7KKCuVx5oBkZMaYNdSEE0nXkiFwMVt4R2mX0V/iWWzZ
         I/BFIADGny8jZYEAy34RSDmGHnKx6Q2sxSo0FOapFb9PlQ4gpNgK8+k0FBpl+jICd5jm
         eX3SqHfDVeCM69bPbZYaK6gHSPNMl3pLA/5z/DJIoz+nJxCpgLamAqyb5TtyJCVrT2vT
         M98A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=NkEAEiDiqc8YQwyjYeZTKD2cMozA36eF/rQjzjpoGU8=;
        fh=Gq5j4gPmsfKoQtN1ADqKKCGe04qV06SlEOhQlXBxyY4=;
        b=LZS6HWbmzlaObHecr582KH0VKTmXW4Jx9TcTswPqXxfKF/TIJDIjpFH9GQnHI+CpSS
         AOh+J3QEOjtpWZscHc0p2+zZjtyuay3fbPSiY5y9ZTO8IPq9RtRhFizMHRukhF8hlw8y
         4b/tztyX+N7uS6050nOSwW2Ep8fGeNOn4x+rDbFZSLBJ4eWUKF9BYA9Y28P0n1eraNRE
         aFk/gn5a5+CsAa1XMNWKpnKEcICYWeTxc2+SfqxMu5xx/nuVFzeJLx70IlEI5ReueIRn
         vYSJQ+CcXv25YE90o855Krp1mnFUkvVby6z9CcI1m6nXdPmVgU0FnlxNUIBUD60UZjNM
         lGyg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=LY7VrMyH;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716464077; x=1717068877; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=NkEAEiDiqc8YQwyjYeZTKD2cMozA36eF/rQjzjpoGU8=;
        b=ATicpT7viHNLz1Yf7+9SOb/pU7xJJi8fs3HU2Kf82H0BgLuM0VnK8wHjWVBp/pxuB7
         awbHU6g8Fn1xrl6thegGGKtwl7L53yKf9vz0jgob5OLwCpKtEXNAhBPgBpDnIFNROixq
         wivycCBYaatKa9G0/XrXqzGDsSGCHZKTlDNsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716464077; x=1717068877;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=NkEAEiDiqc8YQwyjYeZTKD2cMozA36eF/rQjzjpoGU8=;
        b=M+KJjvhWuxYJXsiviEpcsmuczTiGAE+Tj25g3F6SxtdIhIiV6G1ID6A/hGLuyWCjbm
         sDvyYDBFdTMx4r1QUpjbNFCOCd6uTf4M71UCQwdgIdOgiwMlyMJ6Swy0xtLZc1ZdufsL
         6ws5CijwVk6qRgL6kwDWkmiGuWNHhw4BmBTIYMUEuJCmbHj9U9O39F1Y7C5dlT2LvZAC
         HwLVFveoCSDm0wsx2JwkmXH8fopdqgwY2k5lodcPeys2DAKwUaQwhV6B2kiJaaOHre7j
         kuzp2c7raKbdoWWsAYPZJEzZH31rfQUQ4DsbON4bL/IUfdLgP7ENF+9nr/lL3eTtrJfv
         iydw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXR3/IC9fIJRmQ++5WUg5u0wTxq7CuxV0rGqOIkx+0Q3nieUOb1YU68SO+92+lMtmz/eA2UhEYl8uMNqtnYlrgPXrHH9M7PAVg6
X-Gm-Message-State: AOJu0YwNb8EN+yM+IXbTAfingC3nKqn1fQboeTqt8NfoAyloXIO2yBrG
	A1H+47XYBYLI4b8J6E1BEaZ2a5MTquC4BM57mzzRUBFE1sSiG2E86bH58N8Sjrc=
X-Google-Smtp-Source: AGHT+IEHDiyLIPP35jrZpXl3piCbkRoWA+4rxkN6Vzy82TOnMh/l3jrNwdE9VPPhU3XHZUGwEibf8g==
X-Received: by 2002:a05:6e02:12e8:b0:36c:45bf:a8f0 with SMTP id e9e14a558f8ab-371fb91fe79mr53035835ab.25.1716464077515;
        Thu, 23 May 2024 04:34:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:ca0f:0:b0:36b:300b:3a62 with SMTP id e9e14a558f8ab-36cb7d522fels77272345ab.0.-pod-prod-02-us;
 Thu, 23 May 2024 04:34:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXpZbp4E+Aryo/tIC6+mzKuaWPSuMRk0C+joFYdM/fh2AzKf3GIo3Vw3dNelrATeL+Y/iV4UNWxQ+fi6NC1tAstsuZE/CJZnKY2sgUXVFcRzHli740=
X-Received: by 2002:a92:ca4d:0:b0:36c:5120:941 with SMTP id e9e14a558f8ab-371f8f1ccc1mr52248855ab.6.1716464076773;
        Thu, 23 May 2024 04:34:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716464076; cv=none;
        d=google.com; s=arc-20160816;
        b=yQEqiRLoERoDTkE9cV6bM27Q7ict3f8a46Df/6WE5Ns0lKtJbQ20j1UZnozgXknCHU
         3Ic6tX0YYc0mJAAe05FRIea8f9E02NEoOyNLfMXo1u9kfS1u/CFYpVLviJPXh6gRv+xa
         9OQOre5BOdCCDdyQ3KTex8XUZGfwvjWGuoeTaQVaEqWrhqjblOTQmA+7IBsd6Gm50opX
         15U1TKkOiGov+UAAEwMzEpMttGUhhH8icrhS5Nk3cBbsaoruQSKyoWMp5x0osb6+uBPC
         WiMV/qExTzGR9bNI7j/Ml9DYl8Qt8uheO/DD8GaNWzOAjS8GlP6C+rdqXnXzPpkrM+HT
         RuMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eshNdi8MhibtA7UrHJyZzzh5soo9ttxdAWbEOJelcIk=;
        fh=cOozBB3SAXZW8Xl9xnEEP14B4lUqoqALtphIG2x1aro=;
        b=RJq+X3AKtKDVsyDfG02iG9qvbbQXusXgsw9CVQ5S0u462hUku5eh02+3TUesQpXLGv
         C56wY3/wCD+klArnaRwhgrCelwAf0IpX2zl1zoTU8MY5NRN93bkm0c+0hAqRYt8f1fYH
         rZrMhGRRDSfkgEMX48wSQcRo0QN1DMQX06Bso9SYcJvNSGsTJ8Pw1PJOlxhtoGPTXr+N
         +NOBOLh52bXcZl88mZJSKJiqWy7ie/Yw15JdhTzaxREZQt0Ma4UXkm/ChBxMWkfSd/j8
         UrDYebK1+c15YVlinfSiGZdIYMZsTdIpjR+Xo6A3tbRgcPHaSGJIoWDa87qGm4N0eJvV
         +oRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=LY7VrMyH;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2e1a72fcca58-6f4d2b3ceb5sor5857319b3a.12.2024.05.23.04.34.36
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 04:34:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCViAN4zFXr8ffH8fJ27A+Guhqtv3qacJUr7zmcD1pmgMKiXI7YUN2UNa2ttyXXtgtBilm07v9a4l6Oa2l9mVIzbsz0wNM7oJ94DLuKIYSqxrHM7QbM=
X-Received: by 2002:a17:903:950:b0:1eb:144f:63b7 with SMTP id d9443c01a7336-1f31c9e173bmr56580715ad.56.1716464076410;
        Thu, 23 May 2024 04:34:36 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f0958fd757sm146846395ad.45.2024.05.23.04.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 04:34:36 -0700 (PDT)
From: Shichao Lai <shichaorai@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Shichao Lai <shichaorai@gmail.com>,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] [PATCH v2] usb-storage: Check whether divisor is
 non-zero before division
Date: Thu, 23 May 2024 19:34:10 +0800
Message-Id: <20240523113410.983875-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=LY7VrMyH;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Since uzonesize may be zero, so judgements for non-zero
are nessesary in both place.

Changes since v1:
- Add one more check in alauda_write_lba().
- Move check ahead of loop in alauda_read_data().

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
 drivers/usb/storage/alauda.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..17c73acd3b02 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -813,6 +813,8 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
 	unsigned char ecc[3];
 	int i, result;
 	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
+	if (!uzonesize)
+		return USB_STOR_TRANSPORT_ERROR;
 	unsigned int zonesize = MEDIA_INFO(us).zonesize;
 	unsigned int pagesize = MEDIA_INFO(us).pagesize;
 	unsigned int blocksize = MEDIA_INFO(us).blocksize;
@@ -921,6 +923,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
 	unsigned int blocksize = MEDIA_INFO(us).blocksize;
 	unsigned int pagesize = MEDIA_INFO(us).pagesize;
 	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
+	if (!uzonesize)
+		return USB_STOR_TRANSPORT_ERROR;
 	struct scatterlist *sg;
 	int result;
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240523113410.983875-1-shichaorai%40gmail.com.
