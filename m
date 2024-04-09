Return-Path: <usb-storage+bncBDUNBGN3R4KRB35F2WYAMGQE7PQS6EY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6231389DC8C
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:41 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id ca18e2360f4ac-7c8a960bd9esf547591239f.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673520; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8NrSF+WKvF5wneAVzA6eYWlznulgUJm08kwM8NTI+0jCPs/jYgSKrorxmuHuq3lQ2
         LBd+QHBspQUBOUg4cGUsj7Av89+00z9S4yYI9Gq3L6ba2omff7g3oUGdBDqCU/lnvj85
         mmOEMUhMCUp4le78gXKErEYFo3mywjVxBKPbdbVzLwFe+bRLpirtz+M/MrghePW2Cgod
         SEfavdSNGuoqm/4tbxb/tT2Bznhzpo912/GZJeStK2pld4hL7z9I/A8hw+Tl5SePvQSS
         igIIkrko+p7WuIySHWMNxHMmY1YOb3CDeaTDUgh1plTSAfERV1jhRYK9W50KKYHWjyuu
         qunA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RbyhGYOIRph9GYEPJh3h8ZEYhrehdjGBAfbvs3BbsvM=;
        fh=YeQincSXGxesX/KsDnRpCiYn4BJgOVlRDTjnFMCJ1Io=;
        b=j2PmWNOo47Ri9XiXRfPcKYvVNHPNM6VHu20Z4gZHLuvJkaBkISpZ7Us6hSg8n9HRBh
         TTG+k7MiZBGytW7BYYjKoUYSD9GNWRRWeGDBwyXq+OAU3tz0zAVnLcorfM7CJxH7i9UT
         WbWaJxkC9r5lo56hXZSkJgxTzcni/uzVToafFFYiVjs2jMXTtPj1i7j1cBeCZo7MA9dF
         O8xadHe7NKbKrx7iUcC5186fdhjiAxBD/HA8bsVGcY7MBeou3S6TZfwPxHYplgI+fgnL
         HepWTjIj2pa+0EKFCC9LjAJWzFtMTvlWGm7CjhiiJUanxyAEL40bjRrP+gcCJiK2xtwV
         Afmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=XqmC0UPe;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673520; x=1713278320; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbyhGYOIRph9GYEPJh3h8ZEYhrehdjGBAfbvs3BbsvM=;
        b=llA9kTqfnqRrbZDumDHjfB8bFSZ8mmAFSm+GbFqOP+nER5yOqXEkLBZj0DV2rVNJML
         2J1okRDBQaTgczwtZ/kACNUXO3bQ/1zuMJ4QiC21M7Io+X+OOdSWJX7RqAYrBeNoA6Qv
         yx7dXnLCcANupjl119U+Ag0TCZw4Hr4tUh5D4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673520; x=1713278320;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RbyhGYOIRph9GYEPJh3h8ZEYhrehdjGBAfbvs3BbsvM=;
        b=jjjp/wFiLtC40aXtHgwQw/He8sEwPY+ZUnB4gz22mPtf160Jm5xiRO0DdTAK6ZA+vi
         ic+Lib2bX2cJmNMtjIu/q2GJrtZDZpz42qcMs2QFO2BhY2SWfWfjunVbV8p6eKhsi9co
         tYFU/2civNaWyCpNE6HUru2XVmxZVkpO4y+YENpZSXd73N4T+xRbtFWFEvsUSzPIVVWt
         21PC83mcKJ7yfR5f+5GqgOdYC+gj0Q+q0l9Oz53B/kGmtFfEkxvZrSCcrMW+mAYl29tj
         1aV1iibO78w2o5QQ5STs/oATuZLXQdnv7eQ0tMEigdnBV0alrTqnWfi6mIoQnl6iwb3k
         lLxA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX/LVYTrjAlV9xOHWZ8HReY+RNm+92T4jBWqcu7S400+vpbLVrWAD9XXD42ypbx8cuu0dTWjYVAPNB7AcF6rgo8+6eHwMYflhiU
X-Gm-Message-State: AOJu0YwDLzyuh1q+SEepTKm+Ireiin2wcFl3o5/nm2SmSPS3AuLn6xhz
	Yo6BFwXWuSMtGaQTqoLqKdlmJ3QIu1bJui0+s/MuvOhs1L0U2tBOvcHy9BDFNZ4=
X-Google-Smtp-Source: AGHT+IFVGk2bPmKX+Ql0uVoxbRtatL1UbzT+ytFsZ3rcdVfXQ5q5p5GBsUHzvwi3Dx04smrrdc3zLA==
X-Received: by 2002:a05:6e02:1748:b0:36a:d91:aafa with SMTP id y8-20020a056e02174800b0036a0d91aafamr55310ill.5.1712673519912;
        Tue, 09 Apr 2024 07:38:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:3497:b0:366:af4e:9df4 with SMTP id
 bp23-20020a056e02349700b00366af4e9df4ls4407343ilb.0.-pod-prod-03-us; Tue, 09
 Apr 2024 07:38:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXIxKhAkxp+ZMQPse+XpHHdJK1rXutSR0WAtbxKUySS4nu/Rf9H4o01LP/KS9DayyWilbihpwsLU3v52WgA0TUSNu2OhktWwdBm9wmqySXXevO0JOo=
X-Received: by 2002:a05:6e02:168c:b0:36a:2cb9:12a with SMTP id f12-20020a056e02168c00b0036a2cb9012amr14312ila.16.1712673519043;
        Tue, 09 Apr 2024 07:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673519; cv=none;
        d=google.com; s=arc-20160816;
        b=a71lzc+q6C7jdfpay4s8yCXHzhBI3cnHLVnHObQPi3dKjmFSWWv7ebFWwmoItdqGOB
         l7bWLNoYjsBqNFYuDbMSwMtTO+eyBYQd1Chm/9Tu6GxPvJ3TvR2f087ErfblS7lBLrQ+
         prXxaIAE6p8iC9qTrHYg9YpKo1Jg+/uJzb8jqFTu7CBB9+oj/yH3KdYw/QrQHsIM5CTd
         91AdRZMgtDA37HUEIGUhioHwmzKE3GHPn1zX653Ik2015e5GMN29EeDDjRcmhIztErxk
         lNRTPWY0OQ7NIxeM1ay29HrURBwSA3aW2m9u4ILJNvKmhAFxCysZoK6xeBRnrhErY3A0
         QvTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qea5e9AOI4PH+4g5KDXe3VosmzvTQILpb8i5Gv210/I=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=g8mu7O4HPY0NK4Xm5ESOkPY9DnCMLymBgQlD2o+AYFR/Y0lMwC5i5tkhiX/6oA9kcB
         goajtMPCkb/N+ZJd0yZ6Jcx7a1uYlOFwaeaeF4n3/NuorW7GkseJwEoAWlT2qU3Gk7D4
         cDGaaOKUAlKmDE2QCk03JdhlhNkROzpn2q0JOTgRNCyw9v/BwBPYn4pHY/3YPZuvfNp4
         GKf/k/xi44S2J+tSVQzaF3/GbmiYUa47GSMOcdwpv7dSvMjMBMQXusj0EJ0jF+ft1UEL
         iLoYro1c1EdM61V1Rh5HTPeugM8qv5//GxZW+6DRtuKyCT1XnrSv2BBnYQCddyf18qIE
         yOYQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=XqmC0UPe;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id v189-20020a632fc6000000b005f401cd20f7si6483431pgv.631.2024.04.09.07.38.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:39 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcH-00000002S7h-1LJM;
	Tue, 09 Apr 2024 14:38:29 +0000
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
	usb-storage@lists.one-eyed-alien.net,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 14/23] hptiop: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:39 +0200
Message-Id: <20240409143748.980206-15-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=XqmC0UPe;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
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
Reviewed-by: Hannes Reinecke <hare@suse.de>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-15-hch%40lst.de.
