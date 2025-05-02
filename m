Return-Path: <usb-storage+bncBDUNBGN3R4KRBBGW2HAAMGQELPO2NGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDDDAA6AE6
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 08:49:42 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2241e7e3addsf15983905ad.1
        for <lists+usb-storage@lfdr.de>; Thu, 01 May 2025 23:49:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746168580; cv=pass;
        d=google.com; s=arc-20240605;
        b=FlFkpFyUKnYrWJaYi0RuSMtxngQw+1Z81cZq7Tj6VYeVquDb7YY1DkIAPJq8L8Qhth
         DC6NyOl5Q5/YMp4sc8T7ZZkm0tQR+YHwdjc/MWLvzizsrWScf/uwRDcCpQ6vULSLQA0n
         t9ndqOv3FpO6QZWPCOqhziSd8MlheBMl0XyJAIR0Ji3oPffvmV63X7FSULdwuItDv6UF
         kYMpk42WBkHb2HYXzeXczuYkcD9qTJef7ZtsCQR8ahsSPSj7jPBZHren5uhUEakMBo+Z
         mwuHIlHDYjcJ1mPSLhLlvTMH4EWq9Ajc5KNlfGVcKE6AuUnF+uIBSSt6awp1mcvTtIwE
         hhtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xXzyXtFwSevX/dey+Y/LwSAtoO+Ja5p4dRuyoaNg7Xw=;
        fh=cikQyVyJwuZhPe7NQ91H/CRlzOax66ntibgLLh+i/jI=;
        b=EwgeNTWLDWIkZgU2KzmGLK0oVbvoEuZzu17SDEcIE7FRkfK2xd8OGLogQgNWvQKkzG
         QWK/p0hcz18fluofoV3SBWHSVfJN88lbLVDv5f9NEGICSBj16X8baFP3Wtr0iNqVAlc5
         gtGCttvMy98kXZKAKywikDh0zs1Dc82YQomTMxS9v3WzGkA6RBVrqKd9H0Zutg01X3KC
         e2H8c/z5q4zQakaCguNrAxe243K+7dWyPvreWx2s//TCruUKpi2XtwnMpaQdlPeVdAS9
         c/mQaBFXiDiW4SgMOHtrpM3eJXcuwmdO765S16j1kd0n3F6P6M3aPcHZSWFkN+MemR8+
         08ag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fBJ3v7Hl;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746168580; x=1746773380; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXzyXtFwSevX/dey+Y/LwSAtoO+Ja5p4dRuyoaNg7Xw=;
        b=QHZSs3V/HpIcN+r1Ajc8ksZ1hApecSP60xsKrLGNLOcORkza2ODae1f0fl6j902/SQ
         JPKvE0J6Padh5zxq9MiH78Xg8C3tUXZA2uf0/tC8snbzfReUMgpIwK3EmpdJQ/Mf5+T4
         QRL3wPNFTV07hLomBTgofY3EYIR9RDrduA+PA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746168580; x=1746773380;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xXzyXtFwSevX/dey+Y/LwSAtoO+Ja5p4dRuyoaNg7Xw=;
        b=K0bOw32bwwY9I+vE3mZcOdtEA0AduJovyT2g/ozuoNYd0X3IlgxXHVm+hyjMGGjqkl
         9JQ9MOIWsZsQBSa0Qw4Wn511gBhmnxUYRgkFSbELmYMjveUF3mA/7e9P0yu/evs1fld+
         KoyLrHfdsaTewf0tIXMOieKGpxuexjxH4SfUJ7061FQtxrND/tzLkmg6fEGM/b0ldB1U
         R1bCwpez/3+W5mObHXsL0OLEh3rTPShh/eJyFg5lPArhIh6EbafBXxnYxLjwnvOOiOOV
         v0828tc6nG9z/HBP0d/J6q6CQuzC9EKGsLkw3Hwp9D5G0OyF5F3ialoRmuEbG1JMu3qi
         GaRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUwhRCpiWT9BTi4lvlrIWmZ87OiHcSfmhrzK5zh4BqGiNQb4iwPPaTYqV7/VnugBa5tKKwkKQ==@lfdr.de
X-Gm-Message-State: AOJu0YyINtHZToZm9YHWSJUBdG5T2t4Z872/JFWj7HTYnn9yO3+Z/5l/
	vatbst5PiVFuOA/0L3xDhVDtx5K/Zyci0MYxoJ0s41aQPzu2T7gK/wtkRdphP0A=
X-Google-Smtp-Source: AGHT+IH6obpKR8bxWLDe/qpsDKxfPojNOQolJMfvZiu8qtqw1ECpPKqFcoYka6bwQNyEVnS2H3E3nw==
X-Received: by 2002:a05:6a21:114f:b0:1f5:8678:1820 with SMTP id adf61e73a8af0-20cde85d486mr2682254637.12.1746168580439;
        Thu, 01 May 2025 23:49:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBGJcEHqZaePX7muVzTjiAVNiZfTAV3GjcJHwuhenbqfXA==
Received: by 2002:a05:6a00:1747:b0:736:b289:bca6 with SMTP id
 d2e1a72fcca58-740459b649dls1821012b3a.1.-pod-prod-01-us; Thu, 01 May 2025
 23:49:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUHJfkXZnO5vDGZce8twTXkD7IvgFlQ3g8LvYClTCwXs0qHTkH4KxTlj0UiM9bYjRwlKq9R6TXEWEiMLg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6300:668a:b0:1fd:f56f:1cbe with SMTP id adf61e73a8af0-20cde95199dmr2616826637.13.1746168578865;
        Thu, 01 May 2025 23:49:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746168578; cv=none;
        d=google.com; s=arc-20240605;
        b=K0x2tp+lRUZOTsO7B199y/j10Bz+K4j3At9vwz3HB5fz266L5I3KDvOEszQ3WL0RpE
         kmaYiqxUKUl6nqHWPDOj1JqcnBcMaLHkNyvg6NZ1YykBPEHC0I1eH/DlDD4s5O6MJ0FE
         8BhTIazUZwvoxYDxjm8eox5xU7C8PDwVzIsJdbDjY59A7HQy0/AotXM6naLuyYZRgV2O
         FnYbiWZ2TU7D1c1hSg4T2OT79UzcWC8/Zoq4/+xx1GF18WkkE42J+jX3PLdxcuNPOVYv
         1q4yC6699DNse1vNwQ9x/oEz9w/PVRKwwWaGffMIdTRuwcdkQZPz6HJuaiLYJwKkANiU
         UCKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2oL8x0BTuH24AYsPOwQRvxExDQJgTOpRI68w9zTOSkc=;
        fh=x2A6uL/apOIfw94ZPPIPls4EhmHGjuKCDF4VgYkQxIs=;
        b=hQCBY49Nm+yC3/bBskMrXFQbjMZjNAs82k7CxFxASwlkbSSmGeAT5sKghS2zixmLXw
         s8US5+waw9+e1GzbA8EQxahW1WJ/y7j76UxlirF1n7ECOHrn/OZuUgm+nvh+K6KqxRPd
         xEn42sQqT3zJ1DI23kKBbeqSuZdSDJJhQkQGb9kPT+bYsnKU3577I90SilzvZ4tfKeKj
         hSObMADc/69e61UHkKa23uqXs2tA3VKyymSsPgQNqg1WMI393lpai5Zm8ekUsU+Xtpsy
         51t0svtmfJz0FkfkcQKlYHTf0oPgYaeD5eBKm11z4xJrHaJH40k6tstyA6frBc9gZBIU
         4iog==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fBJ3v7Hl;
       spf=none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=lst.de
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b1fb3936ab4si57246a12.23.2025.05.01.23.49.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 23:49:38 -0700 (PDT)
Received-SPF: none (google.com: batv+6d8c727bcc7df7513d82+7922+infradead.org+hch@bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [185.143.37.16] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAkDI-0000000113t-0iIo;
	Fri, 02 May 2025 06:49:36 +0000
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
Subject: [usb-storage] [PATCH 1/7] scsi: make aha152x depend on !HIGHMEM
Date: Fri,  2 May 2025 07:49:18 +0100
Message-ID: <20250502064930.2981820-2-hch@lst.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502064930.2981820-1-hch@lst.de>
References: <20250502064930.2981820-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fBJ3v7Hl;
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
 drivers/scsi/Kconfig   | 1 +
 drivers/scsi/aha152x.c | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
index 5a3c670aec27..c89e6991e934 100644
--- a/drivers/scsi/Kconfig
+++ b/drivers/scsi/Kconfig
@@ -403,6 +403,7 @@ config SCSI_ACARD
 config SCSI_AHA152X
 	tristate "Adaptec AHA152X/2825 support"
 	depends on ISA && SCSI
+	depends on !HIGHMEM
 	select SCSI_SPI_ATTRS
 	select CHECK_SIGNATURE
 	help
diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 4276f868cd91..e94c0a19c435 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -746,7 +746,6 @@ struct Scsi_Host *aha152x_probe_one(struct aha152x_setup *setup)
 	/* need to have host registered before triggering any interrupt */
 	list_add_tail(&HOSTDATA(shpnt)->host_list, &aha152x_host_list);
 
-	shpnt->no_highmem = true;
 	shpnt->io_port   = setup->io_port;
 	shpnt->n_io_port = IO_RANGE;
 	shpnt->irq       = setup->irq;
-- 
2.47.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250502064930.2981820-2-hch%40lst.de.
