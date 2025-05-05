Return-Path: <usb-storage+bncBDUNBGN3R4KRBS7F4HAAMGQEYB3IGBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id AE529AA8DE4
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 10:11:57 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-224192ff68bsf33979265ad.1
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 01:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746432716; cv=pass;
        d=google.com; s=arc-20240605;
        b=dDTAN5nQoVEsF2e90GTfiVyiaQlABG9Vj8GNHAz6ufWqhl8yQizQN/Z+sEpZRW2lYH
         cb0BMnYwnEg5kVqMljG7Aaq9z4kIxvOgfNFWlCIwwd1RKLNF0FhscFra/U8Nh+Qath45
         hExiAUKD7uJGBCuc9uzXGT8f0vIz8Y8Ug0KIuWC5+Aj7DMYDA+O4JPgrzW2mQVOGFb4Q
         5hWEsQoJ12iQT2HsXfEfViY15eNgjfN21x3QO3W1YGdxukja/jLxRdugr/P0J2EPWjVt
         ABqxxTVCZjxt7sKzpKlwKvrXClDEabBd0C9VncQw/2MCbWif40v/BRUhhUlRFwYHdixJ
         QJnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iJL64OWnreAEnJyJigB3jYTuv9wY3N6NrvePp8dPBrs=;
        fh=umE4PMW21fJ76Ik0bILCbN7xQXuHQ8sTc5yFrvBvMsg=;
        b=gaGD09NVZlqUikOWNwQJVd5rGAsqs20z9DqQTiK53mrTrj4CZEgnVvdgDxzXVl61JZ
         sALX1gsWmWHG38XEcxfITMwBx7GouwtSuoMRTby1agep+FEg0S5HE4OHYUrNgrKUz9ab
         bLYxlbW7ST+FVQhweEErxxlfkFjY+WlVq1dxTlHB2og6YVS+Xam3lcjgtCZkn/VSwXJr
         gG/b2IL9jYSGGdn+2v9choZVmh4Uksgdq9tLLZ8pK5dnMDIcyVr/jI7q/CNRSYbvo4DC
         AjRDPTpzLA1OXIOzH7/E8+oavMgUrRya+SdVNjRC2vxjJ5sB9JLELC/vddgFIVE60XCd
         RNtg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uObhKkX7;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746432716; x=1747037516; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iJL64OWnreAEnJyJigB3jYTuv9wY3N6NrvePp8dPBrs=;
        b=YAjatl0T3n20Lx72WBWIyNez+z3qbTtkuKhMp1ZQKnIatf9zIE/twfAss4R7Tw08E+
         PVoqN52LY0ouEuAQcDj38VZ03/lS+2jlg3Tu5QdheGiiDF8XoMIQkzR9NAgUSBKVgSet
         cPKwoMQc4Ba4KKvNfWB61NIhkjWG0ydIYUNkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432716; x=1747037516;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJL64OWnreAEnJyJigB3jYTuv9wY3N6NrvePp8dPBrs=;
        b=hKrVzjIiwUHWFlD4aa2kvaXdMX6dVjKEGg+4g8I6dSVWWEWjuULwsStwn4o4ru+7HJ
         fPUHdO6tcRm443+Go07/ikMFKHHsK5ZbM29LACw15BxQEH+BJFb0myY9xnbEIlCbjeW+
         wJZejgv1xf94irBHZgClecqR+G7G7Xd2KmdNtqD0ZT6ZwyE5T9WnOV6HxfaoiCWnvh+H
         x1kSCYoKpnliQDZLN7ACFcAR/R7NwlO7QnzPKFr8BdFCk/wNcu6VlLOBl/tyViw6ozHS
         3PanDk/PovefrQWPWRIE/sbVpRvRRGOnX6khC3Xde/AofWamGgauDwv5jlTa/ExSPP9h
         3CVQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUc40FAdyTAC6jihyvvcy66BGD9dOQAKYbaVj/ORJLQ/j218y6u4yd0ExGmFSYmbOE7SmrqeQ==@lfdr.de
X-Gm-Message-State: AOJu0YyQ6ZVtcYhUeKT4Xc7hQbXslu6bBX3+KEPJlxUW3SiqeDo2P6LW
	kdv4pqiscRik6L0ZYAuae0vhlraj0rsvcEFUS9/YkT/gGG+gXmYfj4EeIjoEODo=
X-Google-Smtp-Source: AGHT+IEf5K0rHcAHRXrEyoEuIlbDvB4NXRJH0C3HkgoQH15GnsvoMCoIJC5aqgl6e2RyN2lj/HLLbA==
X-Received: by 2002:a05:6a20:e608:b0:1f5:591b:4f73 with SMTP id adf61e73a8af0-20e078048dbmr14513846637.34.1746432716217;
        Mon, 05 May 2025 01:11:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEn60ufQY41fA0apAkvOu+z1uZn8E7PTOlVA9rlpgzxNA==
Received: by 2002:a05:6a00:39a1:b0:725:e3f6:b149 with SMTP id
 d2e1a72fcca58-7404598faeels4087633b3a.1.-pod-prod-02-us; Mon, 05 May 2025
 01:11:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWDMKM4heopO6yM0UJqcYK9tA72JSxGVlBiNI7sh0vmAenf0IVYjrq4SOpjdKdHhInOUDNeYZa8l/hs8Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:999b:b0:206:a9bd:a3a3 with SMTP id adf61e73a8af0-20e06833713mr10968281637.24.1746432714657;
        Mon, 05 May 2025 01:11:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746432714; cv=none;
        d=google.com; s=arc-20240605;
        b=TDC9zue+PNW9XGxBRmJIQmcxlxgF49WBePe8nM4SGCEO6G+s2YqZB6zQlj9CzKjS/x
         YpYqLGpfJUhsLFXiUfPM4JnktI5OOC3puNext5e2Q6yO/SPQU7jjAIICxWkgq/gRmnrc
         z9eZGJIsuT781CRKebtlmHKsDMvus1HU+ZMAN74ihMJbSRQTdp+xH00KkBDaoxtrkeeE
         O1VB+OK9kmkBVP7x8uBqSGJ/4cHAAGjUhcNJT9l9tKOq7ByzhsHIcYVGt6AR/62zgduQ
         DO4iNZkKlKD1bUQmHE6h97p/aXiL8DgIYykXhBF5IO5NC3QN0ae4JUW88aSED+8ozI1p
         5Urw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kDizabCCdyxATU2dAD2Y+usEvCItNB58jVxVeM+hLcw=;
        fh=jCZuufslJRqVNSPQbxa+ulBAoCMg5B41hiJr74nL2CM=;
        b=luYFDYv0wfU+nOF1IKZBOkHfkOYI/CfkOLykuC/eBFvuuZ0yZO8B8QX9ADaMz2oHew
         2M+vzanrQ8PhMLoWrtNwF7sp2DwE5z2LhC4yAvGkPucmRpa+qlp7o0QedrxlIIneYhlR
         cgNRpEMkkecLn9epzE2Xp07gMe9BkcjtzLiRkXHDEryLtmKSvCnvjeSn8Z6WZa6Va8p4
         UlxE+ZLHrhspoKz++7tRJbPfX4dKzdcdIB0vzNK4LbVIfzeKbwYVfYrGDSjJE3qaDctK
         LIHSWju482KwymN6x0bSUJEVF7icjrukfB3BJ2dCILTW5TeTuYvlUYQt6WP+EAHBmj8f
         5Snw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uObhKkX7;
       spf=none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3936c74si8424925a12.108.2025.05.05.01.11.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:11:54 -0700 (PDT)
Received-SPF: none (google.com: batv+9b9d72b124a21f5aaaac+7925+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-f2ef-69c9-6274-23a2.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:f2ef:69c9:6274:23a2] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqvY-00000006kUY-2Cre;
	Mon, 05 May 2025 08:11:53 +0000
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
Subject: [usb-storage] [PATCH 3/7] scsi: make ppa depend on !HIGHMEM
Date: Mon,  5 May 2025 10:11:22 +0200
Message-ID: <20250505081138.3435992-4-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=uObhKkX7;
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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505081138.3435992-4-hch%40lst.de.
