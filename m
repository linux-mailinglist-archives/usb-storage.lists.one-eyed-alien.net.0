Return-Path: <usb-storage+bncBC5J7HGFV4DBBU4XXSZAMGQEDU6E7IA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 765048CCF2D
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 11:26:45 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1ecb7e1e3fdsf15580595ad.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 02:26:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716456404; cv=pass;
        d=google.com; s=arc-20160816;
        b=oc8O9LaTzCmxzxL1hOxaW3cLzIq3Q8PAGEu5GFz5pfD2cZXBxifaxmwoPWTjKBpknx
         2APejNfpWYRixxQbAzxquZxoFnUrMemz2QHtQthc1IvsE8FvwQw7BmreIMJL6BsXAy+U
         bGp9yscXARH1Zdq5BjZgMgc9nTSku1gzzuiCGxgj325SwnZZ11arCl2dCYCnrdAI24qR
         wOXSY6Nj0Et5exhrNPeWZQAozhmvI47fRmva84W+M5DWNjxTATOoFFJ4kxqY5LhHC9i+
         M1ETaKxW/d9VSXyl6L5aQR5WwmGHVLvUabZOLKBH1Ue9GSHmiOD3mOZVQi1IttUBobCq
         HXbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GC/hPa9AwhimF46PLjbVcnZ+1p85O9CvST5vIv71tqo=;
        fh=LGXYpafeyPSwY29+EJdlbWuVomY3xOmCfh6fV7c2zC0=;
        b=D6LKyCE0fLL7+3q0C12VSG5zwK9NGiato0540LnrfYnvIFg7h/sQUYp8GcrYAB5uzv
         oGXg+LCWzl/E15QwLUX5D3/s9biMwZ+gATLtL6S3px0PvAYKgCy7YQwvWZZqrRrpYAdo
         6AxLAXKMC7nDbcW7XFbG9hUmIs2aeWqHZnfaACoPeUDbYOJqo5TKJj/E47iKWLwxMbmG
         QQhbkljP7+JY7Se3yZ8sLe3ScTJXnG4/dYC5zCqq/gw+BND+AUEPtdG3fuoJEX8phBOf
         DubTA0o2QEIKOgOCxzESGzJgvzbfhjRdLhO8PIw0iIyi6nt+C7glWW6cD8ye18C82a4n
         u6sg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=BfMFUhk5;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716456404; x=1717061204; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=GC/hPa9AwhimF46PLjbVcnZ+1p85O9CvST5vIv71tqo=;
        b=eFqSPaLBJYr3wqCvZiD23mMuHVnVcCXHmtvtemjZR4JT9fZDhHUjGKTapWuuB776JI
         zTFEGmnR98iwXX1KxOmWjqQVTIbzozNmm2/6J4IamamUwPDBMsdnhNWWxxMQSWt2QoU8
         0WpBCilaOPrDhuj+ent+kzgBH2vwaxRj9zxSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716456404; x=1717061204;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=GC/hPa9AwhimF46PLjbVcnZ+1p85O9CvST5vIv71tqo=;
        b=O9jt5BymtsHFjgXrCp8CGbpQWJztISFTLz2JQxeecx92W8owAvdmCpvwRTOI4SXa8n
         i5fQHSyFwvmLR+MdMQRGo2x3fcJv+3hHDu4qnxvjO2gpLLFn82FED5072vXJIznrso17
         xrxPBnk3OTmveR4jWYtxmYsmhdEekmqZ7t01Pvx8Xo4X0tq0YhBHOAhViaAnoC8M41Ew
         I6Pr6YiobSoz9I/JJIqcKB0+6mJGxp3Iwf+tcoNTdBtBQEMF6+kQ0+0ds6/pY/5cJoV6
         OFmjVqkXAlOe5UuRq8O8F5w8tu/eybjGLQL/6DYF4vFsYEhizdpd5ZeiA2YhqjxSdjjJ
         ydrg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXhgHgemUHIhzaUaefnl8xvzWKoqT+nYZSmaIjptmufnb0lCsLBHX3ZNQMA+w9bMpHTiHzoGB01Z64d7PEE+dq96bsvbEGjr0fx
X-Gm-Message-State: AOJu0Yx13xsY9UXZuhnDb7695GnWxVzMCEI1XFHVf4HNn/h3+5a+tHaZ
	mQmQ0XZuTXvDKi5KTuHApBlP057xJCh6dAayx0ajI35c5gH0CMtOlTIzb0Z+7CA=
X-Google-Smtp-Source: AGHT+IH9VjCJGyXeYvakjTtoktvT5kdaFU1ypLIx1XwEan6lBRe/6a4G8fvGpXApGRv+uD43XbbaQQ==
X-Received: by 2002:a17:903:2445:b0:1f2:f8f8:680c with SMTP id d9443c01a7336-1f339efe223mr23560655ad.11.1716456403883;
        Thu, 23 May 2024 02:26:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e946:b0:1f3:bcb:c5ad with SMTP id
 d9443c01a7336-1f31c795e52ls14106755ad.1.-pod-prod-00-us; Thu, 23 May 2024
 02:26:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVPHLj52aHi2e42cT5qhIw1vYrrh0bUnpY0hh0aHL3mxvnw/QjaIQapWlwvXnQa2W3x2fAQtQFzVriqitDrWup7QrhvtDXadjZo4JI1QqSLQaIzLGQ=
X-Received: by 2002:a17:902:74c6:b0:1f3:89c:d5a0 with SMTP id d9443c01a7336-1f339f0c879mr20385915ad.13.1716456402757;
        Thu, 23 May 2024 02:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716456402; cv=none;
        d=google.com; s=arc-20160816;
        b=WaYuuQ0pMSyY26x4wGOSPG3GUp67KCzC5YOe1lGfU5WdD7arIcexsrRXBbyOzaQbxJ
         6dNUsjkhfvprhpVVRRJ9n+ufRGNoktfmy/+yOC1S59u5YJRxefq6dh3IkUX5ySxSih8v
         POjfT4Mj8rX2zzCQaGU1bRv5xDDYQ8c+yfrtSJOd0NMyEZWxxNzRQU7GL3Xx2OrD+9nb
         NkZYlLBik0CR8DRK6CWnFetUrkvXIkTBnDLflce6Bnsq0dJmw2yPPvzEmkX03crnLBZX
         0NbyZkIsjkXWvyY4kDn00NmslX7LJEVyZGl3JajPtATD5xWPq4HoQco2/0fKy1kzKAaD
         6XIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LgjVFtFKjSQKkqo/YluY+yPsMkYZspFKPmE22dhDd8w=;
        fh=jQoZy0NnyuypbImpAAp0QJWJhJ/Rqe7EtYgiLnaLzYo=;
        b=DLqdGnTEnc4nYbie4kyG26YvhK13OX6CF6Y9XwKf6jsxFMegX45qEq8klUgW4wedsZ
         wBNcdWfEREmTrwBEaWpyKUJKUIpHvHCJ0zy9y3PNw3tO/+50mwNoX9Qb6bRX8shsE4Gz
         59qr/OokJZ3qa1aX+FuUyhNqEj2AIF6p/VtjKcwNanWcDswpA1PZwj9ywHs2pRCBmdhS
         J+JzUh7WE2f912WFBL19Rmw4pM+tfDPuXdgzKgkxHF0EYfbBf7OTFiHpIdBc5p17aAbn
         hY7h3+S7Kb9ywlFo7rvKq4yT1N3w8iFKG5XijPVewdeg8ig2SN6/TWTT9Yj1+xdumaYz
         5G6g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=BfMFUhk5;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1f3392f8b91sor6964795ad.8.2024.05.23.02.26.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 02:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXbpu/5cg4YMPV7ZQjV8KxT6RtnTyVS7k7cGCjRZ4bdwI5lxmydeJcCmJZMIL0k8x54LuY4nBU8pAw3qyGpI2gm2cwLF8WrlCW3rfS+FBL3KjFUKfM=
X-Received: by 2002:a17:903:11c5:b0:1f2:f50d:ca47 with SMTP id d9443c01a7336-1f339ef5237mr23830825ad.3.1716456402245;
        Thu, 23 May 2024 02:26:42 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a6641dsm23591883b3a.4.2024.05.23.02.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:26:41 -0700 (PDT)
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
Subject: [usb-storage] [PATCHv2] Check whether divisor is non-zero before division
Date: Thu, 23 May 2024 17:26:08 +0800
Message-Id: <20240523092608.874986-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=BfMFUhk5;       spf=pass
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

Since uzonesize may be zero, so judgements for non-zero are nessesary in both place.
Previous check is moved out of loop, and one more check is added in alauda_write_lba.

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
 drivers/usb/storage/alauda.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..a6e60ef5cb0d 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -818,6 +818,8 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
 	unsigned int blocksize = MEDIA_INFO(us).blocksize;
 	unsigned int lba_offset = lba % uzonesize;
 	unsigned int new_pba_offset;
+	if (!uzonesize)
+		return USB_STOR_TRANSPORT_ERROR;
 	unsigned int zone = lba / uzonesize;
 
 	alauda_ensure_map_for_zone(us, zone);
@@ -923,6 +925,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
 	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
 	struct scatterlist *sg;
 	int result;
+	if (!uzonesize)
+		return USB_STOR_TRANSPORT_ERROR;
 
 	/*
 	 * Since we only read in one block at a time, we have to create
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240523092608.874986-1-shichaorai%40gmail.com.
