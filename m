Return-Path: <usb-storage+bncBDUNBGN3R4KRB5FF2WYAMGQETMV7UDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 6921889DC91
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:46 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2a473ba0632sf3841388a91.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673525; cv=pass;
        d=google.com; s=arc-20160816;
        b=AkrJeBHwKZWYELghO/A0CF5Vxwo0iEWGhgsmdVGfl+RwAcP1o2aexFapOi6e2UEb2Z
         wDtA59b3j5+UShv8lnycFBZPBBSkqV5fpCpkyRB/Ne/Q53VRxouRGuDCUzmw882ohUrG
         HIKMcEgeUWfVz22houtd5OMLdBaMubWS+tTkv9xIagIAjELptVF3AKhbycYkHzb5L/F3
         EsDR7VVKBbsISYiqhR9eQX3ISTZsXPe7XQTDfPMx1sbkR61yD5jqmqT67jC5YOKx/1tO
         QiRUkoOZcPAuj0CwmGZVcezoY7zBXbfGyrg1dkR1F5D2ncZqkatSDPKePYdOF7nRv0ZD
         fI8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GjLiPTH8ZjzJT3NVjxZ60QvVv+SPl72Mrq0ETnWNpKE=;
        fh=OU2acovmOd/s7TAHP/HGcXa7aJr0rjsfzKzYNlf23jY=;
        b=izcpL9cJ4HOyNkWjHh95W8wpl6K7lXmTu0Eqf3kqIAjDd4STPBZi31ZqZUXpXwPmLW
         RB4c+89BkMk4kf22cXHgo898zaoi+ovptwUkJV3A4pSpkjWaEenjXlGWY3iYwpxIFQEq
         F1PcSs9ynh71ANZIo72f1+fBZR/J1mm5UjOE1ql5PmbznmKa99Ikyr1usSmJaWo+FzkI
         YZBsapcfbvobHPNM91mXq4ovM5V87zQ6uYvRu+AS8o8Zf/daCam9pG4RH5Q6flLCFKJo
         FEhtmdSAEbb2BpDk0GWi3a0YWssvj8rcJY8wX7GsIGF/p4t1COWECL+J8LUCR6DjfjC5
         bvCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="XRv/eawl";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673525; x=1713278325; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GjLiPTH8ZjzJT3NVjxZ60QvVv+SPl72Mrq0ETnWNpKE=;
        b=HfRnU9mAl7PQncGk0dwDP8IzdxCvedbvMdsbLl3KEByy3QNZzskFMt3FHTthKS7MJj
         oekr7XDE5xZE4+iGJXJMOlF+uQO8xqNK6XkKnXwCzYK/hE+pVQyujZiHlKXh4bx22Z51
         aWKI8JDVVvDgqsB8z73fPyHEpSPUcN+UIv+oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673525; x=1713278325;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GjLiPTH8ZjzJT3NVjxZ60QvVv+SPl72Mrq0ETnWNpKE=;
        b=bvY5FPVfK47rUBY2N0aEaQzuZ3cuDje9Njh2vhOkH3A9aZgoAA2G85tzrxIRxBqPqB
         qUIUPSon28J998VVxdWCjExKVZMaEX60kKl4hXArDdg3MXehdnX8EBAajihlfxVn4a1I
         d7EImVk8bIf1YmU3zdtqn4BbyMrs8rC1Q7AUWZnJg+z8ssIWdHhqAB9zl0gSU0+WLMz/
         p0LlYRZ4AsLNNytXeWud1nlYFa5oquyVaMAy8ea03AelYUzWMcdAPF58EqoUTt++h4Qf
         C4Eq7JZIANPHjeI4POxnE9TTdFuLCQDbIvxnxDJorM5IIEXwDHEBowuEYv9R1MusTAJ5
         Xjhw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVI1uczQIAJh+oxmb+OAqdS3Hbvp2I952DddIo/tfHhreHscLOA95GuZm/thhtlYYjn7ZF7gK+paZyCYR4YTN1/zru2rIpjkkwk
X-Gm-Message-State: AOJu0YyWIqGXc5C6LIfOQz13eCzqwT1r7vBGfZpr6wZgmkGdXNAV4C+d
	cT9dH5k/qN8t/C7u2PPkndHQBJK8LN4XKY/G2syACCwT5tlE+fy3zO+L0/Qzutc=
X-Google-Smtp-Source: AGHT+IE4GjJJRIzy051X2Fvou8t4cHTE05aium5CkZBWKjcuNnkuntXescS+6dlPHrXK2Bo+1GJ8Cw==
X-Received: by 2002:a17:90b:8d0:b0:2a2:88d:cdcb with SMTP id ds16-20020a17090b08d000b002a2088dcdcbmr12879855pjb.26.1712673524930;
        Tue, 09 Apr 2024 07:38:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ba93:b0:2a2:4332:ab0a with SMTP id
 t19-20020a17090aba9300b002a24332ab0als3036251pjr.1.-pod-prod-08-us; Tue, 09
 Apr 2024 07:38:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWAQMh2ZLNSlJkbCmInP0jZLg+cwOUfD7e3ncfYZJDkRj935jaxjIBBw7QkEzOlHjECFhHYhoTSfoqUq3xhNtJSq44rEUKrKgjqyw10sbGlAo1VkV8=
X-Received: by 2002:a17:902:eecd:b0:1e2:bbc0:a671 with SMTP id h13-20020a170902eecd00b001e2bbc0a671mr11592388plb.52.1712673523880;
        Tue, 09 Apr 2024 07:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673523; cv=none;
        d=google.com; s=arc-20160816;
        b=hE01GMEsT2nJJo9F/1looPHKmZ3wczneKhnWH4ZiECjRQn7O0/8oRmHNLkHsJli9WV
         /Jzwm8rCmgn7u0l1cwiZmbECeuhlSI6yohpdXkBVxTD6N93krGEkCR6cj4kG1BngJIZF
         zDDMmLBuKMAwnG6xt2WFqCOPqGeJT8qaVbuVprrhGZL8wCKp3oQ6hzt4L2bNeKVB1wo7
         vEhwLFbYDRf37dIcOqMiWJrr4G8zfJGIZNYzM8GxYBEW9mkjTqbd5eX5Yzf/R0UEA0mp
         O60oOWzxuwNP5XFB33Qr8YQy/30WyQXvdu6ynWvO48zgscPxXAcihPmb2OFLatJef3SX
         ZQ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SZyzmpnjk4FheRLYyA90eDeg4CmfzjMaU8l+KnZbwcY=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=kVkyU/45L7j/V7s18ATUgjrtP96ideAmp0XkmaDiXsob7hhOQKLW0ZSjeiRedU1YtS
         WZkAVbv8y/eZO4FYq44bjI90CHuXGq9sqRH2qlJb35qLbzxIkAdYMbEl2JiMD+yWRc2N
         sD3fMpOB80msErUcmma/+nsDxgFGZGZagGBZBCUSHYgOVmtcFf2GkxziTmBQE9nY/wS6
         t+SvY6TQn927sCoCNhvebz3IN4f98MgJ0b12a9XqP5mo+v6qF/vYH1T/YTeLw11YXcZp
         7SniQiBfC3AWHecoslMr9/6tZvbEttDw+CJrxv3NEd+NhNeR/qQrjkikNTnNF4niZvD8
         7h1A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b="XRv/eawl";
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id b8-20020a170902650800b001e4c7903818si475342plk.491.2024.04.09.07.38.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:43 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCcM-00000002SAb-0yff;
	Tue, 09 Apr 2024 14:38:34 +0000
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
Subject: [usb-storage] [PATCH 16/23] pmcraid: switch to using ->device_configure
Date: Tue,  9 Apr 2024 16:37:41 +0200
Message-Id: <20240409143748.980206-17-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b="XRv/eawl";
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
 drivers/scsi/pmcraid.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/pmcraid.c b/drivers/scsi/pmcraid.c
index 0614b7e366b776..0efe2fc8b30826 100644
--- a/drivers/scsi/pmcraid.c
+++ b/drivers/scsi/pmcraid.c
@@ -197,8 +197,9 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
 }
 
 /**
- * pmcraid_slave_configure - Configures a SCSI device
+ * pmcraid_device_configure - Configures a SCSI device
  * @scsi_dev: scsi device struct
+ * @lim: queue limits
  *
  * This function is executed by SCSI mid layer just after a device is first
  * scanned (i.e. it has responded to an INQUIRY). For VSET resources, the
@@ -209,7 +210,8 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
  * Return value:
  *	  0 on success
  */
-static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
+static int pmcraid_device_configure(struct scsi_device *scsi_dev,
+		struct queue_limits *lim)
 {
 	struct pmcraid_resource_entry *res = scsi_dev->hostdata;
 
@@ -233,8 +235,7 @@ static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
 		scsi_dev->allow_restart = 1;
 		blk_queue_rq_timeout(scsi_dev->request_queue,
 				     PMCRAID_VSET_IO_TIMEOUT);
-		blk_queue_max_hw_sectors(scsi_dev->request_queue,
-				      PMCRAID_VSET_MAX_SECTORS);
+		lim->max_hw_sectors = PMCRAID_VSET_MAX_SECTORS;
 	}
 
 	/*
@@ -3668,7 +3669,7 @@ static const struct scsi_host_template pmcraid_host_template = {
 	.eh_host_reset_handler = pmcraid_eh_host_reset_handler,
 
 	.slave_alloc = pmcraid_slave_alloc,
-	.slave_configure = pmcraid_slave_configure,
+	.device_configure = pmcraid_device_configure,
 	.slave_destroy = pmcraid_slave_destroy,
 	.change_queue_depth = pmcraid_change_queue_depth,
 	.can_queue = PMCRAID_MAX_IO_CMD,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-17-hch%40lst.de.
