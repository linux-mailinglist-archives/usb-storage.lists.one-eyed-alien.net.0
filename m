Return-Path: <usb-storage+bncBDUNBGN3R4KRBCGW2HAAMGQEGISB2UY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 77699AA6AE9
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:46 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-2241d228d47sf3119565ad.3
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168585; cv=pass;
        d=google.com; s=arc-20240605;
        b=KjPT6yB68OIXH01dXwsfBwl/sBPYlgr3qwi5yRiYs4Blmzcjtz7BlK/iE4wZ1M6kNi
         aZmzSNK0RNGXg4wiP8tX/jHvnvRXTCOlwq3CLAO2cjLHi5Du40/Csc3JcyY4TT43Bo1S
         vP2Ve3Ya/c1wXWDOYq2KyGLhqNa11WrCca2/oPEhi/AjJRRn3dkee7oyiUjgWjzdNPmH
         l+EcSr1jiE6HXjRfmC5PgSi+O9yNEUCQqWRmckku98OUjcA0LFu+yPqNVe+wICs2XcCi
         fYC7SRn33DVQMNjtaXuZXWricB+UKRettSn+U4zRiWiU/uLTXpfkRw6jtTEA4xRhQz7/
         s79g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=17maPf/vqWCQ6ODO92Vz+Jgvjq0SSBeyH1e8DZ91BUM=;
        fh=cKeJvbgq4n8YcRYfNTHdeZoaEV8G+F7aMBNU3Sr3rhc=;
        b=JA2oKObEZms+Vf0hGycgkmu5/ScSCZ9kZMU+lZMWdHnWK+EMyQGfXOAoRng57Nq/9A
         iBBTkBpFJn3TVMRN54dIaC7prwiUthbn6aMq0kr3BiBw3VFdxVtU4RUShElSaS2kFeFq
         oxxjVnsDyIVmII+yXInJ7lomFrLpBFy4MzBcngD1YrJwsJERvqobrKQR67jOxuYl0IM9
         ScaLMm3xm40aOJOm79XCRT70QkmiypdnA9SK6JzxNc4/vvon1hedLSUde30Gtc3igWaI
         l88NiqHf4PLJE2FWe2cc3sNbDy8GQl0DLH6+fCzGb6gJ9vz+dhjUSpAIL0X0G4g7AsLt
         j8bw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cq5A0S9D;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168585; x=1746773385; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=17maPf/vqWCQ6ODO92Vz+Jgvjq0SSBeyH1e8DZ91BUM=;
        b=ClaVurNYkLvvcVKUPSaOqrl4kqiYyLUqdyhLNlFTVBlG9ArYSFG/nTm36RwX0KniUu
         2BLLNboRWmn90hrv6ornNS3/QHTOA1n75vaF2wRyrY/AcZSO8PkiWqFVI8gKNpM5AumY
         yQUH7BQYIg762b5GZStd0MDw/mhXVv9mLvurk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168585; x=1746773385;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=17maPf/vqWCQ6ODO92Vz+Jgvjq0SSBeyH1e8DZ91BUM=;
        b=mj0WelM2kV6NtejV7dyiKUhDQ3kTxvXYrinns/KZZ51nZrLdAx6SeQ7rYqnyy+IiVb
         StS4H4hR8BHuVxWwOxkbBGRu556g9mrBVXyCsbvvJ8hFYSUMsRjp+hCxaha2Scu3Z78z
         iXvSue41DB9zwFTjN+IWV8yIc56ruOaMwLs12OlDiVxV2XAOtJLRNC1bY5jk1dl1BnKq
         CrPQ3Mef1442dXtXUUZhl18MayL/m0VxZXCIcZvA6E1FzlymGmdRdUsWqB/7ySy8d9lo
         eyGkuRBER8zNrXWJ6IciE23/LXKSG0Kp4VSywFfHKdpuVZQClWmHixW8KmiXz7kU39QH
         zehg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX5wkiqVqn7a397/ZnYgc2rNBGOlD7srFigqsYMw7H9ab5SwAz+Y7VfNWIfVqshrTr/eR9eCw==@lfdr.de
X-Gm-Message-State: AOJu0YzkhKuhufQG4+uwr/znhQ2EgQ08kljpD8fiYIQhz0DrJgPsXk3/
	q9qW6UYoJ9cL450ctNQHHF98VQ6GxWuGvYzUkor/dQW+qyQ+8zi5yXJ+vfqVjHQ=
X-Google-Smtp-Source: AGHT+IFn6oC8G/w64nXR+B8MQCZDmDXSSvosdOZJ8GKEWZyAWwb1D9ppkErab67NlpJMoMcVUn1rnA==
X-Received: by 2002:a17:903:1aeb:b0:21f:519:6bc6 with SMTP id d9443c01a7336-22e10331d01mr10306005ad.9.1746168585031;
        Thu, 01 May 2025 23:49:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBETBbVDPkQAZDxjWaX2WKHOcXTdXMsv7ZHd6SEPqV8d1Q==
Received: by 2002:a17:90a:c002:b0:2ff:4b14:3df1 with SMTP id
 98e67ed59e1d1-30a3e752b6fls1303818a91.0.-pod-prod-01-us; Thu, 01 May 2025
 23:49:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUFJ9uttJGVvbrXTtVxkeG9tH3DEC/Dn9D/dNDb9N6ShZVvDifiF5BGaYotcG7bTJ61gjJn/GDJPi2ymA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:f546:b0:224:1c41:a4c0 with SMTP id d9443c01a7336-22e102b6bcbmr26477415ad.9.1746168583648;
        Thu, 01 May 2025 23:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168583; cv=none;
        d=google.com; s=arc-20240605;
        b=d2F1O3GHyppf9zbSnNX2mBnoCUnmsg+vFPTpcRFkUjQr+n2fa5tLNlIO2D3uHO9hl2
         KUS/sRrYq2bgWLz6PWAM4QNmp0Q+Ppv6CHKR6wUrVD3M++dGagAISCgZAMd768ihIR4e
         jyVvdqeIEoLL6XgUgysgM8pcGIUo77xfpZHLgABFHMIYlWzdLGYgIjTadLvkUR/D6fsG
         GAwYszxu9uW/XvaXe4+LlIQZq35xdL+YByvORlckFtY/yS5c0D75jOr4IsH44rY4v8eA
         3g3t2PYVNz38XdOdhbICzzXo9c3yp4fN1Aiq4/N2cFk8jskIdU2VqOB6/upUHaEl70i4
         c7dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A6DrXylWbVeQmEZpWC9MNkt93jfH/DDfytNjBqDDC6k=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=Qk5cJRKods8C3h2hDJRE3B+ff52IXB7IlezQDtVdYn4RLdv98bAIb2k0edtbNB+D5d
         sCVHJbmXpgseMxdBZNPKnr8UGWK8Ci1Op+YevgsY7YobGuCYUNmMdROOZwbLCe4VCbfZ
         wPeR2EjOb4vYzRcIbGKFf2PcZUxJlrVoVcrv3wgBLXraZN5KZds7ZKb/w2ghjVShHhNW
         luKJmaFX/m8kBSq+tmPO3E1PWDgcj+mAUIY4uw+eEZaPceqH4QndwPGrtteVb9caIP/g
         +AXE71sMm452VcB3jTrWIFWmIV1EyM6Kcr3C59YlRuhGtcrWrbbvEx0H3Sgc8e0JV686
         FApw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cq5A0S9D;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3c73b3asi32423a12.644.2025.05.01.23.49.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:43 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDN-0000000114T-0K28;
	Fri, 02 May 2025 06:49:41 +0000
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
Subject: [usb-storage] [PATCH 3/7] scsi: make ppa depend on !HIGHMEM
Date: Fri,  2 May 2025 07:49:20 +0100
Message-ID: <20250502064930.2981820-4-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=cq5A0S9D;
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

This is one of the last drivers depending on the block layer bounce
buffering code.  Restrict it to run on non-highmem configs so that the
bounce buffering code can be removed.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/Kconfig | 1 +
 drivers/scsi/ppa.c   | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
index 82e0b7eaed4c..5522310bab8d 100644
--- a/drivers/scsi/Kconfig
+++ b/drivers/scsi/Kconfig
@@ -796,6 +796,7 @@ config SCSI_PPA
 	tristate "IOMEGA parallel port (ppa - older drives)"
 	depends on SCSI && PARPORT_PC
 	depends on HAS_IOPORT
+	depends on !HIGHMEM
 	help
 	  This driver supports older versions of IOMEGA's parallel port ZIP
 	  drive (a 100 MB removable media device).
diff --git a/drivers/scsi/ppa.c b/drivers/scsi/ppa.c
index a06329b47851..1ed3171f1797 100644
--- a/drivers/scsi/ppa.c
+++ b/drivers/scsi/ppa.c
@@ -1104,7 +1104,6 @@ static int __ppa_attach(struct parport *pb)
 	host = scsi_host_alloc(&ppa_template, sizeof(ppa_struct *));
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-4-hch%40lst.de.
