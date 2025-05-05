Return-Path: <usb-storage+bncBDUNBGN3R4KRBUHF4HAAMGQEB5P6DYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 217A2AA8DE8
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:12:03 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id 41be03b00d2f7-b1c122308dcsf4739945a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432721; cv=pass;
        d=google.com; s=arc-20240605;
        b=lagN8I0s5JEufq8hCoawxstJi84DKXp/vTia4JjmuSopIrK8axhJO8esj/hyiDBkB1
         DuoyST1jeJbyTpldZy9G4Jzk2Bg5gslXjz/efi8nPI6UQwffjXlniWZ4LhAsDTFxC29A
         EOMeYUH/Hd/tlvgpMyd/+673lfxDcQlhsgOL/eDIou9uToABxAlJfnN12AdVj0fNk3vy
         ejo6aQ5IO1VBB64DIOScFaI5qKfBigswEM9eQNsQBC7wHvx72FmlbXun8zvc1V7DN3/a
         5VkJVQytVBpDh6ysrC1V4e1D1mvDzOfoLKzTZKBWDCFBkUdVcGS3FPsilt4VQG+IC//j
         405g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nhiDOtA5E2RhjBN24fJCcWCdoIH4OBznCWmv8usQpOo=;
        fh=oFQC8JN0hxQ1R0RmM3e9DFgx/w8+PBa5xa9TcL3dB+w=;
        b=VknzVqI5KugHqHJ9niaF16l9qkCINK5/S9HoL5j26ltJYzjPFacuiHfIPr96J7+mPh
         qK/KI/8dSFfdRxbZVsVYSK6asT9AFQMlu3p+XxDb34ob+uE722D5O5XOeMs2cq8eHKoo
         8HbLLi3RJn51L78dyF6j8HKHIrGdGBrpEmhKPdyobz/ezVfhwJwTlz6NkVsCgPXtw5Zv
         /Z0qweUJJbN68UDebdnAF2pyWUPBrNVl9Em7ngbARylVp3NIVtx1HRwK+DLTH4N6j0+G
         cu/w10ItAFlxb2uJaaIck8pPJoM5JtMKiVL0B2BH33LfDxtIWsFECvqiEnjgXCHTBLs/
         BHWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Ma23w4e1;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432721; x=1747037521; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nhiDOtA5E2RhjBN24fJCcWCdoIH4OBznCWmv8usQpOo=;
        b=WqXM3Zk19fyLL5nKiy0iVHIW5/QkggmSsozwcAiHJoArXDAjF5H1QMaW2IA5Q5GHy8
         tMHjlLObvaxq135ZxiIqM1rTCeIk3J+8FwPLcLQB0s2J+GgGIOa3XNcEI59oYtvGjYaW
         3Umhn74wg4Zd84BED9ol1A/hW7kqHZFVU1T0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432721; x=1747037521;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nhiDOtA5E2RhjBN24fJCcWCdoIH4OBznCWmv8usQpOo=;
        b=p014XYIaIDjglWHGPoy/Rb467BD41zfRW2rZBvO1/NGldR2ke4PImzOj4CWSrVtVBU
         /7vK6G7XHxhphXp+ramFuJITyww/WyXOz0whkJPjqUcz3LVmZSkQy2tPRQXPceEh8haC
         VxKIvVfXIyjGB72BySrqTW5s9M26H2HIKae37ZPd36Jd5gb4HA4dp/f+FTWVbVF1Z4jL
         R2//tHH140aDpg6KZHGiOrsw5KUVGoT4GNxKlhhlIz+z9YHqRHdXt8lykMfIxiexTNd4
         9H/a5dTeZE24dcQGy3zEx0uT12rkXUMwqlOU6ET1Ia/YvPvAZeFkjTkPTIwfIU8OhDHG
         igPg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWugKyOX4T8l+mYSxlHfIF+nQXRqinHEclxohVbD1D+bOyw+SDqW/71TDOGAwQUNKR49GBcxg==@lfdr.de
X-Gm-Message-State: AOJu0YyAZakhAUoz3wNlm3LNMJX8kzJVMwQ7UCLglK3eEDZ7xJm+RCPU
	1obitBWcxhEsYRV2d/2Mj33bgRC6DcnxhslKK5Ltug49UAAReLcIWQ/0+mZ56vY=
X-Google-Smtp-Source: AGHT+IEkLWqAmYuWr4Iq6KWvaltH/1Mofy4X4+Hfkxpll891QZ/TZN52Pqq2c6+qe4dr8RCEFloqEQ==
X-Received: by 2002:a17:902:d48d:b0:227:e74a:a05a with SMTP id d9443c01a7336-22e1ead4af2mr98219895ad.44.1746432721177;
        Mon, 05 May 2025 01:12:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBFfy21MXbTUj/fLMf49JQ3deO+veXs89H+U0WTvgF9JcQ==
Received: by 2002:a17:90b:5202:b0:301:a4f2:caf3 with SMTP id
 98e67ed59e1d1-30a3e74c26bls715655a91.0.-pod-prod-08-us; Mon, 05 May 2025
 01:12:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVRwrB+UWirjspizctUD+049RMMpnWFyjgxyXrpC4vegYBTzqch3LDJmK67j8BuAxRG+0UFjFzz3M5Svg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:58e5:b0:2ee:fa0c:cebc with SMTP id 98e67ed59e1d1-30a619ac8c0mr9693643a91.20.1746432719805;
        Mon, 05 May 2025 01:11:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432719; cv=none;
        d=google.com; s=arc-20240605;
        b=ajUEKwnANsA9X4vtfCcXAujbFpo/dP0pWRbbMEzyVGPmrOY41xrSWO8xO62IGV/wB7
         hNAzwEYFqzLB5yLik/+43XFHyrZ+IIaM7xfFlgivPhxRuNbWBP7fv4w68liSUIG+y4dZ
         q2mD+ZP624OiI0INVOZJfgxupyxRkm22LHsYg0scD/Zeso32W0FE7B+9OsNtO4xY/32G
         hzZm/3l5yMz3FePCG92ybbx/lip/ckN4HmPfT/4vgImRapJDph5WTYuUJwYb/5OABEcV
         UhG+4DBBHQtH3djkwsKdgR+kgcOtN0lyzjoXnUSr2oXE28hfT/mRXkRzZ7sg/jbB4IGr
         uWVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hVlNKlTiWcKWvQE8hDK2imIjySObLEfLFt6NJgg5UfE=;
        fh=jCZuufslJRqVNSPQbxa+ulBAoCMg5B41hiJr74nL2CM=;
        b=Wh4ia1qVam7LLGg45oB1Atn/piJZSgkCbfYLLUGO7GUy73NTWJxuDUohkUmNq/70KI
         9oEkCO4zUXuPezwA/zIJZN1OC2voHpaZXuIYfauFZI4jFiIxpfqSBKTbKq4sRfPDC4Jd
         Ct4syaIF+V2wfdjEXmWtuqn6P65qIzWFAoXmJxINeU/2XyvJCq0lgN3hUikh4wOGg9tJ
         6+dVYzmO3Ztd3fSSu9j7iHwtW8ykM++4MRYIYMfrnqlkVE29l1EKdDQoUuIRPzwp+Ndp
         bgMStYqzW143pDu25/IIhK/WEGYX3v56XQv+iEISzo1kEvdTGXsGN9z+sxx37xJLWsAL
         dGmg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Ma23w4e1;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-30a47656adasi12161072a91.122.2025.05.05.01.11.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:11:59 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvd-00000006kYK-3FIY;
	Mon, 05 May 2025 08:11:58 +0000
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
	linux-mm@kvack.org,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 5/7] scsi: remove the no_highmem flag in the host
Date: Mon,  5 May 2025 10:11:24 +0200
Message-ID: <20250505081138.3435992-6-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=Ma23w4e1;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org
 does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
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
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-6-hch%40lst.de.
