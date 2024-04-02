Return-Path: <usb-storage+bncBDUNBGN3R4KRBDMGWCYAMGQESLX6XAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 7535D895440
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:27 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6eaad4ed2e7sf4234957b3a.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063246; cv=pass;
        d=google.com; s=arc-20160816;
        b=W14ovHOqMHDsz4a90JL5sndGtAMR51I8h9kpYRDXrVHP6pwDtD9xGrebAcGkXu2L65
         uUoZVlbjFrtd9SHjxnXxBIP/xVKT36kLeraxHbyRiGUHf+PyZVuTlQ/UGlZZKGJSX8LR
         a989X/4hNlJ5DpslIsPEXvYQwe8cqiNxihyEi2QqnoXYvW+4tVEXeG4mm2SjELxN8xa+
         YwWhshMh8xhFumSVQ2c04pIosFH7vgtSZdohIIUoqHlylyif7SHhaYkELpig2xl/Mp4w
         yXOFkX55JlnDOUOUNr5beQ354FZik3h/jSq/2GksS7nGaVBWYYaatGXhXfn9JexWbB1P
         3Cvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bz/ZxiGktP9+NdH4MsNHn4+JTQqbdTET2pglBTEYQHw=;
        fh=NmzCo8ViOhmKMPwcZZIz5VVRL1p45Gm0tVSmR4yzsf8=;
        b=FBujdGkfx0PAgR4vg22AZHlKleSmtCkrC9/oMAK/w1SdKl11aVxPchCZhiLiZIhfkI
         lJn3nJkV3z2LXyWSCGJnmcdC+pNuu78AUvbW73zexrW9d2sYYSJOo/S9btlUQnmEgtmz
         L3kH4cEMT32VeloiqbQcEVKpiD0CNRjyK/Iv+SbyLzd8Dq+W3sOF2n+glN4OsOWo59tV
         Tjss6zBgDOcvFFB2uXdphXkCIUyz0MGCNxGW6YblsqOOl0X4O28l6IwSgXTcxb9ParJu
         1bzu8Wl7+9ENzUQZtgW8n/1eJ5FzliNQEopbLVSdiyGEw/p+OAz7KsU7VQjRZY2yZ0Yx
         DG/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fDJ5EcgS;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063246; x=1712668046; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bz/ZxiGktP9+NdH4MsNHn4+JTQqbdTET2pglBTEYQHw=;
        b=VW8yEtM7jAJHwoGj+TpcXWY+fMtXCU3lk/SdqboZBk+bZNhnucsRW+Sp8k5o84w5qc
         7wPekWL0v1XDSzOPh01R/OUVBJxVTWEegdhgRVdE3tWll2XstWAK9llqZoC/QlwMdYl6
         2cRNmCDqNlzXH2lZu7OFsc8FOYxTeJbglgIFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063246; x=1712668046;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bz/ZxiGktP9+NdH4MsNHn4+JTQqbdTET2pglBTEYQHw=;
        b=btkvdwII6b/n+jAIRE6vU68uHP3nj6A80rxFuUW3m0DDTRuAJKUs6eE9AFu+uJ/ZNi
         vN6PBP6y+D+wUP+SCUQD2iwjw9H1vhy5TR2Uyx+G82tJZ+bx8+3mKEAt7/yyEuEc5KsO
         2KMzec8ZltWtMz6pyXU4lAX03CwpTHa6bw+vxxPIC/U7V4aRooSQWYoJNdha22cb5Rxw
         3qBWbKEItT0HbzK5HlvPsTBX+kWWqDuZ3jURBhf/RrbM6JGGGqIpVU6/IyhJxmMJVrtK
         hjXpuvzNQjphY1zGGg0CBDiBu/evvRZynQqYBbF2HmJfySwguMxCxrDaRQIcQUwf9C/v
         uuWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV2CemP+IjiMh/f0ptOLUWy2IK/U6HXJTGnCj7S2Xf1u1GioY4AXCKqcKUHXGASHPdzBPwgpgRZaeRo/5dwokhkHzt74k/uQNHk
X-Gm-Message-State: AOJu0Yy3V7qjhLfnBfp9zxWzT8POc7toC/s10e7gB48bgA3f2WukpD4S
	OoiLSRL2BpUNR4tCubC5DsolMEmOmAT6ur8N9D1Be30IE0GX3eSRo7b0P1VPE5c=
X-Google-Smtp-Source: AGHT+IGX8xmkTI9iyP1JO5F66WpjSfLtSXJXanLh0nghRsiYE3Dg4rlMXGDP2X/F2dqgYbk13Tq6LA==
X-Received: by 2002:a05:6a00:1385:b0:6e6:13a6:9bd8 with SMTP id t5-20020a056a00138500b006e613a69bd8mr15279742pfg.34.1712063245664;
        Tue, 02 Apr 2024 06:07:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:3d44:b0:6eb:5:f2bb with SMTP id lp4-20020a056a003d4400b006eb0005f2bbls1620299pfb.1.-pod-prod-05-us;
 Tue, 02 Apr 2024 06:07:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUeUFaEap6TeNKL0rug8/VnbyaSMDi5H9ZB4ppsST2iKdnoiRebNaFRXIUbk2VO78R/9ILITkm3AwEHKmHQR21U0stZte6WF1CFEU/UKX9Nq1Hlwdo=
X-Received: by 2002:a05:6a20:7a11:b0:1a3:9fa6:74f6 with SMTP id t17-20020a056a207a1100b001a39fa674f6mr9704183pzh.58.1712063244064;
        Tue, 02 Apr 2024 06:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063244; cv=none;
        d=google.com; s=arc-20160816;
        b=nYgH11g6r7eCUIDpE/w0+bMIMY4rrY++5H//UMi4pjdgIY+/E9ulQR0mnQS2rdMO5m
         p3ax4DtRsmT3oeJvBBCdHbk3nvaSgCspeLe2EvT27Edko5h28zgptFfULcXsbCbvpu5e
         oWzWFD52nHugBctWdpZ6IMMFWgH2mNp6fh0pk62hlBDGhvt8+eYm3DSkhN0o7C4G35Cc
         9FZElXtt4glLFn8HU8tXiCIbNe8iHMyaLCYRYPVfyLSv9LS2+bnMs3dJxXaNxjYW+lwb
         Lmb7nweT9EgP5aCzdHWRBqkJxjFLU+pTFKfXDvSZJg2c5vBAf+z2Yg569zRgwXncQs8e
         uIVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qn71Ebo/sRvkW9qrhtB4Uv6vNSwoHz8YBn2WVi1lmd4=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=NQm/4a7OmPUuKqG7y2u5Pw06oghZj54iu8Puz4XMGLY2RPyC+3SHqZl9nJAgOhAX5f
         kB8DZAUFriQfGLhkDBDHB9AjWGYSXqcg5KGCXtI/D20GhnaEghfuiLPmKIoY/RcT0/n+
         eVCf8lypR/hPdGNbAKGD8bXbPhddw7SqWSwaLsMJqYbQYhzYvIr735JgYYoNqEj7yrhH
         eKpfWnwyxtl68sAlqhBMxROHYsya4E6GKWCA/sHOlW+JiI6Il2sGjnEZ2Bhqs0GN6fwK
         eRK2jF38x5KyT/e7DZLwaWQWdhZmT2wlbWKoCl/NoeCahNAmAyWJLPjtjeO6v/3xWH5U
         ocIA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fDJ5EcgS;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id ka36-20020a056a0093a400b006ead1088148si11645511pfb.267.2024.04.02.06.07.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:24 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdr6-0000000BFUL-3jEW;
	Tue, 02 Apr 2024 13:07:13 +0000
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
Subject: [usb-storage] [PATCH 09/23] scsi: use the atomic queue limits API in scsi_add_lun
Date: Tue,  2 Apr 2024 15:06:31 +0200
Message-Id: <20240402130645.653507-10-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fDJ5EcgS;
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

Switch scsi_add_lun to use the atomic queue limits API to update the
max_hw_sectors for devices with quirks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: John Garry <john.g.garry@oracle.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/scsi/scsi_scan.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index ff3778f7009ebf..d97e18ffaedbe1 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -874,6 +874,7 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	struct queue_limits lim;
 	int ret;
 
 	/*
@@ -1004,19 +1005,6 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 	if (*bflags & BLIST_SELECT_NO_ATN)
 		sdev->select_no_atn = 1;
 
-	/*
-	 * Maximum 512 sector transfer length
-	 * broken RA4x00 Compaq Disk Array
-	 */
-	if (*bflags & BLIST_MAX_512)
-		blk_queue_max_hw_sectors(sdev->request_queue, 512);
-	/*
-	 * Max 1024 sector transfer length for targets that report incorrect
-	 * max/optimal lengths and relied on the old block layer safe default
-	 */
-	else if (*bflags & BLIST_MAX_1024)
-		blk_queue_max_hw_sectors(sdev->request_queue, 1024);
-
 	/*
 	 * Some devices may not want to have a start command automatically
 	 * issued when a device is added.
@@ -1077,6 +1065,20 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 
 	transport_configure_device(&sdev->sdev_gendev);
 
+	/*
+	 * No need to freeze the queue as it isn't reachable to anyone else yet.
+	 */
+	lim = queue_limits_start_update(sdev->request_queue);
+	if (*bflags & BLIST_MAX_512)
+		lim.max_hw_sectors = 512;
+	else if (*bflags & BLIST_MAX_1024)
+		lim.max_hw_sectors = 1024;
+	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+	if (ret) {
+		sdev_printk(KERN_ERR, sdev, "failed to apply queue limits.\n");
+		return SCSI_SCAN_NO_RESPONSE;
+	}
+
 	if (sdev->host->hostt->slave_configure) {
 		ret = sdev->host->hostt->slave_configure(sdev);
 		if (ret) {
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-10-hch%40lst.de.
