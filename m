Return-Path: <usb-storage+bncBDUNBGN3R4KRBXFF2WYAMGQEO2UEFQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7EA89DC76
	for <lists+usb-storage@lfdr.de>; Tue,  9 Apr 2024 16:38:22 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5e4df21f22dsf4064831a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 07:38:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712673500; cv=pass;
        d=google.com; s=arc-20160816;
        b=tq77jFlXmEwkIjOzAbm2NTMBHiK7vgCPweSvAeUbXVzYVW7mW8BErBXkArxuT+ha6c
         V8Lk4mehhLd/OHHOspjKgRa8ebPWUrFKYTMlpw+uO1msoQtKYSlL508fD9qqiJ6oLUQf
         1oRR3qElC76yGwU/1STtrz/Jogs98tIoTp0iFxYCld+fkNW4Bw7qAcaHRVTKKkXoKERw
         y9gdPBUiMr4AJJlFxQGOi48JLwxAFv6K2jO/KSNpwc7EbXpOId/aVZ6EvO/V+oN+VeSx
         6K3gJ0sQMP/nAdrm6I204GF+KljrhMF1DHDE3jtzPPQrgu24j/sL6mmQzz07n4Y1EySM
         iPxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=raztOMAYywbUkFJ7CRFt5hNMz/ZaFuEI+NoEVIWC7oQ=;
        fh=V+yiXfxmVRdKP3b43+RO57u3YN2QwjVxD2V3ZMFzwEc=;
        b=jvG29KSFiHaMNAZhOmNa6GIgqexQ7RkNBMy7orzEn88zUVRiRKzYriCW0aOQS1Oy9A
         /Eci7mptWGv/Oxi7Svc4SRJcRtlEnQuoi2+GCYUVHhotGUaBWkd02jrh+28c1NzDU/+R
         +1CDBgur2g1t/RatToXpFUSRIAXk77mPVJv+K0DnzVHwAyX2u3jRlkWFjbON0f4q0GDf
         OweVVeyQNk7MTrlic/0dOwhhjXsJk2c4NbopdkDgiHYKNsLTcAff/09tDZL3vGQ7TDHv
         hATjDGjsWWzLuHQufW0d1T4BQVYkrOPiw8WVLz0Fokrxh0TFriJGzSbbLrTZr7iW/8v0
         4dTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pfAAg1TX;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712673500; x=1713278300; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=raztOMAYywbUkFJ7CRFt5hNMz/ZaFuEI+NoEVIWC7oQ=;
        b=QpmAzAkuPpHRppuvJKQ0Qwa08lGuroTnNF6S7FaMCXWc1H+03Wj9CZEylLNUIUWcs8
         clHGPIH/B0tdFrbzCl8L0M8Rs21SJqBIhUpKmJ9mddwfkC/85EBdCbeAxIV+0MGw3lx8
         4ksrhfAg2weuluIqwzPo0TzLyUYdAgwhTSw1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712673500; x=1713278300;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=raztOMAYywbUkFJ7CRFt5hNMz/ZaFuEI+NoEVIWC7oQ=;
        b=UsWgKkKRQJCdxJ0bCkwLxuCcoUt115YcrVY4Bg6H5YYvcRAqq6yrrZzbl6rT6Ggc/v
         /JAY3itb9JGlFlTRaJZfxeTi7IITCh8oNSX14M+c2CTR2rd/kn5h5pAuuL1ymiKoUyG3
         exYsbCqtPLB/2mX5RcjjEsySIpjHV2pMBkYkDO72YWReYP9Z8xsh817bItJhMn8rkS9r
         kYQYKSps2rXsct7/I5eoyYtKUIlkeeBYH7jP5Q3w7+pzPRClhfB0Uo1QkBbb2X4QgR0z
         TrPVeV+sZ5gscZDDF1wNNR7vUgIHGCr2CuYscNxHdNYbMfWxrIxovbxU6kR3cxF91L/A
         bErg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW8PPYlkIHKX7Tt1IKstPIBKX7/1wOlwRKSYQJk000liNOBUjqfQzgqlc0K1FEZLfnYeU11rWFbjVVk2Lp6e/PXGmMpRaxAXnEo
X-Gm-Message-State: AOJu0YyRmBea5zATIipHMjyBsoHWfn1LAgu5NxxQWZIhaQkZ3VlBr+kx
	zUBmCRVsvfbbYwFLWMaUxL3PkQiMoaZxmVaGzyZbTV0rDhzzMditjcFiZgxkGVM=
X-Google-Smtp-Source: AGHT+IEUjKAuRWMkeEI2kGmrgZAB9rl9pMExk07KT8Y+x2MJxdRsS76AMkakyHcfZIrgZg7tWLh4rQ==
X-Received: by 2002:a17:902:fc50:b0:1e4:9bfd:cc2c with SMTP id me16-20020a170902fc5000b001e49bfdcc2cmr3031951plb.22.1712673500512;
        Tue, 09 Apr 2024 07:38:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:eccd:b0:1e2:a5da:87ca with SMTP id
 a13-20020a170902eccd00b001e2a5da87cals3794010plh.2.-pod-prod-00-us; Tue, 09
 Apr 2024 07:38:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWNz9wic4cESS9uUwvmMEwR1TuA+DRuE32sI6a8HvHFUWie2YyrJFz9GZ3Hrk7H4H7r+YOSGllcEiD/abWf1CJyEJ0TfnmaA4DqesiFjZ6GYyRrttY=
X-Received: by 2002:a17:902:cec2:b0:1e3:cb8d:e28f with SMTP id d2-20020a170902cec200b001e3cb8de28fmr4142617plg.31.1712673499214;
        Tue, 09 Apr 2024 07:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712673499; cv=none;
        d=google.com; s=arc-20160816;
        b=KbIPwJCM0M18gAELKkCBZiBuiYyzfG4YOO8sAkmZYQi4k5n6VeQ8boLNcU0cIlA77T
         YSl7yPyyJlm7QXCSUsHoE5+0yrEYygzT8L/KepXSagzieRFHDMkRnr3aJvNmRhJmSDet
         C7j/lgLClE/ztFgFmFmhBX//08MULHj9P5TZYtnrMQ902xaJEQxIGD0kdqMU1RQ/aeBp
         R2tukEwqekCAIHLMnmwP93gWkDL8K4zhevdbTerf/X6qlIFyaStkn8UDgQnLPCn6e/h2
         ClVLZWJmHbt6/NjxCWWIZZm1l1NROQHu+Tr8XTKw6QD6AHZhmiEIgMJuLK5u/NtR4dPm
         relQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=97bJb+aM4uYv62j+Gihd8s7QCNiNww4A5KroSNoTlYU=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=WntYl5a4POmbPLJLbbVTBgO1lu6+j6bCsRcMx+tKKeMpbc/BFTDreXJ+x7sDvtDq8p
         1W8aI2LuXdfRmtMHj8YTExmevndESDnKxQuDMqKvl9BEVQisNSwCyumsphAZ4A8Fg6ms
         fhFupgmQ3V3R318BfcFBRcoIZmOP+pMy9PlsuCkFR+ECPqyFEaM6aApSFiBMyUtFMeUk
         py50EhKyWMbek2oUI8P0bsyO+RpO0nQlpPvM5Bi8C4mrZkZLUqp3Sx08kH8AVxBeBepQ
         fI1bsgj3mz9xm+vgojIL1hM4VbZNzI3okTrBlTrMM156gWFSKlx4N48pV1IiBXzyhr/f
         KpFQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=pfAAg1TX;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+a1627a52d3ab203f3ac5+7534+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id l21-20020a170902e2d500b001e259d00f15si8138246plc.20.2024.04.09.07.38.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 07:38:19 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from 2a02-8389-2341-5b80-39d3-4735-9a3c-88d8.cable.dynamic.v6.surfer.at ([2a02:8389:2341:5b80:39d3:4735:9a3c:88d8] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCbf-00000002RtJ-1bH1;
	Tue, 09 Apr 2024 14:37:51 +0000
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
Subject: [usb-storage] convert SCSI to atomic queue limits, part 1 (v3)
Date: Tue,  9 Apr 2024 16:37:25 +0200
Message-Id: <20240409143748.980206-1-hch@lst.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=pfAAg1TX;
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

Hi all,

this series converts the SCSI midlayer and LLDDs to use atomic queue limits
API.  It is pretty straight forward, except for the mpt3mr driver which
does really weird and probably already broken things by setting limits
from unlocked device iteration callbacks.

I will probably defer the (more complicated) ULD changes to the next
merge window as they would heavily conflict with Damien's zone write
plugging series.  With that the series could go in through the SCSI
tree if Jens' ACKs the core block layer bits.

Changes since v2:
 - rebased on top of the scsi-queue tree with libsas cleanups
 - fix another commit log typo

Changes since v1:
 - print a different warning message for queue_limits_commit failure vs
   ->device_configure failure
 - cancel the queue limits update when ->device_configure fails
 - spelling fixes
 - improve comments

Diffstat:
 block/blk-settings.c                        |  245 ----------------------------
 block/bsg-lib.c                             |    6 
 drivers/ata/ahci.h                          |    2 
 drivers/ata/libata-sata.c                   |   11 -
 drivers/ata/libata-scsi.c                   |   19 +-
 drivers/ata/libata.h                        |    3 
 drivers/ata/pata_macio.c                    |   11 -
 drivers/ata/sata_mv.c                       |    2 
 drivers/ata/sata_nv.c                       |   24 +-
 drivers/ata/sata_sil24.c                    |    2 
 drivers/firewire/sbp2.c                     |   13 -
 drivers/message/fusion/mptfc.c              |    1 
 drivers/message/fusion/mptsas.c             |    1 
 drivers/message/fusion/mptscsih.c           |    2 
 drivers/message/fusion/mptspi.c             |    1 
 drivers/s390/block/dasd_eckd.c              |    6 
 drivers/scsi/aha152x.c                      |    8 
 drivers/scsi/aic94xx/aic94xx_init.c         |    2 
 drivers/scsi/hisi_sas/hisi_sas.h            |    3 
 drivers/scsi/hisi_sas/hisi_sas_main.c       |    7 
 drivers/scsi/hisi_sas/hisi_sas_v1_hw.c      |    2 
 drivers/scsi/hisi_sas/hisi_sas_v2_hw.c      |    2 
 drivers/scsi/hisi_sas/hisi_sas_v3_hw.c      |    7 
 drivers/scsi/hosts.c                        |    6 
 drivers/scsi/hptiop.c                       |    8 
 drivers/scsi/ibmvscsi/ibmvfc.c              |    5 
 drivers/scsi/imm.c                          |   12 -
 drivers/scsi/ipr.c                          |   10 -
 drivers/scsi/isci/init.c                    |    2 
 drivers/scsi/iscsi_tcp.c                    |    2 
 drivers/scsi/libsas/sas_scsi_host.c         |    7 
 drivers/scsi/megaraid/megaraid_sas.h        |    2 
 drivers/scsi/megaraid/megaraid_sas_base.c   |   29 +--
 drivers/scsi/megaraid/megaraid_sas_fusion.c |    3 
 drivers/scsi/mpi3mr/mpi3mr.h                |    1 
 drivers/scsi/mpi3mr/mpi3mr_app.c            |   12 -
 drivers/scsi/mpi3mr/mpi3mr_os.c             |   76 +++-----
 drivers/scsi/mpt3sas/mpt3sas_scsih.c        |   18 --
 drivers/scsi/mvsas/mv_init.c                |    2 
 drivers/scsi/pm8001/pm8001_init.c           |    2 
 drivers/scsi/pmcraid.c                      |   11 -
 drivers/scsi/ppa.c                          |    8 
 drivers/scsi/qla2xxx/qla_os.c               |    6 
 drivers/scsi/scsi_lib.c                     |   40 +---
 drivers/scsi/scsi_scan.c                    |   74 ++++----
 drivers/scsi/scsi_transport_fc.c            |   15 +
 drivers/scsi/scsi_transport_iscsi.c         |    6 
 drivers/scsi/scsi_transport_sas.c           |    4 
 drivers/staging/rts5208/rtsx.c              |   24 +-
 drivers/ufs/core/ufs_bsg.c                  |    3 
 drivers/ufs/core/ufshcd.c                   |    3 
 drivers/ufs/host/ufs-exynos.c               |    8 
 drivers/usb/image/microtek.c                |    8 
 drivers/usb/storage/scsiglue.c              |   57 ++----
 drivers/usb/storage/uas.c                   |   29 +--
 drivers/usb/storage/usb.c                   |   10 +
 include/linux/blkdev.h                      |   26 +-
 include/linux/bsg-lib.h                     |    3 
 include/linux/libata.h                      |   10 -
 include/linux/mmc/host.h                    |    4 
 include/scsi/libsas.h                       |    3 
 include/scsi/scsi_host.h                    |    9 +
 include/scsi/scsi_transport.h               |    2 
 include/scsi/scsi_transport_fc.h            |    1 
 include/ufs/ufshcd.h                        |    1 
 65 files changed, 347 insertions(+), 595 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240409143748.980206-1-hch%40lst.de.
