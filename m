Return-Path: <usb-storage+bncBDUNBGN3R4KRBFUGWCYAMGQEUNRVHFQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FD0895448
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:36 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-1e286a919d8sf837165ad.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063254; cv=pass;
        d=google.com; s=arc-20160816;
        b=oiX9Yc1V3trE7AN6fkW9mBPUf4I2LoRzxOjKdF1T2Jm0NXIUi9jYMQKgOqRTJTW294
         GKMrvd0xSAkigvCzQ0Grhmo/3buSn+FxdKLvDKc7Nb/YjZR/wHdswJNEh/Uh7Q6YgF3A
         KB8uM52fJf+KrhUKolILL0MVMqskntrKHlc5Z9gjN3mMusyXp14fdJ5/AGjSfF8cQD8+
         omijjSAxk1ReQfRemi5cMEaU3jZqOmxKYzr0tLk8HBH0jxHsUezZgQAOY9Es+EjGGfOI
         EoXecZKMihZjP9ymklGj0aueYXySEQxI++99BuhXbOYe2/k0zfdCApmPPdENns84nQ3f
         L2tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bd2LV4aqXoP6XVzYUHUQmreGIRKNk2H7y5hZTBzlQJU=;
        fh=aa+B/A+EMpDWX0USjPS30KBUXNjdiE+qsjLn8KlmbyE=;
        b=uzcjAU7BOXlz6bXufdHTNLvX1rSsqN5YcdgbwnI2h74qLY7lpkecDMn5+TDujK/G4i
         do9bD9d96t5Vc/w0ChbYguJVN0Zz8zG4/5tVD3+LZgokd2B5mjtK0pD3ooFCnZ4jZR1c
         xnDCwVwzN2olIqKqKnUQt5ANIUjXutpvPuyMsm0pPfTpB7mSxjcDXE9W5YWYbWUeLJIq
         LO3u049yK0kOIJ1KmquT8MXrRQx50MokErmjU1NCqzEXx3PffgB3VAca/8h9qBZVhB3l
         2IRKIwKReTdf/LDJ/6OwQXTjI++avMtguYJ+Z/XQCya4LLLCdZBzUrFfkHgt3OwdgKkw
         j7GQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=t7qN4WP4;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063254; x=1712668054; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bd2LV4aqXoP6XVzYUHUQmreGIRKNk2H7y5hZTBzlQJU=;
        b=LbfNUAhV7kVAbFVIzjjaZ5GyU1j/X3Nm3tcj4iS59fFRBS2ncW+FI+tOrohW0ztDdH
         ZXZlqZeFoQGFxADVLS0Qt1FLVErwemQCCh6FEIfG7Xc1dVM5BnzMWxIIv3lRridfUsXn
         GdL4FAQLDKwf7QWwWgfOTm4hnBYIqlJyVeMrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063254; x=1712668054;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bd2LV4aqXoP6XVzYUHUQmreGIRKNk2H7y5hZTBzlQJU=;
        b=vjGjNSKuj/yVUO46qEKgVFhCF3YDi+zawyDqqLjkwCJ5fcDYwVzoVZsc04eORVyvYK
         3NhiiaML60vvgO25CxPNQ/+tBWjTncmHuKUT9R8p3rCHWfYe3cHwS2FpCqL4lKZjPM+i
         3jrjHimEnkZtPPs+4xo14/bwZBDTr9msNb4mT7QeuIiPBTtBiHdKan2F0CiTAeMFKeyq
         Ci3nbR1eNt/GdGBZChDIpElW7r3LdjaCTbCTvgEANe1kcG/mbelK6LiZ0iHSfm5xXpRT
         Zyra8iGbFpyK4KlPJi0LAlqwt+ssQgracvFDS3qETRNNeCZ1Axb/t+ENPR5+drLLdInR
         I53Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW0SmA1Z/jp2oFvugMGyFd0enoixuTedi70e4AWtnR213ERYtdzWbPzyRACZmgwdi6MGg3ZrnXO8BhwqSZSo7pAkUaDxq2Ow7sV
X-Gm-Message-State: AOJu0Yxn1vXA4h7wwdbPrQxPf+oZkRx/WcxXrumpV7oNY8RnYXa78iMi
	9+jVMGE9vLQmp+uf403p/rcYhHpBdVfnRO7aheXgQYFhfIcdqNFJ14twX0UBH4I=
X-Google-Smtp-Source: AGHT+IGlFdf2VDcJYWOF5pMb4UBCOzx2PftXn4WtYTes6vD9rI5020NWigN5dKISMShOjS87oaCUzw==
X-Received: by 2002:a17:903:1c7:b0:1e0:115c:e05a with SMTP id e7-20020a17090301c700b001e0115ce05amr24673861plh.12.1712063254575;
        Tue, 02 Apr 2024 06:07:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22c6:b0:1e2:408c:6df8 with SMTP id
 y6-20020a17090322c600b001e2408c6df8ls2635862plg.2.-pod-prod-00-us; Tue, 02
 Apr 2024 06:07:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXCKOEzgSxTcu8BkouAoo5VIZ/6vGynph2ipbU0Pre0ZU0VVRwky2mjF8S9FNOSAyFnyBAaJ1YXU0klw/4dBKAXugrUomwjcR0b9SJtrT7WnRMwZGg=
X-Received: by 2002:a17:903:22cf:b0:1e0:73d:9172 with SMTP id y15-20020a17090322cf00b001e0073d9172mr23788288plg.23.1712063253442;
        Tue, 02 Apr 2024 06:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063253; cv=none;
        d=google.com; s=arc-20160816;
        b=crMwKLzxZlR7nsA1qRd5CWLVJYjcfwHeknSq7DwQO4hCtIhdw9irLcWPTrYEowIC7l
         9D/hV3u8j0wIIHCv35A4Y+eYnMzDesMZd2FXKnS7aFDa5XLy0tDXJdZYH9IMFWRI/zza
         O1rml6N2oupBH1Jk/6got2+pesssaWRz25MeXEaOOkBbpFyjxD5tA5HF9GsGIfldB/at
         m7lQkS9vkQ4sZbqxJJjzeSNav+tDKwPQfHQ7wzske5v5+1VYdqe43X/dhPmb/Bs3DlGD
         LnSmdjKWVTz9T+rgaijSVzlWtFhYvPnfNUxdHrlhKK9KY0/ww7d0Y75GGomd3BkGf5jj
         XUaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Blsk0lPHJJT2lojxMt5YmkBIVokYvdvmYbsM34r6dhs=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=ugcfUVRafDCrddwJEhEnn8P1438OuRqMfjP5ulagPIr0/gcPR9Pw6bi2qRUZSdfHbk
         Wp0+LFxH8w+Llzx+rn2/CckH9dc3sx0cnjmPmULTD+rz/uhW6q4OKMg5oXTLf7B76VTo
         oNNxkW1Byf44UT47Qrhf+pulhvPsJzOdo+NlKqU+2k65km4RfSY4llDT/bj9btgAuWds
         zyIZiejL0f8FH98JVyGkZXOA41zfDuGoqdYIVYR34CzfDl3A9qcx/HkJVSr/2M/+6TZW
         0UnKNQS+dZPGiIZcHRgxkz+g7A34DCNy8pVdLoVzNOczTwSyZ5KI5OOCLhfslgAopj7q
         3r+w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=t7qN4WP4;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id bj10-20020a056a02018a00b005dc864bb6e6si12230333pgb.634.2024.04.02.06.07.33
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:33 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrF-0000000BFYH-0d7s;
	Tue, 02 Apr 2024 13:07:21 +0000
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
Subject: [usb-storage] [PATCH 12/23] mpt3sas: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:34 +0200
Message-Id: <20240402130645.653507-13-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=t7qN4WP4;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/mpt3sas/mpt3sas_scsih.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
index ef8ee93005eae6..89ef43a5ef862d 100644
--- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
+++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
@@ -2497,14 +2497,15 @@ _scsih_enable_tlr(struct MPT3SAS_ADAPTER *ioc, struct scsi_device *sdev)
 }
 
 /**
- * scsih_slave_configure - device configure routine.
+ * scsih_device_configure - device configure routine.
  * @sdev: scsi device struct
+ * @lim: queue limits
  *
  * Return: 0 if ok. Any other return is assumed to be an error and
  * the device is ignored.
  */
 static int
-scsih_slave_configure(struct scsi_device *sdev)
+scsih_device_configure(struct scsi_device *sdev, struct queue_limits *lim)
 {
 	struct Scsi_Host *shost = sdev->host;
 	struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
@@ -2609,8 +2610,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 			    raid_device->num_pds, ds);
 
 		if (shost->max_sectors > MPT3SAS_RAID_MAX_SECTORS) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-						MPT3SAS_RAID_MAX_SECTORS);
+			lim->max_hw_sectors = MPT3SAS_RAID_MAX_SECTORS;
 			sdev_printk(KERN_INFO, sdev,
 					"Set queue's max_sector to: %u\n",
 						MPT3SAS_RAID_MAX_SECTORS);
@@ -2675,8 +2675,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 				pcie_device->connector_name);
 
 		if (pcie_device->nvme_mdts)
-			blk_queue_max_hw_sectors(sdev->request_queue,
-					pcie_device->nvme_mdts/512);
+			lim->max_hw_sectors = pcie_device->nvme_mdts / 512;
 
 		pcie_device_put(pcie_device);
 		spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
@@ -2687,8 +2686,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 		 **/
 		blk_queue_flag_set(QUEUE_FLAG_NOMERGES,
 				sdev->request_queue);
-		blk_queue_virt_boundary(sdev->request_queue,
-				ioc->page_size - 1);
+		lim->virt_boundary_mask = ioc->page_size - 1;
 		return 0;
 	}
 
@@ -11914,7 +11912,7 @@ static const struct scsi_host_template mpt2sas_driver_template = {
 	.queuecommand			= scsih_qcmd,
 	.target_alloc			= scsih_target_alloc,
 	.slave_alloc			= scsih_slave_alloc,
-	.slave_configure		= scsih_slave_configure,
+	.device_configure		= scsih_device_configure,
 	.target_destroy			= scsih_target_destroy,
 	.slave_destroy			= scsih_slave_destroy,
 	.scan_finished			= scsih_scan_finished,
@@ -11952,7 +11950,7 @@ static const struct scsi_host_template mpt3sas_driver_template = {
 	.queuecommand			= scsih_qcmd,
 	.target_alloc			= scsih_target_alloc,
 	.slave_alloc			= scsih_slave_alloc,
-	.slave_configure		= scsih_slave_configure,
+	.device_configure		= scsih_device_configure,
 	.target_destroy			= scsih_target_destroy,
 	.slave_destroy			= scsih_slave_destroy,
 	.scan_finished			= scsih_scan_finished,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-13-hch%40lst.de.
