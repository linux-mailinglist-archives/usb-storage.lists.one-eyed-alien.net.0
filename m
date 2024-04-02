Return-Path: <usb-storage+bncBDUNBGN3R4KRB64FWCYAMGQE2DBL4GQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3B5895436
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:10 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2a25ef79de4sf432528a91.3
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063228; cv=pass;
        d=google.com; s=arc-20160816;
        b=0QpCrL6GKN8MvIMCy0aTWWGghZleuaQLUyDl/6/DwUtlGVnxj7y2tWbn1qKnbWkze8
         vcHSpmx+9XfwWAtrdHYOl7mvy60wLvfGmiHSCXHKGl/SyE/jusQsAWpjsQWtX5FdGWAh
         vjjqIsegI/FrxzHPY5qRiRTNeLLz+xRyx+xsFuVNnTPmxSjQLPJWItUilsNNC9ZrpwCB
         bxeSL61y7Yh/4RrfwG43OOnPw0nW3OlsZbGMXBGJqMLIRMGnrPdbmXlQwbh32tcj/SZ+
         qJq3ovzv7JwLVEbaUzePDJwZ7HEKtwF9+036yklTCUroSxdz7hLxBVJbSNKTPBfYb7Qt
         bZUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LVo3vlJ1PEMITcGsOUJZu8ft3/x6ysvQSvqOfWjL0gw=;
        fh=tdOSKfoqpIhckm398sqMjA6xSUxBwE7TwiNxjbn5CoE=;
        b=QzwAkMiCHAkKMsUpOZu5byZKlbCBMsTV+ozxqPeKnbIClxCSN7GceW3nPNhanVj26G
         7K4d+IxMe7BKCGbgAkI7UtnH2XfXefmsDVliuFdhf253zs74u+fZgXFiNaAXpOAq9tyy
         cB5ci/ZajaQ8G1K7OMKi6kCBGselKv8Ehlx9HiJahK7nmmwtcDk/yhsMMfza5pz/mv4R
         5dX0gPL8/j27EeREvGG6Lnp3PBavTRPyKDmdH8T1QwvvaOaEcvr3jFd4C1qO7/wny0UB
         gucZj77C/vHk05AtTrel3+rg5RH3EtFAoXVZzxlj31G7E4ElQsC1+mHX+8fn8jycngsI
         9wRA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=R2MxJ9Yr;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063228; x=1712668028; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LVo3vlJ1PEMITcGsOUJZu8ft3/x6ysvQSvqOfWjL0gw=;
        b=eFnotNifsEfMvq1q1TgrPTl0u2hTqedWYAKEVKVvxlmdtz/afutdGebTsj0N388mk9
         1B4aQmD3F15RIGioFfapMFAIDM4ejdp+G/GDNAEIVD0Xhf0KRYSQniawMCdw96+uFL1F
         1EVSpLq4GFXlo2cQVRXt1brf5wJvs+8XRk90c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063228; x=1712668028;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVo3vlJ1PEMITcGsOUJZu8ft3/x6ysvQSvqOfWjL0gw=;
        b=bQXY+3afZ96vo1UdRbHeZQv8cOJeS/jOhn6LtPitoK/B19Xw2HMwFQ9Brv9gUxzPPS
         DsWPRA7hfWeWjf1LXVqmq/cIlyzDCHuP5GBri29t3GLKVLX5A+yjJY521Lj3gXY+dedP
         U4jzz94Vv5ekyvtiU8HvE2tUKU4PiVaVWef8trmm+Xs0jzOoPuRr3LTtFyhYMqf4misj
         zKbhmkSdm6nNO2uOXJ3ECtyzWRNslb+3UyVdSGYcnt4qugss9bdqnSWXJPOt/HGXVaMD
         GhsV7zwnWwpBa5IfGEllAELoxj72lOCdHGowornWN25/EWxGy9eDty48EcPbIjU31vN2
         imiw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWyWrWaqAaQkMROYYIVqBd3OXNg4tsf4MQyQrdr+5zrDyf6hd0bYKRfA0PfF6k3uLBdHuqUiyoFCQI1pGfUKge97VYRWgmEv+kQ
X-Gm-Message-State: AOJu0Yy6+RexvSPTu1ENPfml17+hcQCh8Bdy2Vp0fCioUukeLCt1bfKK
	vOeZhxX8Rc+NfPJhvRLoOpbzIZMEYf8Hsq7RmnWVHQ8RzZDyKyGxS0E9m1rUxUc=
X-Google-Smtp-Source: AGHT+IEGCyauzVgY751th9Eqg23T6QZvPVjeRMjw7wcSkp0hPgsYcCqE2VMeAjN3uvIg50mTHoP4Ng==
X-Received: by 2002:a17:90a:9305:b0:2a0:6676:fc9e with SMTP id p5-20020a17090a930500b002a06676fc9emr9694701pjo.42.1712063228234;
        Tue, 02 Apr 2024 06:07:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1285:b0:2a2:6c35:b46f with SMTP id
 g5-20020a17090a128500b002a26c35b46fls163965pja.1.-pod-prod-09-us; Tue, 02 Apr
 2024 06:07:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXyzn/X5whFcbjl2unOffx+2zeaN+iIwV0EfHO7gQuPdAMuba52QDh0LWb3aqqb+7B1b8+jjJWCGvB9oItyR/owhEXWyk5gqk64UvI1Rf2gHWVJ9vo=
X-Received: by 2002:a17:90a:6346:b0:29f:66e2:d2a6 with SMTP id v6-20020a17090a634600b0029f66e2d2a6mr10566392pjs.26.1712063226697;
        Tue, 02 Apr 2024 06:07:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063226; cv=none;
        d=google.com; s=arc-20160816;
        b=sD9c1avNrMixaIfY797X6fQK3VxX4FXu83BzBb/DmIlVIgeiyHrQYBhDxX8dqTaQHe
         MEfdy7wSvHeU/Qd/B82zl9xmzd02ZVGc5SNQNk0ncbsQM+dbgMndSF/gNRhgFBhkJMMu
         DOcqI5WBvYAAN/CT0Jdkq+XfBWfbTST/3/oO/WBX0z9sIooEoLBzuChoblDNz6sG48LE
         EjkunDJvbAuTbPQCWrbjtbbiaIUqetVysR1SMnPNe0+vPhCsYCQlYfnaosIVIJ1GXU4M
         3fIlmQGoaxO9FeLJpL5/xmuN46vYvVKd+h5Ho/qZm5d0RjLZGqoILsh/ohwIGLbV1QhV
         iiKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y6R85ITUqUhwT/3IQ1uLG/rghT5v0IaA7UulK+Ug8sg=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=bEqXMUzHsdsfjX9F7ePZxw9RcmWPPwBx7GrxPx13/xGucCRVpMPKkr0H8VEsG/W4FW
         hKP9qQ6dC9/gVpPdZKgTh8xRAKuGI06sgTkpDsWNsl7lrwmzYsrMHoJCFdPA09ImHoU/
         9AkveiXMj1wd6hMNTbM1wluddpsUs9++xfVyi8ne579iJhUM7mNkJj2akt9HH6QCU9En
         6EQtykYCtTSqH5pT9P5z3syarvwI6llEHyZaBYUhP+Rc67BHs7AKNFjEIxqSOSO8kSU+
         MzFauFu8ryQjQJnYqtdICwuldlOKP+J/wEVKhs6IzwAtTlwuNfJUqbAFap0l7ZIy5qH6
         yE9g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=R2MxJ9Yr;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id 90-20020a17090a09e300b002a25408f855si1486035pjo.157.2024.04.02.06.07.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:06 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqp-0000000BFL1-15TB;
	Tue, 02 Apr 2024 13:06:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Date: Tue,  2 Apr 2024 15:06:25 +0200
Message-Id: <20240402130645.653507-4-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=R2MxJ9Yr;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
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

Pass the limits to bsg_setup_queue instead of setting them up on the live
queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/mpi3mr/mpi3mr_app.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
index ce5445eb9d0e4e..05e061fc6d3a06 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1838,6 +1838,10 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 {
 	struct device *bsg_dev = &mrioc->bsg_dev;
 	struct device *parent = &mrioc->shost->shost_gendev;
+	struct queue_limits lim = {
+		.max_hw_sectors		= MPI3MR_MAX_APP_XFER_SECTORS,
+		.max_segments		= MPI3MR_MAX_APP_XFER_SEGMENTS,
+	};
 
 	device_initialize(bsg_dev);
 
@@ -1853,20 +1857,14 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 		return;
 	}
 
-	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL,
+	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), &lim,
 			mpi3mr_bsg_request, NULL, 0);
 	if (IS_ERR(mrioc->bsg_queue)) {
 		ioc_err(mrioc, "%s: bsg registration failed\n",
 		    dev_name(bsg_dev));
 		device_del(bsg_dev);
 		put_device(bsg_dev);
-		return;
 	}
-
-	blk_queue_max_segments(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SEGMENTS);
-	blk_queue_max_hw_sectors(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SECTORS);
-
-	return;
 }
 
 /**
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-4-hch%40lst.de.
