Return-Path: <usb-storage+bncBDUNBGN3R4KRBVFK3CYAMGQETB6JIQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA5A89E8D6
	for <lists+usb-storage@lfdr.de>; Wed, 10 Apr 2024 06:28:05 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-4162b9b1702sf29503955e9.2
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 21:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712723285; cv=pass;
        d=google.com; s=arc-20160816;
        b=doZcTj/27nUInKq4UTu3z9crl82SJ0pq/yFVisSIe+WvM7iVDtrQSgQY36z7z2P0PU
         n0+eZHspkSISlXsyUlOhu0lq20ozv4gU7r90APheWYd49KN/b3SPGuOZfnyf9WOXLbxK
         XrFekOgwq1OB72cZ7PSf5vjbf6cHL2N/xqpirkcXcdF3t4oSDWkoUoe5o2fQleJEpPlX
         l62RVloYLAEmpEpovNxYGcqSHmjgPwqX0s9bmGXIsXB0LBmjPU4HLVy3MKr+baaJxESt
         UwNcaQnkGGsCYThHvmxcBr46B8IPMzN5hJwMtlXp+QtEdZwFm99j+vU1g/McSg39tpa2
         ry6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tHpSX+tof3R/CpGdRsmbKdbyow5KQei43RYoLjDPA2U=;
        fh=mBGxZ5RnUbEIM/Up5z2Q1rZOWZSkdvHWVwpC7pYFKps=;
        b=bx7cAtz060f64P+Hcav1X1aLaFfH7f9eUEtwdFmNGHqQYXzFzcthr2TL/ICVUmgG4g
         NEFpFNGDMdTLypHd/WxZe6Y/WD5CXLhKeJ/xj6jK2riaisW+vuw+X/XivPL8Jh6CtlJn
         WtHATaAX/lcgnFX0LYz49aAPwZL0vZ/TbJvE2SYDC/IN+PLW2wrXmW2X6rt41ArdJgM1
         avJ3ogHry3Cjrp6yhCcgfbQOjTP8L1rRbiqOakGk8MRS1LkEeCwX1C++0t+/JloP1Giq
         VXIBjNsKZ/n45fh4mT7riNXk3X6tqygBRbPVdc8HOSn1lhKgaVWdN2+16RIli8Uem6Hu
         LP7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712723285; x=1713328085; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tHpSX+tof3R/CpGdRsmbKdbyow5KQei43RYoLjDPA2U=;
        b=gR9q7z/dahNgvYX8x33/xkKqWcthOsfsIbKOcHjmygioqtPSFxYVz7Lcv8PhY7si4v
         wevBcK/egQpGPmZtFdhLWLU9M5moWYiWywnrD8wc6CHkmwdZpUTepXOTyu7QLnA57XzF
         TQQdJ1Em2mtmp9ABGAeljdaJntBF4EZUAucoA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712723285; x=1713328085;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tHpSX+tof3R/CpGdRsmbKdbyow5KQei43RYoLjDPA2U=;
        b=KnDHQROVgUkX+jYlQ5tlsF5yjeX+kry3I4GWjcuFZHjAxI9bhkvYpQdwJyXKNL+wv1
         7q4WI6g7M06z4hNtrORY6IH0aaeN9QXymemlCKdaQAFl4uDmTdgvD0B34AW7Md/zWkCR
         DPO/WjzheaAQbumB2s2EkYMUoCCEMO9r0WltrnGumHhxJ6UF/22/NrEmAmYh76cSUYAd
         TVm5jpl+r9TkSRLSL+yOQ3uCkQiz8PikbK8Nks3LfF16b0bG0oejihxP3ib1jfhK1ALP
         lRrU+xLH2rTvGDahjhyrShQRV9tgy/I8nmcsG+yaXzU7uA+TEnAA1ut2VW4ZL6orokrr
         x7jw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU8m6VU7wvowMZRipI3UZaAN7fwXzWrFkSwojvANRy3QDdTG34SBih+fSPOLhi5Pq2rJp64ZiGWQDTYV0A5rmIVHPUpqk9T0w0R
X-Gm-Message-State: AOJu0YxJSC7hruGi5NerIJMAMgbLV6NuMJyxOhC18O+Ss3kPceypArdj
	Ff+O/suXpngE+ZkimGiDMPPOAIg/4dJMfXI4wO4zMa7eN2V16xmtBSO/x0Z9WDY=
X-Google-Smtp-Source: AGHT+IH9Onl/i4zzxDfsK6NPWFgbA8OhqIgJO+5lX2TgnhxN1hb2pJJQucaz7YU6exAsdXoaaJ6osA==
X-Received: by 2002:a05:600c:3591:b0:417:29a3:3e22 with SMTP id p17-20020a05600c359100b0041729a33e22mr304274wmq.28.1712723285225;
        Tue, 09 Apr 2024 21:28:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1c9e:b0:416:68fc:5fb1 with SMTP id
 k30-20020a05600c1c9e00b0041668fc5fb1ls1441245wms.2.-pod-prod-07-eu; Tue, 09
 Apr 2024 21:28:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUyaaRHa01yTHyG2hK0PBibE8mtRC13hMTrvOa1i6/+yy0yyeYykXX84FpzPk7hlvVEuxPQ5E6gJVuOMlqvA5piUKli4LtHDHREaDv8fIrS+jkLq4o=
X-Received: by 2002:a05:600c:19cd:b0:415:45ba:bf55 with SMTP id u13-20020a05600c19cd00b0041545babf55mr1355477wmq.34.1712723283089;
        Tue, 09 Apr 2024 21:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712723283; cv=none;
        d=google.com; s=arc-20160816;
        b=NrUQEsLl7mHzCUw4FVFzcXQR+Ngp0+Vm4ukBbFW/bEAbLKtrDMBJ0Vt3C+EdaNwReT
         xmnhW0sP0WomwNQ0WEDExrOA7uZvUpjetxxu4PC8J3QavSfDxy68cXd8ie0YFjZhusEu
         fSmLH3nOXzWWmUZywu2uSXTqNaUsTURAO/v5kxIC/imWAuZSp/UDw2p77O66tTfvrwqW
         nuU5svme1h5c3yn/b6/uFn5vd9VHZ4XCcgehz87EwfNjgfk+h69r4j7JcJku79xLQX7u
         3BavTS7bh4MyRjneaav9yshnlNkq8l3Hd+WxmBIF3sDFERI9qUVF4TytAj0uoDGUUJ2D
         msGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=WvMWQ0mcQudh9ZnPedIrXtJwhq0DKoipgmDKT8PlJ/E=;
        fh=UaGMtZo/2j1iaYITUnmtOwHBR7+4Khs7sTR53qT7wM8=;
        b=Bt9lh6lfY/r3CilOW/KylGJwkeAlYPhLAx0X19ikD363gx3XkF6CQNkvxNFYNwOSqN
         ggNG3zm94PJkXLQaPPV0i6lAGp3T6RC+rngHxXBCxi7/8akBhh4p5MmUvvBYhOisrhNs
         D715PF0EI1kPmwc4HGojEA34enKr1lvqZcTgDfqypEcohemtbV/3AMUMf71eG/erX5DB
         QQVFl+O6XHNvLSMxg3xb5XYuI+RZw8AFCR1NFoTnvd0XQd6yh3GfSWSNGS68y/lA8iOa
         n3dKBL/0IS8pHhmdBGtfjf+vfrnkdqHoopiKvx6uT94QNtpw71sh+Ylrib1tFflmJeaC
         QbNA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id r1-20020a05600c320100b004155e04f43dsi371687wmp.154.2024.04.09.21.28.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Apr 2024 21:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id B385B68BEB; Wed, 10 Apr 2024 06:27:59 +0200 (CEST)
Date: Wed, 10 Apr 2024 06:27:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
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
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] [PATCH 21/23 v3.1] mpi3mr: switch to using ->device_configure
Message-ID: <20240410042759.GA2637@lst.de>
References: <20240409143748.980206-1-hch@lst.de> <20240409143748.980206-22-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240409143748.980206-22-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Note that mpi3mr also updates the limits from an event handler that
iterates all SCSI devices.  This is also updated to use the
queue_limits, but the complete locking of this path probably means
it already is completely broken and needs a proper audit.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---

Changes since v3:
  - f=D1=96x a mismerge in the last rebase

 drivers/scsi/mpi3mr/mpi3mr_os.c | 73 ++++++++++++++-------------------
 1 file changed, 30 insertions(+), 43 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr_os.c b/drivers/scsi/mpi3mr/mpi3mr_o=
s.c
index 5f975e0db38831..71f2c62db11174 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_os.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_os.c
@@ -986,6 +986,25 @@ static int mpi3mr_change_queue_depth(struct scsi_devic=
e *sdev,
 	return retval;
 }
=20
+static void mpi3mr_configure_nvme_dev(struct mpi3mr_tgt_dev *tgt_dev,
+		struct queue_limits *lim)
+{
+	u8 pgsz =3D tgt_dev->dev_spec.pcie_inf.pgsz ? : MPI3MR_DEFAULT_PGSZEXP;
+
+	lim->max_hw_sectors =3D tgt_dev->dev_spec.pcie_inf.mdts / 512;
+	lim->virt_boundary_mask =3D (1 << pgsz) - 1;
+}
+
+static void mpi3mr_configure_tgt_dev(struct mpi3mr_tgt_dev *tgt_dev,
+		struct queue_limits *lim)
+{
+	if (tgt_dev->dev_type =3D=3D MPI3_DEVICE_DEVFORM_PCIE &&
+	    (tgt_dev->dev_spec.pcie_inf.dev_info &
+	     MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) =3D=3D
+			MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE)
+		mpi3mr_configure_nvme_dev(tgt_dev, lim);
+}
+
 /**
  * mpi3mr_update_sdev - Update SCSI device information
  * @sdev: SCSI device reference
@@ -1001,31 +1020,17 @@ static void
 mpi3mr_update_sdev(struct scsi_device *sdev, void *data)
 {
 	struct mpi3mr_tgt_dev *tgtdev;
+	struct queue_limits lim;
=20
 	tgtdev =3D (struct mpi3mr_tgt_dev *)data;
 	if (!tgtdev)
 		return;
=20
 	mpi3mr_change_queue_depth(sdev, tgtdev->q_depth);
-	switch (tgtdev->dev_type) {
-	case MPI3_DEVICE_DEVFORM_PCIE:
-		/*The block layer hw sector size =3D 512*/
-		if ((tgtdev->dev_spec.pcie_inf.dev_info &
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) =3D=3D
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-			    tgtdev->dev_spec.pcie_inf.mdts / 512);
-			if (tgtdev->dev_spec.pcie_inf.pgsz =3D=3D 0)
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
-			else
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << tgtdev->dev_spec.pcie_inf.pgsz) - 1));
-		}
-		break;
-	default:
-		break;
-	}
+
+	lim =3D queue_limits_start_update(sdev->request_queue);
+	mpi3mr_configure_tgt_dev(tgtdev, &lim);
+	WARN_ON_ONCE(queue_limits_commit_update(sdev->request_queue, &lim));
 }
=20
 /**
@@ -4393,15 +4398,17 @@ static void mpi3mr_target_destroy(struct scsi_targe=
t *starget)
 }
=20
 /**
- * mpi3mr_slave_configure - Slave configure callback handler
+ * mpi3mr_device_configure - Slave configure callback handler
  * @sdev: SCSI device reference
+ * @lim: queue limits
  *
  * Configure queue depth, max hardware sectors and virt boundary
  * as required
  *
  * Return: 0 always.
  */
-static int mpi3mr_slave_configure(struct scsi_device *sdev)
+static int mpi3mr_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct scsi_target *starget;
 	struct Scsi_Host *shost;
@@ -4432,28 +4439,8 @@ static int mpi3mr_slave_configure(struct scsi_device=
 *sdev)
 	sdev->eh_timeout =3D MPI3MR_EH_SCMD_TIMEOUT;
 	blk_queue_rq_timeout(sdev->request_queue, MPI3MR_SCMD_TIMEOUT);
=20
-	switch (tgt_dev->dev_type) {
-	case MPI3_DEVICE_DEVFORM_PCIE:
-		/*The block layer hw sector size =3D 512*/
-		if ((tgt_dev->dev_spec.pcie_inf.dev_info &
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) =3D=3D
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-			    tgt_dev->dev_spec.pcie_inf.mdts / 512);
-			if (tgt_dev->dev_spec.pcie_inf.pgsz =3D=3D 0)
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
-			else
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << tgt_dev->dev_spec.pcie_inf.pgsz) - 1));
-		}
-		break;
-	default:
-		break;
-	}
-
+	mpi3mr_configure_tgt_dev(tgt_dev, lim);
 	mpi3mr_tgtdev_put(tgt_dev);
-
 	return retval;
 }
=20
@@ -4921,7 +4908,7 @@ static const struct scsi_host_template mpi3mr_driver_=
template =3D {
 	.queuecommand			=3D mpi3mr_qcmd,
 	.target_alloc			=3D mpi3mr_target_alloc,
 	.slave_alloc			=3D mpi3mr_slave_alloc,
-	.slave_configure		=3D mpi3mr_slave_configure,
+	.device_configure		=3D mpi3mr_device_configure,
 	.target_destroy			=3D mpi3mr_target_destroy,
 	.slave_destroy			=3D mpi3mr_slave_destroy,
 	.scan_finished			=3D mpi3mr_scan_finished,
--=20
2.39.2

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20240410042759.GA2637%40lst.de.
