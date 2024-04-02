Return-Path: <usb-storage+bncBDUNBGN3R4KRBHEGWCYAMGQE77SQ5CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A04895450
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:42 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a25c69cdb1sf464519a91.2
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063261; cv=pass;
        d=google.com; s=arc-20160816;
        b=w24mFmATO4YMGNeiqZWQyUAr/MGtbvR0PJCDjpmi5YWRB44hx66gSU7EM0s1ANl1FF
         EgrHaxWWQbLs6aJUjjT7JWNWmQYKTVvzSN9ZbWRyL5B6UsLoBgRCQeUdScrucexKVutR
         /B6HQqAVrsXXIW35YOu2fl55kKl2jTHXYPWgs2t/l38dwaa52o60dHPAVGEKDaYhjzOM
         r3XmuEiuwDqq8l2EYy7sHEf6e4jJEBQt3QJQf8BYvkTuH3MGVjsKeacGXo+WepWnBhbs
         2bDf1LkKOjvykYYh+wvM+FDSqwwCkL8PVZJ1qU6t6tYVc87LtsuWt+5HXOKl9sNSpnPR
         eNSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yosfoVZ6wER5iNsvPyBqYaDlKiolbkuUINDPb1TuZD4=;
        fh=EKjcsx2uR81UxjaKNuqU5dGxrlW2p60OJqjj0asHJPk=;
        b=RlOXx5PrNv9uL/jpfpeAnOxQ+wsO3rwiBj9HkSSLFd7vY+MYyq20u0eI9ypLtVztpy
         WueAzPOiPCGnMUyF/2qgRdYwF5sTX7woOLGQEWrlozKFJ5FkddlbXPE2GktyeUTT8meE
         Yhxrw3MlTo/iw9vvjRr1AsURt/gztPjay2FwZtELelyHaNWeKWQpBpV+1l/GgJk4BP6r
         eKWFr/dyEc5jswluekKjNU4Eo/Jtpwda6HW97Vj85+B3PL9fDbfZD0uhunVRTY6aKPW/
         GoBQPG1goR5ncWk24TRhxi9JadVYUDM6Dsiln4+gVA1zedJ6NUR66QkREHJEkZV0Gmvl
         SJWg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="PRJqPC/O";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063261; x=1712668061; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yosfoVZ6wER5iNsvPyBqYaDlKiolbkuUINDPb1TuZD4=;
        b=CIm3+nOpoM3WCK+QI/Ut04IM43SWCLmx07YRTySBWiU2x8t6y8YgzLNr+n7zBbGpih
         GCr4GTKYeTOkItqEBT90bjKEdSrecG+cm+1+mxkfLMnn3RZ+bN9UJXeyi6oYNzy03NRE
         ZtN3IunyWlbSH2PgmY7ymGYca24CuY496qeIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063261; x=1712668061;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yosfoVZ6wER5iNsvPyBqYaDlKiolbkuUINDPb1TuZD4=;
        b=rfY3SfeTYqw+sPfJwlIH0mOWYr9dT/c1jD0hF0Ey5fwAK7g1uUAV8/CE/XhVgZsw+6
         e7Ny6t7BK8s2t/iWRbQ0MnvYlDsmSbZ0rXpvhDnm+405pre0wdLiYllLE1F4IEQy2vFh
         WFyqJKdtn9ba4XZuQHtJmaHi40Cs58tVvVc2tDPzL+sCWGngtR8M1W1OdF1efMiBs5zP
         Eh5sV338JPMxMR6Dx1sWxQVVOv0OxCcjsEpwlsstlYP8PO+H9v+MhVabxFMyZI86VuNS
         iibDP+FZffN3/YOS0VPVj1jLb/XmyHfc8jih9Zrr7jb3+PTTOw4/E/aWYtOKBggfas2V
         ocXA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWyXRA+F1/nmZGJlB7pN1OXCF+a43xsPw9B39o6gxTx+TwQmMM77sbazTOlX20VFJMH/cawN/wnsuGv21vHY5srikA0BVHJw88o
X-Gm-Message-State: AOJu0YwlqgGCiIkjxOVqCN2g2E0SqbWN0nr14CuCFcJGNeHU1e8dj7Ua
	AnXnk67p4BV8h9jcONPZTpIe5BPiHatsXg3Wmekvv7iwsGrDD6ZuAXV9qbbWylg=
X-Google-Smtp-Source: AGHT+IHmAM4vxHCPzTykji164jGUx0hDwfuOEmby2Hdmhh46h+NcAkM6VsMnVnNpbn8zrhCuZwejig==
X-Received: by 2002:a17:90b:484:b0:29f:a0e0:3aef with SMTP id bh4-20020a17090b048400b0029fa0e03aefmr9073015pjb.17.1712063260839;
        Tue, 02 Apr 2024 06:07:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d410:b0:2a0:4f1a:6a0c with SMTP id
 r16-20020a17090ad41000b002a04f1a6a0cls2941835pju.2.-pod-prod-04-us; Tue, 02
 Apr 2024 06:07:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUptbJfzBw6jcptUnU+b1wKzjzWEhFCZPhXyUQGmmV5AFcF75efnwn4Nf0WPQHNEyQEGDt0+OdxtZHy0i63vOqVqRBb5JJ6978edv1s3mQvrOep8Pg=
X-Received: by 2002:a17:90a:d243:b0:2a2:33b2:d02c with SMTP id o3-20020a17090ad24300b002a233b2d02cmr4391460pjw.24.1712063259458;
        Tue, 02 Apr 2024 06:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063259; cv=none;
        d=google.com; s=arc-20160816;
        b=hLEd+hgiFWpNlnUSw2pbfPus7+k1SxqUOclV7rjF7MQCuhh7WsVGlKXabMAdNjCcRU
         HjizHljRBbU6Mn22IqwljxlybqWSwPdBJncduk1MwJzca0KlzZMv32ZkKmqUC355M/LC
         ZF3y4/Q/2VEKhGhEZM2OvXR7ynxUj+HhkM4wEzxxNDyZiwiZKkd7YyDBWyeNoQi9QDcU
         WFCQzb3hTL+m/VBFq/lqAqLQ+A4owCTKkBCrka1C4usvodNN8gWUfO1ZD/wTLiMGFwwq
         XcqTo01GRAeFiugqWJ1qiVodBO2SMb2MxQWCWfwzrVZ3jRT8BQmJJ3DqfJem9+6PVwVW
         ArUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AL2Go3EcIMZ+lqY5zaNhfFoymHIdjgdXZZzKZ1Sij60=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=v1PBDZyAb9nlvVpEGA46TwlFUtGzUhEKKyC012R8gZfsiog+lhYB8TqtKSmpXzF521
         SNdN4Ju1k5PAwiviNTtQD6E85zhiaFFLRu35AePdqEsAOrzUCQs+IfAok/5tuGsSPeV8
         Tl61C6ulyJdt7obBBjudjuq9d1k9LTaMV9XMNT4g3QYGUnrvXWBY8qcPXinZ+NfjzvxD
         7Vu8019bZjvZnBINt+DmD23U6O+QIGr6CS55oylIZo2eM2RJRUXxBs3o0Neje+n7DQL5
         wFgBm4msORrRLWPKreYchKaqbSVQxAlmH9IWUT+RxIPxHINAsg+vIqey320HQRtjBz0Q
         uyfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="PRJqPC/O";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id h8-20020a632108000000b005dc4da211fdsi11200880pgh.141.2024.04.02.06.07.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:39 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdrL-0000000BFah-1jSc;
	Tue, 02 Apr 2024 13:07:27 +0000
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
Subject: [usb-storage] [PATCH 14/23] hptiop: switch to using ->device_configure
Date: Tue,  2 Apr 2024 15:06:36 +0200
Message-Id: <20240402130645.653507-15-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="PRJqPC/O";
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
 drivers/scsi/hptiop.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/hptiop.c b/drivers/scsi/hptiop.c
index f5334ccbf2cac3..e889f268601b4f 100644
--- a/drivers/scsi/hptiop.c
+++ b/drivers/scsi/hptiop.c
@@ -1151,11 +1151,11 @@ static struct attribute *hptiop_host_attrs[] = {
 
 ATTRIBUTE_GROUPS(hptiop_host);
 
-static int hptiop_slave_config(struct scsi_device *sdev)
+static int hptiop_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	if (sdev->type == TYPE_TAPE)
-		blk_queue_max_hw_sectors(sdev->request_queue, 8192);
-
+		lim->max_hw_sectors = 8192;
 	return 0;
 }
 
@@ -1168,7 +1168,7 @@ static const struct scsi_host_template driver_template = {
 	.emulated                   = 0,
 	.proc_name                  = driver_name,
 	.shost_groups		    = hptiop_host_groups,
-	.slave_configure            = hptiop_slave_config,
+	.device_configure	    = hptiop_device_configure,
 	.this_id                    = -1,
 	.change_queue_depth         = hptiop_adjust_disk_queue_depth,
 	.cmd_size		    = sizeof(struct hpt_cmd_priv),
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-15-hch%40lst.de.
