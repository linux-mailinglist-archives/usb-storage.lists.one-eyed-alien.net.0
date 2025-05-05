Return-Path: <usb-storage+bncBDUNBGN3R4KRBR7F4HAAMGQEIP52T6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id B55C7AA8DE1
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:11:53 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-303502edec5sf652126a91.0
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:11:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432712; cv=pass;
        d=google.com; s=arc-20240605;
        b=WO0MrV+SuMvTAADBkD3H9rYLa/uS30BYQhLMDZY44My7zRf3HUA2NM9E5yzx3vYs0e
         HZReEn+qcvhli9yZRev7g0DztU5LJddAG8rgP7+9xKdg0s87bWr4tffPobL4MxAjdqyH
         JE9J9z/9ZtNbmIhy61pG+X/MJOdFtSeWOIDQBN1+lfo7hvPsdy1vjRwISPZZH76LG+ZE
         SFFEeusZv43kKxtsyM7lNrc017A+cDVvhHSDiK7t2+EG8pBIb653xKxaDc9lieizwFfL
         rBbbV51PKx+PJS3E/SZurddWmtXFgrhoPszpWSQvotAMRhASb+LnaNYqwgQDlJRx3buk
         5DfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ex22flecz+8vlDqoVyWarReZzj2TeY2fRy8MJPpSLDo=;
        fh=mlokqGKkRTryZVIakPWhG6l/1yoBPfZCAp+uCmvUkNY=;
        b=N1DLBjo04bQCARhLENivyL1DCCkqQYIxz5xC+JGHFtl/fAL/C1Mi3V/fV0T/V7/lb1
         c8Z1I9qzX9zxqHGvsVu4HH7SRFq7zZSnO574W1ShwjwG1XCTIqbu3pNj4a9e0dW0pTvC
         VnmSe4Sr4gM8GukJAje89SVpFROKEvqbrZgITiiRl/UsrXuIOAhYhqMz90t7QbkxkcDT
         JvM/1eildPo51vCZnS624cALEHpm3h7//rS220FjBuFUYbaEr6bePqgVT0QzzvFdNPD5
         sQNmyBfhdWubbj1Mww0GKtS05p3DMrsHBE6bJFUJTqiAt1pYmhIMVnaVQNVG3Ml8kT4j
         Y+9g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mVboznPL;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432712; x=1747037512; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex22flecz+8vlDqoVyWarReZzj2TeY2fRy8MJPpSLDo=;
        b=FH3j+iJjbSxfUfIXtEWMa1oyYwdOmzNSY2zJ8UGv8PSiEi0KnmcJgElbsLWZaYay1P
         xNcamNMpdU28LMtNqOmx4L4ap+64MbP/DIqwVpqt8MRVE32qO91+3mqDZ+8NQdol64Yp
         69Xj9XyNt77sEhvah1tYDnb0JHBovvOvGmZgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432712; x=1747037512;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ex22flecz+8vlDqoVyWarReZzj2TeY2fRy8MJPpSLDo=;
        b=t14UztryPxZrwqs9fA1NhU/rG9fDfx39gIpHfVc28xLEsg0NbG71CoXIcHfZ4usMhX
         phlD+Dvx8EFRTSB1kL0N9r0E0g7Y9Yr61czG0x5f6ath5rjvcZJqAWl42xSgHXu9E2cJ
         aZseOFSPi9rB4WIkNBoCnBT4zDNQI0T/HIi4gA4Yeqryvngx8b73eOiXJP+fTmvkYU1t
         rORgeO+dGeSs7KYnkY4YBFh3F8BjQraf5EDB/NQ06+u/Rk1n/kdGASvoqZ5kWcWoEibE
         uRYSuMHvWVSSxYZx9sfaXF11FlgGJzx4ZqBSlcUX+qFawkNDktHcH5LdSrEbypZuw8ia
         UMUg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCURrOfZhzYgAb2GiRz072gt2HXiTw+VP4MpynGQ37xdFWBtCLq5M+QyDAX6B14g+whgQSvdjQ==@lfdr.de
X-Gm-Message-State: AOJu0YzmaEf2g3x8Yx5jrhua3mGJz0DE/yRtJom0KuE7japYFaAh8mlP
	fySjlPFxvP/IDs1iDvAFo28msUEFz5tBwk+4+ZMs2jaA7LqPcvPjZIBnbURRRJI=
X-Google-Smtp-Source: AGHT+IHcXmDpnqBoIx5KeoCXKpbm5dORBoADNBLX/jXunAU7CiHRhQ540qBM6rlLEBO/KdxQKE+/wA==
X-Received: by 2002:a17:90b:2247:b0:30a:2173:9f16 with SMTP id 98e67ed59e1d1-30a4e57ae6fmr6718056a91.1.1746432712200;
        Mon, 05 May 2025 01:11:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBGVwwt7VF+LsKQCvvlKYpOpasVYnoac5Vaa5R7qzqR4fw==
Received: by 2002:a17:90a:d3c2:b0:2fa:5303:b1e3 with SMTP id
 98e67ed59e1d1-30a3e8953d6ls10370a91.1.-pod-prod-01-us; Mon, 05 May 2025
 01:11:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWWElhtpwttk++26/ClYDAOqGUMIKG1tp+ByiCDLFqsO6X5Y1smTRWMwpaGOoOrbet/AnfpgXN3N57X2w==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:57cc:b0:2ff:58c7:a71f with SMTP id 98e67ed59e1d1-30a4e692471mr16444174a91.32.1746432710811;
        Mon, 05 May 2025 01:11:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432710; cv=none;
        d=google.com; s=arc-20240605;
        b=cwmiCcbIoCIMH4vr4u+6inIKMDUzVz7q7xuFm6EUFrbG3yshJhsLiEa6A6nFtC6ayg
         xNm6sav4v7NZfdEIM8fa5iRxvoJ+tLAWSHRUL8hzKwOtNOSE5V2J8Rs7BzR61gtHf0e3
         y/bLZwjapGBMKSNcKeMKpJooH0AxsBLKvAYEkZDxSmhzrQH0LQxWGbni2sGYaFXMa4TC
         +UqweENhKMJFJ3EbDzXyETboYan8G0nUGN2LZfqPheiy3IrpJysX6DA8XRKDvbI24MM6
         6FUuhE4PlhSbcnaelipToDh7LN4wipRVAlVBrz1CsqmgfjnlJfW/OXPRmZSxmbFWmQbh
         4h2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kQf1e/kueh2bEuIw1LkOrhYnNIR8dIL59IBRnHXuOrc=;
        fh=jCZuufslJRqVNSPQbxa+ulBAoCMg5B41hiJr74nL2CM=;
        b=NYj0bPS2djbQWW7vER19RW9+2v4hkaJJPu4XIwgkbD06KjX/D0RPFEdWjLWsJtp0LN
         4CJDF0BiLStv8EZlY9Qii5XYy46bnPGZ0seEWMAWoNxdodzW38aokMwSMOQTqqNHt2oT
         Jgaez3qS4VfQV81ndE4w9mhCs7TtsRoECByd8kEKgDWVr3xcA/QzPGiz17poq+Ta56YR
         36WwwGf2SEBbfbw1ID0zcacULzziw/dEabkr1Z06ARTMBUCoyS+mR672MiCZ01B48DnC
         hux8UevcWbWogsCh+mSJgGmY18eCI803pOlPlRRlPUd4vlAJe9y3X0Clt+31r5W1VpRx
         LWLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mVboznPL;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-30a5a6796f2si7301976a91.36.2025.05.05.01.11.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:11:50 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvU-00000006kTZ-26Uz;
	Mon, 05 May 2025 08:11:49 +0000
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
Subject: [usb-storage] [PATCH 2/7] scsi: make imm depend on !HIGHMEM
Date: Mon,  5 May 2025 10:11:21 +0200
Message-ID: <20250505081138.3435992-3-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=mVboznPL;
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

This is one of the last drivers depending on the block layer bounce
buffering code.  Restrict it to run on non-highmem configs so that the
bounce buffering code can be removed.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/Kconfig | 1 +
 drivers/scsi/imm.c   | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
index c89e6991e934..82e0b7eaed4c 100644
--- a/drivers/scsi/Kconfig
+++ b/drivers/scsi/Kconfig
@@ -823,6 +823,7 @@ config SCSI_PPA
 config SCSI_IMM
 	tristate "IOMEGA parallel port (imm - newer drives)"
 	depends on SCSI && PARPORT_PC
+	depends on !HIGHMEM
 	help
 	  This driver supports newer versions of IOMEGA's parallel port ZIP
 	  drive (a 100 MB removable media device).
diff --git a/drivers/scsi/imm.c b/drivers/scsi/imm.c
index 1d4c7310f1a6..0821cf994b98 100644
--- a/drivers/scsi/imm.c
+++ b/drivers/scsi/imm.c
@@ -1224,7 +1224,6 @@ static int __imm_attach(struct parport *pb)
 	host = scsi_host_alloc(&imm_template, sizeof(imm_struct *));
 	if (!host)
 		goto out1;
-	host->no_highmem = true;
 	host->io_port = pb->base;
 	host->n_io_port = ports;
 	host->dma_channel = -1;
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-3-hch%40lst.de.
