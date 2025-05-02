Return-Path: <usb-storage+bncBDUNBGN3R4KRBBWW2HAAMGQECO52OAQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A44AA6AE7
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:44 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2ff58318acasf2739148a91.0
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168583; cv=pass;
        d=google.com; s=arc-20240605;
        b=VIE4U3IaynIfrnjRm48oxSxAnjTbvS4nF7fd/ddd9yFQoG+QUdR4i1XXY7rNB/pAK3
         qoQtNN2Ryeh//yAZpoZAvVdKwPyDsKUmJXyY8wVorVmMOAdWrKlh1V2ELwzNI1VfCPbi
         EIEXEj7sPQ2M2GVfpaxwJs+gIBlXlcM8RQyFxsmIcO5JtVtDKRL0QC9gRCGfbZFs/slk
         q6vdMvyCynZaYc79BbptItY4qlFTUOEKGb9gJwVrAVYSvwjAydXHbY/jxDwDNwnHlaHL
         ticMEPMmzUsPINdBoDYzOVrg2unPnLX2CCRMLrdSbNVqheAZ9wYTfrHmN+eDTYwuci+M
         jeDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wz8z21B5jDLO4LgMPe5QDx0pacrcbpEu/hz85mJ3wOo=;
        fh=PsglYm/yHefkUWjO/dUWgMYSB8vcK2s25WrV2D1YYHc=;
        b=SsGt3oczoL6AYSMyb7F5nYcRLOXymIKiKAFurvKIdZMbLuTkEVo/p6lDgjDD5VSGsv
         vE/nlRhwkZClHPq0Ufy99eEYA5XpnNCmt86aDpyHy5YFlTuDIwN9CE2VutjELXd7zZCj
         J8PnoLzyDtZW4HRy3SPJedJmClWL1Xlw4PtB6fDkVpIh141/fhT/4h+NZ9wgOIT79xQu
         LjLGQg2sWlDv2ra5hGCI2vYXFrf8YEd2jTwb417r5OP027RLvuEwFBz/UYvUQQaF8YQK
         7ZkXHdODVAUCZgTzWGxIl0sdDdkyJbfjdiM4p8gd2BoYswezZC7X8t4JTNC/XDSChzeM
         UhuA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=qCSaUfho;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168583; x=1746773383; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wz8z21B5jDLO4LgMPe5QDx0pacrcbpEu/hz85mJ3wOo=;
        b=CT1d5QuVi/N3Fn0vBwv/v1ln9dbFYxbWXyho2H1ii4qWRx/dcc2v70NVkUxwHnqxQc
         fPOesol+TXVeY0hRFulPc7jO7RnsPLGUupQ7fu2iRvQaooKOcgPg2WMVPUdqou4ku+zN
         lurreOfgtakFOnD4py0KZAMdsF2fR5W1NyCRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168583; x=1746773383;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wz8z21B5jDLO4LgMPe5QDx0pacrcbpEu/hz85mJ3wOo=;
        b=fisEmAEKve4o6VKBOq6YFSD9kE+MdtMuZZVtHnNQlQJOhUTvPb7VChCsLensI816nl
         PuiyPQEmdHMXG6LYxTBGM+mEzuaYoD456P/e9k0xPsOpDshk/DEQXbQq3JuPg9lIHsQf
         BWRrrUlmfimAUs9GbGStOVSXd40OORFV1uMZ63/blAh1/AOtLE/gGK3J2HIhQOIcLAkZ
         88yFECXX+ivvujJyHNYVccQ8g/2Y306Y6qaa7MjUDMb5DxyttxQYMbbOeWhETOelHvlK
         uX8Wvz7r8uuINmJ541iicxYy39BXaZR0k7ckdiGJDH8AXdy7zyMMBrPOGzEFnvzZFmXD
         qA4g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXxT1t9bp04C+5fFHGYbpyALjIhvHRPyRm8El7bgVxj/zmke4nDBaKlo5cRkYTu3T5sSmXJfQ==@lfdr.de
X-Gm-Message-State: AOJu0YxkXpZd/e3yVjTJyaO165LkPMJecWdHOnlHoPxE1+fbxYqeEKcN
	cewXpjaUDD4w1Q0+dKg3HND/BMIa4kXTm/NxU+MQ/ZSKit6Z7m0WAboe8AyQKLQ=
X-Google-Smtp-Source: AGHT+IEGsPMjPxvOi0ng5zKv6sw1rr3fBA0Oyij0mNBRe9D0+D9qqjdaD3XHv4NVGVX5jz76YO4i9A==
X-Received: by 2002:a17:90a:c88f:b0:2ff:62f3:5b31 with SMTP id 98e67ed59e1d1-30a4e6bec8emr2527044a91.29.1746168582720;
        Thu, 01 May 2025 23:49:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBHuqA3ssCHWCUqqPe5ByQofBaG7G+H7qK9j9gwYkBMKEw==
Received: by 2002:a17:90b:270c:b0:2ff:4f04:3973 with SMTP id
 98e67ed59e1d1-30a3e8a090als1835134a91.2.-pod-prod-08-us; Thu, 01 May 2025
 23:49:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU1lbPmcDZn613HS9IsCjZ3JqA1dOAFm1exUnSvqkUGjSnXC85tfJUK9yIZqsOulB3Pk4ghQCUyjOq1eA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:440b:b0:223:5a6e:b16 with SMTP id d9443c01a7336-22e102b5e03mr30324505ad.5.1746168581294;
        Thu, 01 May 2025 23:49:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168581; cv=none;
        d=google.com; s=arc-20240605;
        b=E+x9Llr8eJHonJ89sE629n8DYT6ujDrFQBeW860jwTfhF+/qH2zbI56LDGWbB2oHze
         YEc/Z+k9FjRxapJJvHrOLP5yYtF6/UaCttwpidVn90Y5tjhuPCSYNcHqINGAJXgEJqCF
         72Bme7ffvBrO9UGjapq8roA9oRYEC+EVgcbaiQP6IDXdJXFZlP0mEyRIYgl0ctXdWyOW
         1oF7RNDc9fDPxCilMwziZbyC4yW9npYLaU8FEnqPBIXNSDYP6NBBQmpMfwQ02qG+jrBi
         +EODBukoboQWjjgSzJOM0ejFSWCTbXoa4lLDaR2SK+uelYKPn/1yugRyD6LkhbIleTc2
         ks+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=78GG8S2TAx+d9AuPIDGtXdRBSe6WPG5mzOlHyWW34d4=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=ArQXRvanxjNqrzEITdgNbG583LUg0G7/e8Mw4g3neMDc3WfFyrR8cXxjyTjclt5taw
         5gljk+hV8iwCzox0+Z/h9gtYlFh7CnrAJuIs0lSW3ceufQFdwy4hQDtpTU5RLkZM/EwY
         ma1gtwMwBb7r0fsfEFzTUGyeZogueQ+j8ACsmEnR++O0Iez2CSC6VYX46DjmDQB3Mwrd
         8ebSJbv2kZTTneolkqYujICveZIuB0NU4wH5a7YhoZ3SWMaMMvEXfYQnmdLtiTVCTvju
         LMkQuPaFSRFtRjihtlLx6uzvoRxZG2CJfkuQotudCDDfDbfQD11olhPNkAe3IoQSC7Ym
         pz7Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=qCSaUfho;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d9443c01a7336-22e1521b0b8si419205ad.267.2025.05.01.23.49.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:41 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDK-0000000114E-2irk;
	Fri, 02 May 2025 06:49:39 +0000
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
Subject: [usb-storage] [PATCH 2/7] scsi: make imm depend on !HIGHMEM
Date: Fri,  2 May 2025 07:49:19 +0100
Message-ID: <20250502064930.2981820-3-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=qCSaUfho;
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-3-hch%40lst.de.
