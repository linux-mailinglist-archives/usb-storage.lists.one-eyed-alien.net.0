Return-Path: <usb-storage+bncBC27X66SWQMBBOMXQ35AKGQEDP2VSOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C23024E9F8
	for <lists+usb-storage@lfdr.de>; Sat, 22 Aug 2020 23:18:51 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id y9sf6262639ybp.8
        for <lists+usb-storage@lfdr.de>; Sat, 22 Aug 2020 14:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598131130; cv=pass;
        d=google.com; s=arc-20160816;
        b=JPtxueAF7ViP1c74ul9StQgkbwL5w3uFNZHmaeOrfW4Fypg2jB+NiOTTLtbu+F6+o1
         OQE0PNAypN2uYp9lOem8cDOagGkyVZrXpsYEtJhyyHsPv6Xs+TgkbPeAAA+rTq1/jDQE
         rb3g1nphdjbBF57L7gcXcifKwMbzo0g9JnUZFJan9L3L33RsxGbHWjsv+RDepILG2Ul1
         Hl5D9UQeaZA32MOZsaBuEn6asp8Csp0goVJ2vNfM0i3MVKUpvh7jWn1B15E5rpcVfHH4
         FWYAULImmTfc0CP8EKm/KzS5JQRpingpNImRKiYyVQmd7KCljBCv2e4cGQ7r2a2AQEsU
         Z9mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=MC1lJtOk39jxX4j94YXQajIInrplc8H2MnHWXr0AApk=;
        b=Y3X0tPqt8jtjCsM6+O68rGDR1QD0FG6yFdEMSqwDnZsgNXhaTrLgskDTaELX+N4IAP
         o+VyesZxih9MjdwfKdOLLB60t6yPlVJIn4cbIt2A1dWuOhq5svVMozRBwCuZmwDbHGTQ
         xKJuICNyyzh5U6lyENgcxIIySk2cJixQmINgydFWu+IAyeayY29EbJJVNcRmRW/sRR7j
         2BQJ5QMuW2BPn9NOe8FpCH01Ws+ldCT9NkhzkE3Ih1p5sTNAi85hVuDMI+n3woLgbL3n
         GCN4EGDqH0NoRUXNwREAfQaVr0VvnzIpSMf/uNNAdeG6/C1NrlH8GwfEwCAZSJOi+7IP
         hxlA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cwmjgwcm;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MC1lJtOk39jxX4j94YXQajIInrplc8H2MnHWXr0AApk=;
        b=fRcSZWjtqDubrfm9m5EF4ouTMMxZLWKo02JVoGGZRFTZlKDfjeQSNPlFr0ySbuGDeX
         1UR4Tj4ng245bu8f7U9oZssPQmINyLEiAnOxYNFVjs5TCCtePgF3xppZezwmyc+ZiQxW
         mbQqDG3qWo5ZHwkJza7H8Gt7gCkZpyLXq9g/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MC1lJtOk39jxX4j94YXQajIInrplc8H2MnHWXr0AApk=;
        b=YKSPuJEMkztV123a+bL2P0OJ+Lzr6XiYk+6Bxoctshp12NYNRsOrqqLbXZnjf30YE2
         7ofuzpmr4/tei8Stecn3b3eV0ArnPR0XF2RBcgS/XBNqcBQNZDlTUlSzajm7WjLvNgB1
         qHM3Whbc+2RZmpWPTywXC9Fhz9GmEwDTn90hYBW27wkz6h8uXaHRlrmhymaa16uO7t+X
         NfaGMPa4qU0DeFArPRV+hA6TmwvFHks/Jqp4rM0PP6OTbT4+zAM+WB1D2BhGmJ9gi+3n
         bzsplNS1YyMjBxQ1yabTbmrVStctzsCU79LLh7aY9u+TGgeZyPrrzNHu1IGWPvYavvlK
         vhsg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533wcB41tJj83x7V1G6n+JKee5HbfyJzaHT7P/i1pAtHl2RYXPwT
	JeYgMQ99Ju1X0fS56mdknYRh9w==
X-Google-Smtp-Source: ABdhPJxtyzRAaH7DdxuzDiE9RtRdpvBiUR5orh58bWIqWicgA4KRgF5pM17Bibt5y5+lrpCLCmtNsA==
X-Received: by 2002:a25:e83:: with SMTP id 125mr12809075ybo.376.1598131130084;
        Sat, 22 Aug 2020 14:18:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d0c9:: with SMTP id h192ls2226174ybg.3.gmail; Sat, 22
 Aug 2020 14:18:49 -0700 (PDT)
X-Received: by 2002:a25:af05:: with SMTP id a5mr11165242ybh.411.1598131129434;
        Sat, 22 Aug 2020 14:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598131129; cv=none;
        d=google.com; s=arc-20160816;
        b=gu+/RRqnS8JwL2D4ED23/hDllMbkNfEu6lWaNtcUNO7RbK9rZ58sMQDO19ihkCQGFo
         Foo4LOBY0UZoDdYTSfaFnS0ixA2zg+aDTM/nhVT5WRLSaLeXCWyiynssxYG20ADTk+nd
         xI2zRYJYZ6Y+5mgEaIqZtZa+t/VkHj88vQRkkybpuWIGfFQk2+of8VyqKaSa9fEPCwzB
         IYTz5l9CAE1O6V6Goqdvy1q1MlozEIDCr9hNoY8i/4N1IfG2t4HFUgHV/CggljTe0ALd
         tPv0oLpzOKmWa8b/Ay0DfOPKjGAM7bkZt71U2Hk/E7TqFrm/yRsifMGntkp0K/4mK8Fa
         vyLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xZbAofBMByOnbSpYAqNdbUjqwUWCsauk/KwtU8NifwA=;
        b=RgcwWVO3NKFzz20xMtTGihKo6Vk+3HqPKinGQLeeMBdWGrLg96xvOL20E+cDDAMWhN
         /ggCfC6yDx5l+B9b83BfAEhULjDDXY43BDlqPEskpeLBrfclakdtmgEny02q4xEmBqzS
         o1bj0gyQfn70JSsHzbCxKfye+Xbfof/2y0XvtoZdlWh2Oeu1hYLs8MG8wLs5OjF1gBXu
         285rsUvMM9JPRoKSwuMPlItwWuZ81RDb5XOgD9eSi7kZFtc5OwG5fTRhThgBwUFCvbMh
         9g5PKhFyeZFPfY0RzNmlhTMhtFkXk1EQ5gTtL6zzr/j2wNwQa41F/DVLmLfoRGawyWa1
         QZPQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cwmjgwcm;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by mx.google.com with ESMTPS id c126si6304136yba.27.2020.08.22.14.18.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 14:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-sDEuJHWvPYeQNxHrSjPT4w-1; Sat, 22 Aug 2020 17:18:47 -0400
X-MC-Unique: sDEuJHWvPYeQNxHrSjPT4w-1
Received: by mail-qv1-f71.google.com with SMTP id d9so3625269qvl.10
        for <usb-storage@lists.one-eyed-alien.net>; Sat, 22 Aug 2020 14:18:47 -0700 (PDT)
X-Received: by 2002:ae9:ef8d:: with SMTP id d135mr7890574qkg.477.1598131126775;
        Sat, 22 Aug 2020 14:18:46 -0700 (PDT)
X-Received: by 2002:ae9:ef8d:: with SMTP id d135mr7890563qkg.477.1598131126468;
        Sat, 22 Aug 2020 14:18:46 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id x23sm5173752qkj.4.2020.08.22.14.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Aug 2020 14:18:45 -0700 (PDT)
From: trix@redhat.com
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Tom Rix <trix@redhat.com>
Subject: [usb-storage] [PATCH] usb: storage: initialize variable
Date: Sat, 22 Aug 2020 14:18:39 -0700
Message-Id: <20200822211839.5117-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cwmjgwcm;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this representative problem

transport.c:495:15: warning: Assigned value is garbage or
  undefined
        length_left -= partial;
                   ^  ~~~~~~~
partial is set only when usb_stor_bulk_transfer_sglist()
is successful.

So initialize to partial to 0.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/usb/storage/transport.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 238a8088e17f..ce920851b1f2 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -461,7 +461,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 int usb_stor_bulk_srb(struct us_data* us, unsigned int pipe,
 		      struct scsi_cmnd* srb)
 {
-	unsigned int partial;
+	unsigned int partial = 0;
 	int result = usb_stor_bulk_transfer_sglist(us, pipe, scsi_sglist(srb),
 				      scsi_sg_count(srb), scsi_bufflen(srb),
 				      &partial);
@@ -484,7 +484,7 @@ int usb_stor_bulk_transfer_sg(struct us_data* us, unsigned int pipe,
 		void *buf, unsigned int length_left, int use_sg, int *residual)
 {
 	int result;
-	unsigned int partial;
+	unsigned int partial = 0;
 
 	/* are we scatter-gathering? */
 	if (use_sg) {
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200822211839.5117-1-trix%40redhat.com.
