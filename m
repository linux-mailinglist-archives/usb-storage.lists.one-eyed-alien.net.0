Return-Path: <usb-storage+bncBDUNBGN3R4KRB4NG4DTQKGQE6ICKTMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 942EE363EE
	for <lists+usb-storage@lfdr.de>; Wed,  5 Jun 2019 21:09:38 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id q6sf14252121pll.22
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 12:09:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559761777; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvO5KHavBpW8iHyeszqtZ6c2VEr+5t4oH+5LxgoOWK1j6YhWNBvayeaVjaiImjU5CV
         qeenUUKy02LOFndlg7cL5tugJf4i8fmbfTGHwo5lnspoS08fLQg3xMrtqVHVEvPe3GDb
         Xgc7B4rCc+ldoWsKEo1/ZX2D6ZoBEGnzmVP5jB8YRn1xfPo/WjfCdrR+T6MvBsf22xDk
         ovU3cg6iRQgY82ubVfpOigf7wZDeHqUPJevBUE+UkbaL0XH96sDw/WRpVOyIOGCdwGOR
         ojKgG+iDuLmyZpK5LBa7MPnFQTvcmY3XctamBUhTsWv5PbuU3u/5MFZAGGDPUX2IS4Rk
         6CTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tyLicbqB0g1xbKeciTKpEkB1GFqMSyz8BcCCPsDRlUI=;
        b=g5YfEmf7ofPeDe9cmEBVEcJElsZDln1QUymxhl6bIc+B7VAmKKeUe4UHGP+hdTEMbt
         C8V2eszI50d+IfQ6LVZnLJAr2PJA82Y4g9uUAg7CUzwgrNwu+ThwrHiLVsCh4Bf701Nv
         tKRK8xPDuubsfLb3thBA8cZo8SJP2VBRWg4mXue7IsaTlPp+CPfdw7YtnFQKmlnD+v74
         9TE5wekcUdxlDu1gXPxgyzSQVDKzXAIsQtOJDNewl8Iv/EV395v2Pz2xGTMtlbDtdKaJ
         6H/sHq4RgHpiJyT9suy8sWRmV8GWVwYsupMtdUYUIIQ5gpHBAliuvmaX8xNLmd2GCJbV
         iQEw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=DjtDAC+F;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tyLicbqB0g1xbKeciTKpEkB1GFqMSyz8BcCCPsDRlUI=;
        b=MQPaqAOh3SpArw1nEEcp1BKRfUmoqrIh5UeBQoKb4zrLgCsovF2Ryssl89x2gHh8rg
         wx8Dtmfat1s9U5IfuPAQCE/Gx2A6vmTBW4FHOsklMkoiQ/jvuCyHuWYx8H/U2PkvAQaq
         OSbxRmiV2yLCQrJ0i/rNBtnKnYOdY0dYlDTpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tyLicbqB0g1xbKeciTKpEkB1GFqMSyz8BcCCPsDRlUI=;
        b=eUeMDm/+fTTsBokHi1k6pDRf/N22Xxfm5UhOqZXsk72dWN2LaL0iCfWBZlkqqdd55x
         21UKPnCJsZbfB3l7w1kQVYE/Z+aRBoN23E5N4c4NckWDGNa+JG72PgkXsa24ARab/lv3
         9EWTRBsUZOKVpJCIaWvex+q72YkFrBsAPAgbcq5tX3Wqfsz/XWtXYVfsdwZxhnrmXrR6
         OkhX2IpCJX3Kr6tb+vn4NZbBBubItwRmft9qEjuxrvTj2G3mv275EtXcJOPoZiBsGubZ
         XIjuAiG0WFvI4jtbWCNNiArrfyuKHGVUhbQNLPug2q1vptlQyapKI/1kiQiPP8gYIGB3
         aclg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXF9gh6RFpSQuzCxE1D54CCVMisj2VenrssLh8UssAD3P0mOdgH
	Y+NxFNtnPWgHEJogJ+qlj5c=
X-Google-Smtp-Source: APXvYqydaHDiFrgKRuSF9XoRDiADv/8vtpxHNXWMQEQ65nCGDywYy9ChTdfkS4jKsj3x2CfEv2DVuQ==
X-Received: by 2002:a63:2ac9:: with SMTP id q192mr369369pgq.144.1559761777263;
        Wed, 05 Jun 2019 12:09:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:2a57:: with SMTP id q84ls710378pgq.15.gmail; Wed, 05 Jun
 2019 12:09:36 -0700 (PDT)
X-Received: by 2002:a62:e119:: with SMTP id q25mr12280153pfh.148.1559761776858;
        Wed, 05 Jun 2019 12:09:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559761776; cv=none;
        d=google.com; s=arc-20160816;
        b=eD6KWai7TNIBs3Wgvk9riMQ7EauwGAHXBdS+JkxMJKWO/8JE8FgJ08xueEjssCoy7a
         Wp8Fh7+N62WS+nshzjZXI8TCx/HnATtcRmVV78pRoqXgvLXHP2ArxCKz2N1f2eqZZnbh
         8cvDKGH7zMeXhbT4gyPq284grxdmvjHDRi1kLBvcDpKWImfR5RZr9dvZg1ZBp0YlvJBn
         K8/OiUE945qnkJhU/D3n+xRICQJvgC1ALuD0C90EoLNalctK/Jt+Cf3Cy7MjbFJlwqu+
         XayWzNARndkcI6HSEWeLcxEUKIOgOaA3BVD1FO+39/y/cpA+9I6gI++GENaXS/yq8wzV
         PXxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iu6giSDQep7gyGP1lDKtlc6IYXmVnaTVrX/CCTaVb0M=;
        b=rOs83T2PaSDxrdqqtUgL1m9jCMGEBrhHltxqiNMZueeO57JdMJRwm39MRhcIHv4yR1
         X0Po04N+RS4Wp98St1eFyhswjdqszP9/eMMg46BWFpS1pgJ7C5gRrWNMz0i250ESNrSK
         FBOA+G8kD+aKbXVoiHyDgshyrFO/tyoLKJlXZWhNMUAaMjTJCkPCl3R8vuNk1xZOv4eh
         3UVZRIdV5WFht+zkSI2kbakqlBZ8kLkFHaMuOE9GrNKxvfHeEzGZ8HaFhCNA5bsd137S
         8ZIKX0ezAKILhauqsQlqn16NW1ftJTYSFQinJ1w27frxNkBkvY1Z+wnX56W1hrdJlCAG
         D1xg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=DjtDAC+F;
       spf=pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id q4si29194614pgc.108.2019.06.05.12.09.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 12:09:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHo-00067d-E1; Wed, 05 Jun 2019 19:09:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Cc: Sebastian Ott <sebott@linux.ibm.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Max Gurtovoy <maxg@mellanox.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Oliver Neukum <oneukum@suse.com>,
	linux-block@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-hyperv@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 12/13] usb-storage: set virt_boundary_mask in
 the scsi host
Date: Wed,  5 Jun 2019 21:08:35 +0200
Message-Id: <20190605190836.32354-13-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=DjtDAC+F;
       spf=pass (google.com: best guess record for domain of
 batv+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+b63b843e11fda23eacb1+5764+infradead.org+hch@bombadil.srs.infradead.org
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

This ensures all proper DMA layer handling is taken care of by the
SCSI midlayer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/storage/scsiglue.c | 10 ----------
 drivers/usb/storage/usb.c      | 10 ++++++++++
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 59190d88fa9f..02c3b66b3f78 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -65,7 +65,6 @@ static const char* host_info(struct Scsi_Host *host)
 static int slave_alloc (struct scsi_device *sdev)
 {
 	struct us_data *us = host_to_us(sdev->host);
-	int maxp;
 
 	/*
 	 * Set the INQUIRY transfer length to 36.  We don't use any of
@@ -74,15 +73,6 @@ static int slave_alloc (struct scsi_device *sdev)
 	 */
 	sdev->inquiry_len = 36;
 
-	/*
-	 * USB has unusual scatter-gather requirements: the length of each
-	 * scatterlist element except the last must be divisible by the
-	 * Bulk maxpacket value.  Fortunately this value is always a
-	 * power of 2.  Inform the block layer about this requirement.
-	 */
-	maxp = usb_maxpacket(us->pusb_dev, us->recv_bulk_pipe, 0);
-	blk_queue_virt_boundary(sdev->request_queue, maxp - 1);
-
 	/*
 	 * Some host controllers may have alignment requirements.
 	 * We'll play it safe by requiring 512-byte alignment always.
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 9a79cd9762f3..b0f23f4f58e3 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -1050,6 +1050,16 @@ int usb_stor_probe2(struct us_data *us)
 	usb_autopm_get_interface_no_resume(us->pusb_intf);
 	snprintf(us->scsi_name, sizeof(us->scsi_name), "usb-storage %s",
 					dev_name(&us->pusb_intf->dev));
+
+	/*
+	 * USB has unusual scatter-gather requirements: the length of each
+	 * scatterlist element except the last must be divisible by the
+	 * Bulk maxpacket value.  Fortunately this value is always a
+	 * power of 2.  Inform the block layer about this requirement.
+	 */
+	us_to_host(us)->virt_boundary_mask =
+		usb_maxpacket(us->pusb_dev, us->recv_bulk_pipe, 0) - 1;
+
 	result = scsi_add_host(us_to_host(us), dev);
 	if (result) {
 		dev_warn(dev,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190605190836.32354-13-hch%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
