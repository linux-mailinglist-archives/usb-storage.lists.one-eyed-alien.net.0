Return-Path: <usb-storage+bncBCFZHPHU3ENBBTMARS3QMGQE3JOIQIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFD9976CBB
	for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 16:53:03 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5e1c7d2d227sf949646eaf.3
        for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 07:53:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726152782; cv=pass;
        d=google.com; s=arc-20240605;
        b=iQbplxd/+yFObPoUgDvK9wP9hhT1ehCRU+KSX8V+0JoJEye5Dzu0EEuRk2Y0BE4C1i
         E6uzXw7h4U2XJuunj434Iy/WOdc6YcBjXFTNkqXZyLQkFcD+MDx7AZMZrq6DttVBag0q
         JB9u/d/hNT4PGl8QI10oh/1jwfvGY3eB2smH1TS70M2whyGyBGgP9lWVXFWiLqx3v/fs
         P1B1bdZCNg+NzmKEY0Wwhpii8pX7ohRAgKFLL9ZYf8gc6t2FvQlFcCrMhytJLYzVD1fc
         WAZrx+hvsv3TH2MW5y2/LUwfTPeQnJ30wPM+P3M3l2MpxPxO+0K76MydXzG9+Q6S5Fg1
         AadQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=UFd1qziYy01s9ZF7eM8uLwz4WkekgNyFk6Cohw/6ZC8=;
        fh=TM25rntWZrIte8uLPHC0hw6jWcwNJQ3ubhNwZB5GtMQ=;
        b=dU0ZinP8pp0i4iCz/UXM2SQRdL595NcMYJLT9ENX5hqn200jJ2r0xA/yQN+uZNpNkL
         IH9EErHYHuH67GTO9X2ghzdUzuazHyipap/MgduUF2MEgZVXoldIIMWVFXgQnHb8p2sl
         KJxZrDCjWyMQYU8VWPSrBlaF9Kj5sHEVmBlsR26JTyUxDXSKqXIBRor+WljyfXg9d0Qj
         Zm4Hi8RFic/5847nnRiwi9cEuF4g6OwW0mh6PnG7As0XBsSwOcfUJPqjQm1dWr8fhAII
         2t0JZzzC2rpjY1Ob4ZHwYdyPO6R8bTbcmevmqUc7F1OprjBJ9+kZ4YQU3ehvhdhaU6e6
         ABWQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=AMuuyQ6N;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1726152782; x=1726757582; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UFd1qziYy01s9ZF7eM8uLwz4WkekgNyFk6Cohw/6ZC8=;
        b=GP0+nNncgZz1lsLA67UMLf4mo6FQ8tBb9AJ/ZaPVhripv6eO1FNsXFIXV2zEYjqRwm
         EHTFe6WebjyxIp6ihUe8LJRzkxknin+jLd7JFBYsOqSJ/dwD9LalLTw82XAOhmw9GnHU
         MUaDMqotrfzT+cAcbArkbrrdhFxADRy5PEuBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152782; x=1726757582;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UFd1qziYy01s9ZF7eM8uLwz4WkekgNyFk6Cohw/6ZC8=;
        b=qSluEN5tzfgpb4URxkp7QJA1YitiN2JyPUHdq7tuF34h0/YKt0CVrVfbciFwBRNvAo
         GL6sqtPlNMpkZRloq2WTsHqFH3IZuFlqPyCnskzCdoEGRKV3SBXH+J70/War21ri+iTK
         jLPoNeueBKr5hXHEjiP9bnuBOZDKRCHuMl72Nqa4wMavIWd1w9rYHQBlUh5IS6K10KPG
         lGnaYooZ+94glSzXnIcUGar8gV4RBAD0yvTxiHylDNieJw9JQ0xLeX7K1tEm93bCWZlx
         kx+S4xJ6bcKgxu6LymaC3UyzXBL5+cHtXozw0g+vR+aJaRYV20S7F0Yb7Fl85YKpBFdq
         n4dg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVT+4CjnxxbWNlOcyltEQN3JqhBX706y5j8l9k4/jy8TdKjR+rTRopgFBn6dGOuGK3/+m8hcw==@lfdr.de
X-Gm-Message-State: AOJu0Yyai2MeLGn2smPUugoWBSpiwkO36tcGVT+UgMqCdxP6JVJ7bSI3
	lkETI1KtVh0tsrPqF2BVVlPIlu9/87AWgR7QWbRiTndh4OZoyIuBWixDm02YlVg=
X-Google-Smtp-Source: AGHT+IFWT5DZ0IA1XYfWkqU4M1DNa6+jsFAj0+DGgnsY9NS2Tjsy6bU90e5IhrAxbLRn93nhcQEuyg==
X-Received: by 2002:a05:6820:812:b0:5dc:9f44:7a3b with SMTP id 006d021491bc7-5e20142008cmr1587337eaf.4.1726152781867;
        Thu, 12 Sep 2024 07:53:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:3c5:b0:5e1:bdf3:ac19 with SMTP id
 006d021491bc7-5e2005eab38ls839713eaf.0.-pod-prod-09-us; Thu, 12 Sep 2024
 07:53:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUje82FYrazmCa110wl+YhQMXNs9VyXw5V8fLfKJZ3U91f3OBVSo9KA+axuRGzFEh4BriLQPSbkjOaVDw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1910:b0:3e0:41fd:fcb4 with SMTP id 5614622812f47-3e071a8f190mr2095028b6e.15.1726152781166;
        Thu, 12 Sep 2024 07:53:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726152781; cv=none;
        d=google.com; s=arc-20160816;
        b=bvJbJHNDqSsUi+0MoG6edcTcB8NfQWA4QMAKrKWuLkemU8vnZFdLFHXZsnfU4lD7yU
         IiUVB3zpI+RbiZ2hJpe19DjogZyS2cqPg5bC2E1i9ABwYIgVbTAb0+hBix6mQv+UY/Bf
         fa/7vzI7/0CRAwp7Qk6hQTSiDVJxyhWiM9aX3osgPMYNnOmrUbEauu2xdmQhT/sk6MXb
         7lKQ20RSTv069h+0UHWoYEhcKghcBj+AIwN7KZObtO4MHYowIC/t0KdcW+ZD8a35dBrH
         WyOEvMv8BdvnnBxooCkFLxCpqc5/SqccJcN2w/ebjbvI8VGhYPDR8unfPI6hkFSaReUX
         To2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+5IKbYoDJEP2KO85oswQmEdobyY+Md1ZqhM7AUuMvg0=;
        fh=3I3sDS9L/aAEUfwRUIYjuCByXDrJh+oYO3dRwNphXPo=;
        b=DC72e5QOl4N4S+jvOJgP7Lc6ByGbhdetaKnwjhLPXpZipD1UUIXOMgZP1UUaASH1pU
         D0ymGClmf19Hl+yiUM71kiWft0iU+UfYKum6ZE7GBK6OO4iLotjHqxKIxLQ/IApqAuXm
         SS19dM2tqpKnockrbKCGmwxoBmlnDq0qxLwZZU64pH++8LAAQ+eTcDTOZKOWml1Xuhp9
         dTi8IIuZh9YG+UC1E8bO+cXxS1mS16jMm6BPIKkCVXzzmvzpTJX58F3591sVd1NL0CBw
         gl0rSMwauxmjPOt5kSbqdOWYjbbyhxfjIxmhoqhZ3B3F6ENuUvn+IUFDoKg4Th66WvIs
         lHbg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=AMuuyQ6N;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 41be03b00d2f7-7d823b096edsor4534481a12.3.2024.09.12.07.53.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 12 Sep 2024 07:53:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCX9w7IdvFahvQvXM9Xy516zpzIsAGwDPBtE6/p72dBAGFr+nj/V02VwxsiWW5q4QyFV5v4oCxXXNiJClA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90a:3ec4:b0:2d8:8509:85d1 with SMTP id 98e67ed59e1d1-2dba00826d9mr3133023a91.38.1726152780589;
        Thu, 12 Sep 2024 07:53:00 -0700 (PDT)
Received: from embed-PC.. ([106.222.232.184])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadbfe4b41sm12760161a91.8.2024.09.12.07.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 07:52:59 -0700 (PDT)
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: skhan@linuxfoundation.org,
	dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH RESEND] usb: storage: ene_ub6250: Fix right
 shift warnings
Date: Thu, 12 Sep 2024 20:22:47 +0530
Message-Id: <20240912145247.15544-1-abhishektamboli9@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=AMuuyQ6N;       spf=pass
 (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Change bl_len from u16 to u32 to accommodate the necessary bit shifts.

Fix the following smatch warnings:

drivers/usb/storage/ene_ub6250.c:1509 ms_scsi_read_capacity() warn:
right shifting more than type allows 16 vs 24
drivers/usb/storage/ene_ub6250.c:1510 ms_scsi_read_capacity() warn:
right shifting more than type allows 16 vs 16

Signed-off-by: Abhishek Tamboli <abhishektamboli9@gmail.com>
---
 drivers/usb/storage/ene_ub6250.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 97c66c0d91f4..ab6718dc874f 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -1484,7 +1484,7 @@ static int ms_scsi_mode_sense(struct us_data *us, struct scsi_cmnd *srb)
 static int ms_scsi_read_capacity(struct us_data *us, struct scsi_cmnd *srb)
 {
 	u32   bl_num;
-	u16    bl_len;
+	u32    bl_len;
 	unsigned int offset = 0;
 	unsigned char    buf[8];
 	struct scatterlist *sg = NULL;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240912145247.15544-1-abhishektamboli9%40gmail.com.
