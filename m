Return-Path: <usb-storage+bncBDAOJ6534YNBBEVEZ24QMGQEIDVV5OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC3E9C5F27
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:32 +0100 (CET)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3e60dde7edcsf3813246b6e.0
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432978; cv=pass;
        d=google.com; s=arc-20240605;
        b=A/pokztDsJ3TYheuwb00+DERhDncdA4nQZgFsgNrKNwEUPv3wHKGqeVvZVWzdzAE21
         qB4TOP3X2FNqHQB3WfbSy3c6bKTdpeFz1kB9Z4nYayu+VkFNskanrPE0BU4tHLYrxrEt
         h3jaiS4RmkJg/kCAODpuMWDrFXMNkN3DLNWJPYw97dFiRiZaap1L1tbdKjvxUNsxVqCC
         cdjUDPWX6SdBFUcVB/j+lTGpo4dD/1pT2JIJabKvqDAWpg0b9BIXmgg2wGFazhQ9eik1
         EvQgtJt/GyeHw7McyEr7XWQYkbnkQrJIYy3/Rd+lAags8kDdbbelCDrV2vfv+Cxo1YIK
         R4GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dspumTw39ZgWhloLkCZX2AmbWRO8JgC/JjEbrNqK3xY=;
        fh=5evQ3E0HbN1n96xXofzKZGvWyeKS3FpYUsR5c6QbvHM=;
        b=N8ZbVnX6UY88kWwEysljvARx+4B9avnEccV5ty4vz3q9ADeYUe+pFVTLV6rx14wf4U
         ihRsB8irR8dEFm6nvTMbJVnqgJrCyRzX28BM+xwleOUKb7EF00hNRCDTud9pSh24oIIR
         7NTj14NC0m4ebgVidn51Ou8RbM70vkrZVbP2V+xN6lTwiWa110+f2lzrG3+vFvjFSPUM
         gwGomPZWQosLErHGCOYUZ226NTz4f/H3way0P4uSPJTszGo81ZBkJBE1kiLEJaAT7U60
         OWGwUJx5d4Wu47xz40oT/npZKWfeFH/nMdF2NYT5Hc+kv1q1KYesnTDv+mjBtdSsfV2M
         OGmQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=QwzPEn61;
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
        bh=dspumTw39ZgWhloLkCZX2AmbWRO8JgC/JjEbrNqK3xY=;
        b=aQuTzEGlnFQ+L+Yzg/CUUsngJDN98s0b0+2ftVo1dXOb7DzLWGhHiQIt0hh0SkWePd
         FFuSTro8Gr2jU/RAHytnEH4V7k1gucX6+5DPjpnaAbInH1Cj/lUZKLvW0AoMRJAm0Mbg
         Tm6RhPijXBgabHRCay5eK0fAZ5E+kF8ZTPPmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432978; x=1732037778;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dspumTw39ZgWhloLkCZX2AmbWRO8JgC/JjEbrNqK3xY=;
        b=r7me1rr1JNPrqgGVzw6mWQzyH4WjPWpt0G2E1jAjmuei59rsrhBq9ZqqMNk/DGhd7e
         QlQKjyOupevW+9jqOR2rE11mvWjje+uhs8gdp3qZsmt/QW2J52kwJK8GG70qgoXIPZJT
         YyTtpsbIjqxavZCwXSqRAjN/Ia2IH4LpTv3M3ZFcIDFrYCW06JDJ2iiTzhVleStzOzFw
         MFnIQHxwgVRZSvlu1B1uGstEsYgC5dkfEGyNQy8DK3KKqzaezf+6p+snt8M7VwHycntM
         Qo9pwue4teGb1/2BLzRGy6qBixZ5t1HgKlEvmVatOtVkYBfXt9aFAPxzuWOhyrqfNEBM
         Lh1w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUl5ayTiSbiXgc8zgcV2ecuLKwd7m301Ahxsl1030rdyLuQ+LyZ3ZzIg62e8j6VMRS6s0EzLw==@lfdr.de
X-Gm-Message-State: AOJu0Ywwu24NE2IXHtSXFT1vxTLVyyyBdpFWoMVHDS2bc6o70dIp1OVp
	LPronB03IqYHPZAjso0SOURzKAynFh7lCeaQkHJ6REwtO4mfeAbusXgff7SRndM=
X-Google-Smtp-Source: AGHT+IFSN7Azy2Uf3aeX2iSuKb7bwDDV8DdXuqk/B2xdeAAqN57b9XAen68H84vNn5xyqykkcV2L5A==
X-Received: by 2002:a05:6808:bce:b0:3e5:f894:b29b with SMTP id 5614622812f47-3e7947202f5mr17355844b6e.31.1731432978584;
        Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:574d:0:b0:6bd:735f:a70e with SMTP id 6a1803df08f44-6d3933d9244ls94589596d6.0.-pod-prod-06-us;
 Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX03kjaIKoUJoTuKw+rU397N5/L/dll13AZvDnCbuROA4Tq4CBM2ORE7Am+/gvlTNHFg77ETScGwFBaPg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2987:b0:7b1:5070:ca94 with SMTP id af79cd13be357-7b331e7203fmr2591261085a.1.1731432977917;
        Tue, 12 Nov 2024 09:36:17 -0800 (PST)
Received: by 2002:ae9:e106:0:b0:7a1:d643:94b4 with SMTP id af79cd13be357-7b34c45cf34ms85a;
        Tue, 12 Nov 2024 07:58:46 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW76FUGLI4uS7q0SPO5CQ52dbbPLRueS62l8Ibvm6VExSsdojhKAoiI2Dl9FbbL744CQ9w2UnpoeE7DAA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:460a:b0:381:d9cf:c023 with SMTP id ffacd0b85a97d-381f18850damr12375271f8f.55.1731427124905;
        Tue, 12 Nov 2024 07:58:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427124; cv=none;
        d=google.com; s=arc-20240605;
        b=CEcSRSwCq1OWqtXB9yRGv1/2qpTOWbk7OAHrqnIQacvrO5DxPzMtsrnyhA8YY2zgF6
         hkVUxls9xbKHVYFdzqw8N6FdvGhsVZ5Cdk7VY5O3MCRsBJLUAJg8yL8dB0FRHnF2FK9e
         /FwYnCq5godHzvX1+Pob0ggdnw4aKrD4cb94sSlXJojhiW3t8FPEYUV/Ivu4foraeX7R
         SlLmfenl04+Zil3NurHm5XetshLusIrCEj73/evrriHgCB9DjN47I0LMnic1vqELEgLo
         PPAAq8/bLJTvCjNV4quvtSsSzpYekzdwTJVn/1WysXD0tfgI4a4sV5lJcNWwSjUqCnJF
         E3Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hL4i3B/UuK7CLhkZCi41Y+0eVdaffsWKjLCivALdDZE=;
        fh=+grMXDZTskwg3Zg1aMpH7G5A3WVjetjwASqAzM3HsE4=;
        b=UJmJIRUo3ZNW1y1MUrsoGPPN4G30q48YlPOndDT4DrQivjzdkR9/+oIlm3aIC/B2cX
         9Rc+l0NE9os3M7u2Z6sJvGOpGTapNBHgGNpEUyKlgThwMCfSRZ+sDgfw9Vgd8tAfIm/i
         XIx+K5SIFmhFpX9LTQ8+A1EqdyuPzEwSZA4F5DamrFPY6qCsSdFMiGHiPqF2O1J0QowX
         7HbvN58XWu6f/xKZhjG2DcB6g2aWtSzLMLOnmh26oB3ZLvHyY+o+4denNJxMTVdmYrzw
         IdLvBrg3NGoc9fMn0g1PxPuM/a+1aS6GVw//cm3o+6OF+Fes14wjqW5bwbOrUP8Qg7aQ
         1JTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=QwzPEn61;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-381ed975d30sor4012842f8f.1.2024.11.12.07.58.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:44 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUP+5fcnXVT4Yn8C6brDTpsb8VkJHLoEgPwdVhBcehUdNKoLrpFvCLHuDLCpjUPvIovtQE0xH9/6N9HqA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1f87:b0:37c:d20d:447c with SMTP id ffacd0b85a97d-381f186cbc9mr14886375f8f.29.1731427124479;
        Tue, 12 Nov 2024 07:58:44 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:44 -0800 (PST)
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
Subject: [usb-storage] [PATCH v2 7/8] drivers/usb/serial: refactor min with min_t
Date: Tue, 12 Nov 2024 20:58:16 +0500
Message-Id: <20241112155817.3512577-8-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=QwzPEn61;       spf=pass
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

Ensure type safety by using min_t() instead of casted min().

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/serial/io_edgeport.c | 2 +-
 drivers/usb/serial/sierra.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/serial/io_edgeport.c b/drivers/usb/serial/io_edgeport.c
index 28c71d99e857..1fffda7647f9 100644
--- a/drivers/usb/serial/io_edgeport.c
+++ b/drivers/usb/serial/io_edgeport.c
@@ -1129,7 +1129,7 @@ static int edge_write(struct tty_struct *tty, struct usb_serial_port *port,
 	spin_lock_irqsave(&edge_port->ep_lock, flags);
 
 	/* calculate number of bytes to put in fifo */
-	copySize = min((unsigned int)count,
+	copySize = min_t(unsigned int, count,
 				(edge_port->txCredits - fifo->count));
 
 	dev_dbg(&port->dev, "%s of %d byte(s) Fifo room  %d -- will copy %d bytes\n",
diff --git a/drivers/usb/serial/sierra.c b/drivers/usb/serial/sierra.c
index 64a2e0bb5723..741e68e46139 100644
--- a/drivers/usb/serial/sierra.c
+++ b/drivers/usb/serial/sierra.c
@@ -421,7 +421,7 @@ static int sierra_write(struct tty_struct *tty, struct usb_serial_port *port,
 	unsigned long flags;
 	unsigned char *buffer;
 	struct urb *urb;
-	size_t writesize = min((size_t)count, (size_t)MAX_TRANSFER);
+	size_t writesize = min_t(size_t, count, MAX_TRANSFER);
 	int retval = 0;
 
 	/* verify that we actually have some data to write */
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-8-snovitoll%40gmail.com.
