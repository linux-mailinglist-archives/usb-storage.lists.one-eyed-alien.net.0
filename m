Return-Path: <usb-storage+bncBDUNBGN3R4KRBDOW2HAAMGQEDYBGEPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id B8013AA6AEB
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:50 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-3032ea03448sf1764831a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168589; cv=pass;
        d=google.com; s=arc-20240605;
        b=DMBVb6UcdtM9qz7ppXRiL5BGFgZ/Bxo8Mx8QruQvlgzK2u1OMFm2z18+KByyoLaaB2
         0FAoMesMyrLnFacmb/FK0jQq7soReAd2uPFBIrEZl9ebrwmLnqIK+U4k4XyHA5KDOCEp
         o6+8vqRA1ww27PH6nDpXnPhWiCFXEQJsM0iVE84P70+Np5XtJj3qXVYLjZq9y8f+kaeH
         R8uRcHuJQ7eR/PFrYrT6/wPIJv4+WROU6FpXQDJZpmlXZImHr/OWplj6vtPPUD7+NfN5
         8+2ath+GFUZlrAgaMQ5gfA81pyOu4WvBXAqC/LlcgTnnSo1eO3TPKnlQu63gOdotlyUu
         lt2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RVmXq1M+F52sJCP826CowxSw7lKDvQ/ncjzUoDfjml4=;
        fh=vsT8jpsI9OUrrNMezdO2Sn/DtOEZZKsAnhAwqoYrWW8=;
        b=ZiRd4dho8v2TXWoivk7HD2RG1EhO0OCDnHMeEj4d5dK70BnZGYoHsPqaF45PaXootg
         O+sdbOvoOB+my1qHsfD3wKZHez6BYoA78sQs+6efRyDRizpuLeQn/21nugPbWX3tgVmf
         LnsMQuBtTGbNkgQYxrkfhtUuHLHrVWC28kxwiIRN8q0O0RcpqJOxYClDtetYA1nQWHTA
         BLyd3/Pqw3abY5Mzz9AHs43YhTNSMaQLog7YHrx+NamVjpJkk6WIOeWAUYQDk/qeXdAK
         E6eN+A30sQBOGaKdie39kLL2hxxDqnHihSvtFVsindXTINLxAgDa+BTcBa4MoHK21d92
         //LQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BH+FiiaC;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168589; x=1746773389; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RVmXq1M+F52sJCP826CowxSw7lKDvQ/ncjzUoDfjml4=;
        b=Tm9B68mSkFCmFBIWhrBd5ufMecypBX0OmbPJ55aRSjuuGxvAsJTdMrwPe/SphXeBS3
         o91wkLC3q15pzf73Cg3OEgGIf3xbgT0e+XahAQ2sinMMnKljGs4OaMkeSfEAdbc0nyl4
         XNX10KDLxrf9pP/SYKSKQOimMTBuBPQmwsjms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168589; x=1746773389;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RVmXq1M+F52sJCP826CowxSw7lKDvQ/ncjzUoDfjml4=;
        b=Jb7stMK2qsxBhGESmxWKUN09pDb4pN9IqeUvqpdPDc/JG4Wm2olnOMiL1vBlOlu59p
         RSrSCHrdo/zH7V81JHv3hE+GxlF1l9uu6ZEz8wJqulAqmiOPdOyFGBLpBXyi8sJ4QEZj
         GKR7P6xlDYkcX3MtbGHmaq1zEYKVM1FoveAnKqFi0YFeWBb5fxqlpFZOSNQrh/T47/2Q
         dFjIzQ8yFJ6j6il3nUJPHuQ96KELNTawPnxKlxbfy7KNrG+hLNNOi3r1n3BTa4HH1SsF
         K2rauX5rIwxXiik9XMlavpNwq6wF+Zowz0RbWmToDgN98S9oWZpLZnOS25K8KTkLmBsv
         Fjeg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWfKAlWefnnl5KFcSE0yDe4oODLfQ5MuP/V95ttZ6DjzKabOLj3Rj1HNMtyYFbibr041idjaA==@lfdr.de
X-Gm-Message-State: AOJu0Yyg+CBjaAbO4mJrgxiMQpN3xehQS5ER2yNGUFWqXYlMO9H1giue
	TQDOOAKcYFNnTS/L4bI8ROJAaI9hW0y2BzwgHjJ/bYHW7llTdJlszWPARSXPwLQ=
X-Google-Smtp-Source: AGHT+IFvS/bBxR3b7NXls9mN1W03Z3sgRVYJbkVIoqiVtk44rFG25Pkh8erM+j7BsH87p8Lm+xOMew==
X-Received: by 2002:a17:90b:58cb:b0:2fa:1a23:c01d with SMTP id 98e67ed59e1d1-30a4e5d0158mr2641813a91.21.1746168589278;
        Thu, 01 May 2025 23:49:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFE1VHu+8+8gOYHykt79AXdGnx2rJzcNPZeFoMBoH+yKQ==
Received: by 2002:a17:903:2305:b0:216:59e6:95c2 with SMTP id
 d9443c01a7336-22e02f0d147ls16372275ad.0.-pod-prod-04-us; Thu, 01 May 2025
 23:49:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUeCRbst+jaN/8Gnr+RMHisuN+pkzT8b2iTv+zMjfw7LhcAHEFZuPLqACR8DQPuGAkzrVVEMEVMElVDbg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:e78e:b0:224:abb:92c with SMTP id d9443c01a7336-22e103f00camr20906495ad.50.1746168587769;
        Thu, 01 May 2025 23:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168587; cv=none;
        d=google.com; s=arc-20240605;
        b=BvmZ5Aacmk7le2bUDz+G1cwRw0UHgfQOHHQ+U6oqaYBejzMAgxtKp/gwOQKD3f3F3P
         zmSAvarrUua3q9ZiEjW3SGYyI4S5Lvi70+R0J0mpgwXEd3nM6P8o6E1u/0YqDCYZfGwa
         cGCXtD1hgyresbVP1SZQc+/tKXMLasdd2gYEBHdxOF/b7GebJIA6raV9CnDJODGkgHX7
         hH3IwB1Ek+SPTPVbQruf04s77xQGJUA11PQjXS2rJaitRUEEBwBIaiSjcm8LfFshEHnp
         R0++Hx/zMeVWNu0PHpqkyKPKlco+GRfOHYOsmjTFCkFTj2PBIq0zT6IiUh801CWt1QGS
         gc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=t0yZoIwUV4+inxjNwnVHFH6tBnwOSSgcyj6eYeL50as=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=iH2qoltiM3zzroXraKBtyUpA0JTxpNzGVxTXBNvQVqu+YrG+ajY8PDYpcENH1DBE6w
         e88NMqnkW86UFjw7DUIUPYzn+1ksvRw8Xu5TS6aqyNIx3KY18/wKJj4CG4sn5v+FWxzL
         ia+OmKwe0QqyPTjKc+/4y9WYx8exeAQh5pXSBeXYy8z77i4rSMezlpHGje2b4XjUpZoO
         MKPG6OotwhyP7oF6TERG0Ui24hvkcj4Q2qt80GngKxjyMjx9voRxHWL/CiFExksf83d2
         2sq4AXIagEJzLj5oRgEaHBqSzM/ekcce7fZm3gHtPyr9rJnccfleDUbpBUgOO9iTMxVl
         3vOw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BH+FiiaC;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-22e1521bb29si413585ad.204.2025.05.01.23.49.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:47 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDR-00000001158-1lb9;
	Fri, 02 May 2025 06:49:45 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] [PATCH 5/7] scsi: remove the no_highmem flag in the host
Date: Fri,  2 May 2025 07:49:22 +0100
Message-ID: <20250502064930.2981820-6-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BH+FiiaC;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
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

All users are gone now.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_lib.c  | 3 ---
 include/scsi/scsi_host.h | 2 --
 2 files changed, 5 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 0d29470e86b0..39320dccbdd5 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -2000,9 +2000,6 @@ void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 	lim->dma_alignment = max_t(unsigned int,
 		shost->dma_alignment, dma_get_cache_alignment() - 1);
 
-	if (shost->no_highmem)
-		lim->features |= BLK_FEAT_BOUNCE_HIGH;
-
 	/*
 	 * Propagate the DMA formation properties to the dma-mapping layer as
 	 * a courtesy service to the LLDDs.  This needs to check that the buses
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 26bc23419cfd..c53812b9026f 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -670,8 +670,6 @@ struct Scsi_Host {
 	/* The transport requires the LUN bits NOT to be stored in CDB[1] */
 	unsigned no_scsi2_lun_in_cdb:1;
 
-	unsigned no_highmem:1;
-
 	/*
 	 * Optional work queue to be utilized by the transport
 	 */
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-6-hch%40lst.de.
