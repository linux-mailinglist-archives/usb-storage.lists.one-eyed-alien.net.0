Return-Path: <usb-storage+bncBDUNBGN3R4KRBHP3QKYAMGQEWPQD6HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id C87258882D8
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:14 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id d2e1a72fcca58-6e6b15967dasf3549326b3a.2
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324573; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZlI9UoXa1MOWS/DqzlQnVpBeK3IhphjtooKiiEiIYZH+SH+kO/mjzOsRHaEd8E1gA
         3UUys610He73c89cE8LtwQfqFJLGRS9dGrbgFk5wIDrKGKXHxm7QoNdlNfvXCCUe1ahM
         vSeUAHfhl+yRSaiArEc9HDMGJZD6UqRqHNaSVrF6Dxj02G280bXXcogKoGHN6YH7TZG/
         SomhIyL7s/yn/6NyLvR7BNpvBjTX+BDNaQf5RNaILd8SoYXaQOLNq6GI0laqy5eTHN6r
         Zs1t6MDYMho6dN7KB9bfe6yPdEHXM2QE0Jv+Gumnv2Wf2xxG/LqVkdm2pGDYgLAJ3k+f
         Inag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mjmhHLcqig/EBR4Nv9aV1KuLFyARJH/LgT9dk7U+v38=;
        fh=eRxVUudWPBj8NJcTAprDXRp3feABfumCxhZaMmCTM+s=;
        b=CEvXuJqBu0HAdKSgr9lGsCCZ/fieP6WQmKxjrShGZ8xDfNbRBwD7p88AjUwDrasnYb
         sMJyV9h1uzLRb6TnbmWjBoYcfPURJMTaKCzD9Ks3sJG41cZdd3dJ6fq5WPoADgh7jzbZ
         sHHUe72MK4TXnULGqbTGC6JV4HoC2q+Zj5DPCQGxV4uG8n5NDNJ03Omj5+zNuQ4f0dp+
         UwsDpOMXvZEOwL/41z8phuCjlk1rQoSCnnu8SqFwgYy9R1tK+6iWmuYh+qgd/xEmHz3d
         aAPLwTYlAqkpvc0SaURNfm4uI5duTAU1S7HZJPezRhjShjAP8QhFcaQBJTTcCJGo39Oj
         GPEg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fZw6oQVE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324573; x=1711929373; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjmhHLcqig/EBR4Nv9aV1KuLFyARJH/LgT9dk7U+v38=;
        b=bRs8MW3Y/zEiziLOJdnwfYlzDSeiG+HknSN7IpNKQ2CwWgf6FpDswHUf6ptuBvRuEs
         ZJ0kHCQTX+LlORxTjgAyjEzPwu+sWluzxjYNCOCImYvUYtWk/8thJcnQaBh0EM1VpyyN
         WKaUpHEiA2FiZpWsatwFw0OUnvGD/TzVC3gMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324573; x=1711929373;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjmhHLcqig/EBR4Nv9aV1KuLFyARJH/LgT9dk7U+v38=;
        b=iQ7p8IoE/l+OvZsjQRRPWQqki2QjldeedcZ+K3kTcIjnk0FTOJ00MRzezy+3LvRaI5
         GcXRvFIC6Dogc6TpfMNMzol1pf0nGVSwxYifjUHZZWSjsJjWWhPPFcDMejleDmGLLnA8
         mP1frfIR853zdwYs0MoAptQnaRX2RSv59NRjKOlTwqy11ScmATJ0CCeegVZmkzOSAv3L
         xfVaGASpRihcsvMsVbPbApK+pICYcT2dgrTnHWXLCpVeSks3/oYL6EiDWiUjpJeLxmQN
         deD9C5XCGuJw9PdictlhEn2hAR/xNOYSfSDctKiSIvXtShDb/lVo+4LCOUgn8SdCQn6i
         pmfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUYrUUZDsQeX3VhQ+jKV5u3RpW2lO0CFQi1UPm0elzile+2H+UKIknM3EUv205CQLzUExXuthiBa9YNeiDIu081uxm4ImtLloPo
X-Gm-Message-State: AOJu0Yz3Xk5SfG26z5Fr+FxkKkBi/prtMU8Y7Re+wP25c7DVfshACHRx
	SAydpKqeUteEhOkuZapHgFzgCJuUX0EC8yJipWKp5Y7TL+4ViVwQg0l6wHlsKPk=
X-Google-Smtp-Source: AGHT+IHL8qmdXnzoqSvZdaJxqe6iuRsMG+JPEOIUYva9KNXJfkurAbueqnFTJG4l7t3si47/RzoELg==
X-Received: by 2002:a05:6a20:da82:b0:1a3:ac20:e204 with SMTP id iy2-20020a056a20da8200b001a3ac20e204mr7467729pzb.3.1711324573439;
        Sun, 24 Mar 2024 16:56:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d911:b0:2a0:41eb:6cd with SMTP id
 c17-20020a17090ad91100b002a041eb06cdls1212338pjv.2.-pod-prod-06-us; Sun, 24
 Mar 2024 16:56:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU/IB6N2CCUc2HmEJtCQFc9rZfuCKlNZej9JhkeTSAvbrFNrBPHzR4yAquuedEbgosdn+H7qJHzIKtKkmgp4RCZS+6lDm/bt+WyPdv7MrQiwqXA2EA=
X-Received: by 2002:a05:6a21:3394:b0:1a3:a7f0:1487 with SMTP id yy20-20020a056a21339400b001a3a7f01487mr8072713pzb.2.1711324572270;
        Sun, 24 Mar 2024 16:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324572; cv=none;
        d=google.com; s=arc-20160816;
        b=f2sXoujyj0+ee+CpuoambtRNHoKPCyFJDgfXr976nQndODg2vhrF8Rj47p7xRvsLMz
         2zYPqX1ckhzgyOcFdDIBw0le57aqwF4SUE84CypQoy+92MqXYyHiwSGvDE1UwZkjcSkN
         OQwxtDwM4JKWlp6g45mQm/kgoIRm0HzN1nD/jWPpL9MdL2BAyXHke0ooxTraatcjHize
         R1/SmeOdGG+Vn3K9HXEeqaX6UovL4606Am9e0akAhYnsMt2b6aQh8eX2coF0Vs7f6qMO
         W3xJzGnTEhNSffaUuUnqZUICr4ZvyHPsTBw7wxH8c+2uzE5xTL3XAc6oIuAyB7FYfRD9
         qoKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pO7QUZsXXhu9HAXfSQAqPprtEItLE8G7INdiPk7KBF8=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=LfU6mL8woyi+wMCweD/IxQrLevDb+nUxKtDYO6z9Y7Xqf6NRJcsLGRxQzcQqNiiX66
         XmADCJNIyHADIsTO5nVbakboAeFNDkD/k9GNdA8ldRcXI5mgPKhX/BvPm/iM20xusrCG
         XJPPR3uA44MuiddFVThT9k4ymaVbwfvWaH5E3Hjl3dD9C2Zn9f1uMaEYjdxYHjg065TF
         m9Kl5L2zdb1Q7nf1HuqYfn64G3BciVP0aJmtSFyUFPhRAw9jAV5aqpO5bERPlymXQooI
         959BYhDiSZb/N/canuAp8EDEY01P0YdeBkaYy0i5vW9QptpAdaOS9N5mu/7RWMZwa7g+
         dZDw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fZw6oQVE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id u11-20020a170903124b00b001e01481db7dsi4094711plh.249.2024.03.24.16.56.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:12 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXh2-0000000Dzho-2g5B;
	Sun, 24 Mar 2024 23:56:01 +0000
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
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 15/23] ipr: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:40 +0800
Message-Id: <20240324235448.2039074-16-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fZw6oQVE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/ipr.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/ipr.c b/drivers/scsi/ipr.c
index 3819f7c42788bc..388c8a10295a67 100644
--- a/drivers/scsi/ipr.c
+++ b/drivers/scsi/ipr.c
@@ -4769,15 +4769,17 @@ static void ipr_slave_destroy(struct scsi_device *sdev)
 }
 
 /**
- * ipr_slave_configure - Configure a SCSI device
+ * ipr_device_configure - Configure a SCSI device
  * @sdev:	scsi device struct
+ * @lim:	queue limits
  *
  * This function configures the specified scsi device.
  *
  * Return value:
  * 	0 on success
  **/
-static int ipr_slave_configure(struct scsi_device *sdev)
+static int ipr_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;
 	struct ipr_resource_entry *res;
@@ -4798,7 +4800,7 @@ static int ipr_slave_configure(struct scsi_device *sdev)
 			sdev->no_report_opcodes = 1;
 			blk_queue_rq_timeout(sdev->request_queue,
 					     IPR_VSET_RW_TIMEOUT);
-			blk_queue_max_hw_sectors(sdev->request_queue, IPR_VSET_MAX_SECTORS);
+			lim->max_hw_sectors = IPR_VSET_MAX_SECTORS;
 		}
 		spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 
@@ -6397,7 +6399,7 @@ static const struct scsi_host_template driver_template = {
 	.eh_device_reset_handler = ipr_eh_dev_reset,
 	.eh_host_reset_handler = ipr_eh_host_reset,
 	.slave_alloc = ipr_slave_alloc,
-	.slave_configure = ipr_slave_configure,
+	.device_configure = ipr_device_configure,
 	.slave_destroy = ipr_slave_destroy,
 	.scan_finished = ipr_scan_finished,
 	.target_destroy = ipr_target_destroy,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-16-hch%40lst.de.
