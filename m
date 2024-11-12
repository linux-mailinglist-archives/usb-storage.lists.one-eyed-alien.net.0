Return-Path: <usb-storage+bncBDAOJ6534YNBBEVEZ24QMGQEIDVV5OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 051669C5F21
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:27 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6cbf76b01desf92938486d6.2
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432978; cv=pass;
        d=google.com; s=arc-20240605;
        b=j2na4NPhgeFzCtM2MaE+xMHYiEb76KMdNvP1p905FwZO2pzLquBKWYdiQicSVYna4l
         PWcttsI8kNg5F1OFwQkp+3GgxEvcIRWlTBlQ8AA7/g2A5mW1xUVchHUvNxh9I5J4Po1J
         vUmEFVawKNBbkQjkV2aLGDVeWYk9vrYsB2E1fcWDa/dL/rqHR4VYeradHQXmVEepSTQW
         nGZXSauyEHu7CHIfoQ5K+HmkbBo9SH5Du/7hTAL7oYws62OeOO0Qtj7L4Ba8TpZIHFjc
         izEERVP24uRXC8ElWuGy/es2wyzyst8s1rViVtCy/z03FduXTTi3Wu6DGW90Q3tB3AIQ
         1apQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m3aIWCdBosa1vFLnEumMNX5SpjTAPFE7LK6RzBPYBHA=;
        fh=VSRNEZnD1EOVwBli3m1uEk6hFkctRz0iG2KvZ/sq8LA=;
        b=HdVfFO0IZgS2D80P3mHs40oagbnfIT+0R3qGZUlICFjYgLuZwkURUVmZeHHpeJSXhB
         TpxwrxSXy+ELIb/HnWGY7hQ0RR68SEJUARcjp4olnAnj9odDxgw4K3d4HreI1IzJsT00
         qbMkuzFWNBYPpyThVWK4FTxzIiNsOp7Dovw+4nby1nP1MQtmV+k5aH+cLUleoWFRZo11
         BI2+t4kbVbpAv1G4hN+tnI2Yh5RHapGE9QOmHT/TpHsCTFol0uJ2VAZrGEoufMV0Lsqt
         0J9l5C6mNh1ie9BAd9VOpXnFVklrmi6UH4LPcqd1DOW9tdqezKmP0IORfCf2kgYQjbVy
         PuVg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=TjUZ2ysL;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432978; x=1732037778; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m3aIWCdBosa1vFLnEumMNX5SpjTAPFE7LK6RzBPYBHA=;
        b=Topl9Y+dXPHwuG35yd/ciXSVksDkcILlUsXd26fxAsUke2b88IIq4WFAvS4uhLqveP
         UpmqkPPzJ4qnIo6Vgcv9NhHfJMG/3O6ieAeEubzatfNjRyQxtxcGHTaCPc2OSW8+Rx5V
         zBscvIbkIQVlKc6Fzz/FZh4m6aS3teBlxSdhI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432978; x=1732037778;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m3aIWCdBosa1vFLnEumMNX5SpjTAPFE7LK6RzBPYBHA=;
        b=gumuNDKBmaVxIkTpClEF2XZ8nmMoRsKwAlrS9R6P2AfwhCEfRYQZQYxWqYYMp+etT2
         l6I7YiumHonCI6/5yIjwI0Np5Xnl6RJ/QnzRRp6pOGXacpogIwSLWB6TK577zVNcs+eb
         +bh0SspRPx5fMDCaRZW3g1w3js105XcbYEqaamtDi9wxAHcm4or00tQTPFdKSwOC1el7
         I0OoShiZgWCHrDsYIDDog5ljlsI83rH/Jh53iCz83l7ALfEknpTovW3pMmeXOZvNi42m
         RN0RFbkMyMlkj9dzHH5oZ7SGlqT+4vbxuY7oC8jF6tAhH4ioJjK5Nb5mKIPaIsup+1OD
         zl7Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUIBY9xlRxi4m0dURYwnpEEP1KiUcKIWr2GFr8rvlkRc35OBeOV8J12UZwzazT0zkkWvgjbSw==@lfdr.de
X-Gm-Message-State: AOJu0YwePh+Vf2tRX16/JwuPVsFKRxaD8P/8kT4QGZTCPEAiYCWcUtA6
	Sjxl2mSrNVPjbDtiUvsIKLeXPNLnNQSmyl79bFhdaFVia/c1l2IBRjBsfUO0UcE=
X-Google-Smtp-Source: AGHT+IFzoM/4bJ3PPPI/J8rmTlJIugv3W2RfTmBRX4bU6sI/JdKSv7NW0gP62JJxZtHQWkj0LeOQ1Q==
X-Received: by 2002:a05:6214:3bc3:b0:6d3:80a9:fcad with SMTP id 6a1803df08f44-6d39e114e77mr239037866d6.19.1731432978415;
        Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:c44:b0:6cb:fae8:5fd8 with SMTP id
 6a1803df08f44-6d3933d0e17ls12624696d6.0.-pod-prod-04-us; Tue, 12 Nov 2024
 09:36:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW3u9hQnpznxOhIY1tRkIEXrrG1yVbvZmLN6AdQ70LMChwXSmm7qYKs937tgAxF1KKXI5G0K21zn8WAOw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:4803:b0:6cc:364f:fc32 with SMTP id 6a1803df08f44-6d39e19639amr274040166d6.32.1731432977917;
        Tue, 12 Nov 2024 09:36:17 -0800 (PST)
Received: by 2002:ae9:e106:0:b0:7a1:d643:94b4 with SMTP id af79cd13be357-7b34c45cf34ms85a;
        Tue, 12 Nov 2024 07:58:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWlaFmPcOJpQmETHzIQLXU5XO3phm3VTwBiMDJGH4ghlDpSEQXiSYZT+qsJUT5tibpI815N3muarzzpTg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1449:b0:381:b716:2470 with SMTP id ffacd0b85a97d-381f1883dc8mr13806249f8f.40.1731427122370;
        Tue, 12 Nov 2024 07:58:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427122; cv=none;
        d=google.com; s=arc-20240605;
        b=AiwqeBhK3CYRFKAMsRHK3f42eJ7FIt/0pTKTYJkmF1aSCo8K8cSIRqTlsiVDLe6K1U
         eL0iL2AHJflolrn5CHkaMyn0AClS92t4EiOXSGTBcrLxzR/y4zvM1vO7sPqC60M7JFqC
         PBKuiZ1EDHDVEnrj+5pncrKOQHqWb7hy6YQNq2JYW9w4j9OeDntl3Sh4YFCWrT8C4tC9
         Evr5UCZqfLrZjXc1JVm/h/gAb1MODWj7U86n81j6EIxwOhh9Qb4ATRMiBMzzsnxAvk25
         G+K1tyw6kpBEG+OVmK83dOIo2qI914Ayi6QUq2qgJV1C/GNM3j6JXAsJJHzvLKgleKpN
         ymDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/MKCUUUxJD/2v5EQc5z8RrUear+TyL1L5ShZEVqt3HE=;
        fh=SQIciFeatn9DmnBVuI6z/Kz2oXCARN/tJJslGdfR4FY=;
        b=iBN/CxWjJoW2aiCJSc7U289a8YVkSei4psnmkkjN3dgBOpb5PXcNAAWNCpKsDaHCJ4
         y/Jv8nLUgV46QBNiYOXlqV0uVzwT2XOSlnFTBctlXffV+TvlZCdJgmvGFFgfp23kR6tH
         Zmk0KTjMtFfgeKquiZFLWEPuHfLaMVVeUalLO8Frc25xmXoMsiOICaZlqaY+p0YK7wGg
         TDG2ZKFbmHH5ZpbyV82Zf/XwqoN4gR+j3wA2R7ydJr3H2NL5oeJoumRU+C1cRI+HyWOx
         BXmXHbuvoCc6bWQ7/jNLSKBfnYua+EHmQD0LbQcau8BQPb59elgYlO3RoWF2XLijR/nq
         VEmA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=TjUZ2ysL;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-381ed9ea902sor3490807f8f.6.2024.11.12.07.58.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:42 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVDUJmGK7Zj9UvdJEVNEHengQzID2pvvfqI6doikC2ZtnJdFq5CQABwVgTjOinHyRvkK37He1pWvJngwg==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:64c5:0:b0:37d:52e3:e3f0 with SMTP id ffacd0b85a97d-381f1883da1mr14716985f8f.44.1731427121902;
        Tue, 12 Nov 2024 07:58:41 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:41 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 6/8] drivers/usb/musb: refactor min/max with min_t/max_t
Date: Tue, 12 Nov 2024 20:58:15 +0500
Message-Id: <20241112155817.3512577-7-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=TjUZ2ysL;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Ensure type safety by using min_t()/max_t() instead of casted min()/max().

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/musb/musb_core.c       | 2 +-
 drivers/usb/musb/musb_gadget_ep0.c | 2 +-
 drivers/usb/musb/musb_host.c       | 5 ++---
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index b24adb5b399f..61f3aee7b72e 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -1387,7 +1387,7 @@ fifo_setup(struct musb *musb, struct musb_hw_ep  *hw_ep,
 
 	/* expect hw_ep has already been zero-initialized */
 
-	size = ffs(max(maxpacket, (u16) 8)) - 1;
+	size = ffs(max_t(u16, maxpacket, 8)) - 1;
 	maxpacket = 1 << size;
 
 	c_size = size - 3;
diff --git a/drivers/usb/musb/musb_gadget_ep0.c b/drivers/usb/musb/musb_gadget_ep0.c
index 6d7336727388..f0786f8fbb25 100644
--- a/drivers/usb/musb/musb_gadget_ep0.c
+++ b/drivers/usb/musb/musb_gadget_ep0.c
@@ -533,7 +533,7 @@ static void ep0_txstate(struct musb *musb)
 
 	/* load the data */
 	fifo_src = (u8 *) request->buf + request->actual;
-	fifo_count = min((unsigned) MUSB_EP0_FIFOSIZE,
+	fifo_count = min_t(unsigned, MUSB_EP0_FIFOSIZE,
 		request->length - request->actual);
 	musb_write_fifo(&musb->endpoints[0], fifo_count, fifo_src);
 	request->actual += fifo_count;
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index bc4507781167..732ba981e607 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -798,10 +798,9 @@ static void musb_ep_program(struct musb *musb, u8 epnum,
 		}
 
 		if (can_bulk_split(musb, qh->type))
-			load_count = min((u32) hw_ep->max_packet_sz_tx,
-						len);
+			load_count = min_t(u32, hw_ep->max_packet_sz_tx, len);
 		else
-			load_count = min((u32) packet_sz, len);
+			load_count = min_t(u32, packet_sz, len);
 
 		if (dma_channel && musb_tx_dma_program(dma_controller,
 					hw_ep, qh, urb, offset, len))
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-7-snovitoll%40gmail.com.
