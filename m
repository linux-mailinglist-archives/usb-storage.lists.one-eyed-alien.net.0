Return-Path: <usb-storage+bncBDUNBGN3R4KRBL73QKYAMGQEZ7QMDTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id A20168882E4
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:56:33 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3c37ea11ef3sf4304184b6e.0
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324592; cv=pass;
        d=google.com; s=arc-20160816;
        b=mL30Fi04/xj/eJXrnJRKO9OHGUJ9QrR2/JuA3aVIgfsLyOtREFeyQFllBY35LscZzx
         40GlPp+j9oiZwMe4rdjAp3ra40ghwmwiaA6iIq9DaJV0oMHVLHNQnlqpK2aETVoX2H7D
         KkYCMO3Y04vG1LH5wd3NIW8FQJ0M75cZzjUl0MjfZ7bT9ke3hNSZkc7CBRCkT8WAZaWS
         A6VoIzZ6YnMSL2/ZT2vVcYrM/eb5PWTOSewotA3byNpXzP8W3FiHYV9kgGL7vG7BwE1Z
         YGGmu4ycy5/b3kctWT/sf8L1QK5lQXnWvdEcN/UCVgdmkIGLthsM1XgbZK3BxbbMwjb6
         vO9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bj6CIZsE3QfXzz8NKJ0sMmJ7IxZ+jT5nrrb17jLFgV8=;
        fh=g//ssbgrSFec0etsP8NkIXyWVld810tlkbMXxoMb8Ok=;
        b=uPubJlJQ5Ld5WApjjbakqzoTLjZyjvbWJW6KR2SLQyIFvAm9E/ob1KPJEPLjdtzo85
         wxTmoIx3j4+Kc/IfDGfn/VIRvnL3cYkiMsiSMXGou7995St7qnk+eb78dQDhywej7iCC
         86CgfEijNzllsheZIplysMV3vvPNoJDqq15hF/cxGl/UVlamz7PF3lGf53f8UIuZdSv0
         H4IZGWPbKC54UnfnIf3rG1AcCZBW/YZ4bG0pD4dOs1yWc9lyJNf3BlJUGfVA4jgBEutm
         0GmB2A7iKwV5JKkOYY/pZNz/wVBE+M+O0UUUafrx2Re0zUxnSHHzr7v15ke2j6yAfjqc
         RVUw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BxmLEFjh;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324592; x=1711929392; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bj6CIZsE3QfXzz8NKJ0sMmJ7IxZ+jT5nrrb17jLFgV8=;
        b=gNd3BzG1ygA45t311FMkDcY0eTxNtFt7V0epVyiGJ4l5qwMkdy7JDvkU1hbLxRkOpe
         0rCGQrZ1pcBjCPgga/7/Mu6wMpyRCf/fTKCyRHFgwE1+ODOvxLApFOwEpIr9/Ii9ETzx
         UOCl8oleUGVsDLu8wnpI9bi6B4RpxGhqOlbPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324592; x=1711929392;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bj6CIZsE3QfXzz8NKJ0sMmJ7IxZ+jT5nrrb17jLFgV8=;
        b=kDdFqKFIWLDpCyAWxDVRxl34qrSKahYoRtXBR1JdEWudmZmhoyGHkmV9HewxxN2bdH
         DBRKKcQeUPRxJjMP9SNK1n5bBLxQWI8Tvtseb+da+y4rH+GzsEVKFfARTSWxJBa8+mR7
         xFzfPlTX05+fcbVQR2y71a+0LMJeSVMOEY7zF9gcoGNC7yZ7LCHazc7EFmOidWxTtjdQ
         gq7Ar/ZXdz5o7p3LIfI64CEGznHWkE72b1R81KKGfyOAnt7arL9sQw16/0TUNnozQSH7
         rroueU3E2M5Utli8IrgZ+vUyazwWtNAE8ztTG6oIUP4FgsnaKfvwGOYN+7d+G0UIk0dQ
         0tRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVh+WOfNKKfx/l7jXUo2+Zd6jXnoi4lcgBTwn4gFD/fgGJedSKvETO2T4OCEYuJgmXKo0+4eeJU3Tua/kNFKn7FaKvYTh0Jja7a
X-Gm-Message-State: AOJu0YzXZBq2ZnTlK0qr33dtkmQgRjnRdn33gF7EyGNltbB9v2xTql0N
	Auk9CyhktdviPU2E4nGlfkOy8945xwCSiJqdYZ3QPzUucUPuyQ79wb65j9unJlY=
X-Google-Smtp-Source: AGHT+IHXIOVH0Vx4yG855MHUypq7x+X/R0Jm2p1C1OYQKqLNwH5wCxA+k9+lY12zIuqlwsWW6OpeoQ==
X-Received: by 2002:a05:6808:17a8:b0:3c3:bef1:3d02 with SMTP id bg40-20020a05680817a800b003c3bef13d02mr7536941oib.56.1711324592124;
        Sun, 24 Mar 2024 16:56:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:53c4:0:b0:6ea:952e:1bed with SMTP id h187-20020a6253c4000000b006ea952e1bedls697805pfb.1.-pod-prod-04-us;
 Sun, 24 Mar 2024 16:56:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUpUsxo6SdrszA0UXiuAGG7ESj/dGgV+//Op0+Hx1le4T69OETg8GryPNTfgPvbALYMMwnsm7HHjjq9X5rDy29O/mtk+ncQg+DddRExJQsqQ7f0h+E=
X-Received: by 2002:a05:6a00:2d08:b0:6ea:7b38:a0fb with SMTP id fa8-20020a056a002d0800b006ea7b38a0fbmr6425425pfb.5.1711324590762;
        Sun, 24 Mar 2024 16:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324590; cv=none;
        d=google.com; s=arc-20160816;
        b=u1oYh7580sYT3VFoDXS45Iy2JtiUJU1v+zvb5ctWjimu2eJZ80mXVUIWMXi+bUZwsr
         stu4mz0jIQc4t8ps2C6BZsMjPFHVXhuDD2GjNW2OUJggStEld7FeotHMlw4pmYoWeY0e
         nKUqUdWjCpPLRlfGWL75X6qYpSJrCsBJi9EOLd3G70kNulVm4x+En7BkHcFWq0PR3wII
         IcfOKUb3vj/mBcsn0CHWtlMik8kDCnsmbiffv1oKEiBY3XFRtBjrVmmwfxcw5QR/XmYl
         /3TeLDIpnTmleHP8EiiBYuoTNpNXfD1lqtKhoxL+pALiG/l1kG1ndNu+iq+i4sS6hvFJ
         acaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yMGFrF3LheJCrf/D4KhM8BR2BJhl76qK/2mYCAf1jZ8=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=J1Zditvrk/YhIeFUQ0qXwB8NJkRxKoahkP8PXF5WfFsxv0ZZn+vNB0YC7jVm1nyNQc
         u6KsXrPswbs9E/vDUUd3dK5qCdOwIB8bYyMNJBnLIp7EsoUSV+6fPoWG+LFUA2hpEtjL
         YoTfu5G20UaW/mZmn+6Jqfia07WD319ypyroQbMVyB0AdI/r+1A/G56UQ18DhXQiHJIV
         +oF6IKwUBb+qXssqQTkWgaIc4+QUPiAMf9/cOpKskKbBjQzBgMGWmVBbqbHGL2DVw2Sb
         YJ9V36zyhlZV7vUEPcsc71m8Y7uZTOs0ojw9Ce07c3J7zXrK563M6CZL7NPR+/DZhVV4
         05AQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BxmLEFjh;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id x19-20020a056a000bd300b006e6729c4a21si4039739pfu.135.2024.03.24.16.56.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:30 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhK-0000000Dzo3-1bM8;
	Sun, 24 Mar 2024 23:56:19 +0000
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
Subject: [usb-storage] [PATCH 19/23] pata_macio: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:44 +0800
Message-Id: <20240324235448.2039074-20-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BxmLEFjh;
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
 drivers/ata/pata_macio.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/pata_macio.c b/drivers/ata/pata_macio.c
index 4ac854f6b05777..f046bfa5c6e7f6 100644
--- a/drivers/ata/pata_macio.c
+++ b/drivers/ata/pata_macio.c
@@ -796,7 +796,8 @@ static void pata_macio_reset_hw(struct pata_macio_priv *priv, int resume)
 /* Hook the standard slave config to fixup some HW related alignment
  * restrictions
  */
-static int pata_macio_slave_config(struct scsi_device *sdev)
+static int pata_macio_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct pata_macio_priv *priv = ap->private_data;
@@ -814,7 +815,7 @@ static int pata_macio_slave_config(struct scsi_device *sdev)
 
 	/* OHare has issues with non cache aligned DMA on some chipsets */
 	if (priv->kind == controller_ohare) {
-		blk_queue_update_dma_alignment(sdev->request_queue, 31);
+		lim->dma_alignment = 31;
 		blk_queue_update_dma_pad(sdev->request_queue, 31);
 
 		/* Tell the world about it */
@@ -829,7 +830,7 @@ static int pata_macio_slave_config(struct scsi_device *sdev)
 	/* Shasta and K2 seem to have "issues" with reads ... */
 	if (priv->kind == controller_sh_ata6 || priv->kind == controller_k2_ata6) {
 		/* Allright these are bad, apply restrictions */
-		blk_queue_update_dma_alignment(sdev->request_queue, 15);
+		lim->dma_alignment = 15;
 		blk_queue_update_dma_pad(sdev->request_queue, 15);
 
 		/* We enable MWI and hack cache line size directly here, this
@@ -918,7 +919,7 @@ static const struct scsi_host_template pata_macio_sht = {
 	 * use 64K minus 256
 	 */
 	.max_segment_size	= MAX_DBDMA_SEG,
-	.slave_configure	= pata_macio_slave_config,
+	.device_configure	= pata_macio_device_configure,
 	.sdev_groups		= ata_common_sdev_groups,
 	.can_queue		= ATA_DEF_QUEUE,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-20-hch%40lst.de.
