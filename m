Return-Path: <usb-storage+bncBDUNBGN3R4KRB372QKYAMGQEZ6CHOBQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF528882B6
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 00:55:29 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6eaad4ed398sf350229b3a.0
        for <lists+usb-storage@lfdr.de>; Sun, 24 Mar 2024 16:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324527; cv=pass;
        d=google.com; s=arc-20160816;
        b=rnWdd6Ry+UO8VPsC6wgi9bv4S81mEH8cHuJbavL2eKT6kaYY7DGO9VOUaiqOwpjakJ
         7WllQfIUU7fVnUqnpckTspnSIC55y0OwzMESd5Q7dx4E36cvNoibpbCIaG+5D/nYlE3c
         pEBkES/YPaxcarO/9MKWXZc2GFLuw2sfFZPzZ7X2/8lK3meES/25keMchkS5GyF+n2JC
         9jRO19Gm4X/k/ZpBfxA9TXtA1qg54UO8g/iYycW2EcCkp2vUNCYNJPHrRIicgSBC05jG
         OD2azlSJ6qlWieXj4V1RpSWSLmq3yLmf2G6JJr/PBPEXC1gvDtxwzN0pIc2QnmZRt3MD
         tkUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=T3/IjCUX8uEOESiW/1StAHrjp12tNNGea1rGD8TesAQ=;
        fh=09bYC1gM6M3TlHFDCpOfsWvudt5u4hsETqheSJ7RC1Y=;
        b=c9lK7TqA/DugVOM8uc+nazLBK0eKOuXz64Oa2KxIJjXyUQ+VrVxws/w7ICn94ARipR
         7RHhCC2ES7+0xlAkYV1jv7uEZ3Su3EbTulUMfSWQQA1QAh/aFGQBwJg0dZpMc8LWknBS
         p/SNmkXD4F5e1vd+vHIVhuVJYxsuvd6afZ9bLSydLHazo4+2MKgbiDouPSfpkGmyjDpK
         HVghRjO7+J4BoRC0MwYlhVWUMRFvdCriv9ibIThyF33TcowSk30pAizO/sOF3DWI+Zgd
         BbQZ02DevjS09EyMMzzvFU3IPk+JCCmfgS5yi4rcFk804AqPbxgf45zle1s0xpA940FN
         Xrpg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=iFGmw5+9;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711324527; x=1711929327; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=T3/IjCUX8uEOESiW/1StAHrjp12tNNGea1rGD8TesAQ=;
        b=P+/YTk1uO6nh8VUfzFjdiv05+1C23I6pvDzmIPg9xqvMGoNUG1H3iP0jxBbFR6CCzm
         vluDUE4mvE9OmQlSKp3MoYi6U3i7mu0Ei9+w+P4v5XWItYTHlOK/xbRxOiG8o0ncNJPE
         uFOxXQncj3APxoRQVYWsXAb2IA4QmCiF0JCCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324527; x=1711929327;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=T3/IjCUX8uEOESiW/1StAHrjp12tNNGea1rGD8TesAQ=;
        b=eOZEvUR2clNIdfXWhiwUxHD3mrSixZqZTpNroD+9HKyBw4tvwGU5p5noaItzRAzAH+
         vPrJth67u6zpF/pmOMLUWTM1cX7izJgdmygqhyr4IWrOaLK7Ui4rEz2/7UIqDP7aObo8
         WneXDWrjA+yInFIWLrB/hCFIyFgKMmIL7xZJvny7EVLcjUfBTY8Gon3ZbW1zplufJTQ6
         trujtG/HIQWexEVTRfzPVPmCsqDP3JCA02+J8plQr1/wuUaEa2owwcqFzMw4V4P3oB7y
         5QI1D+Psf7TmTKhsQnvvwAZPCxUjSIdOSd1vvAB8UoH7JDcwKATfYnBnAiz72gVTShGW
         YLtg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXuma86A1eo/eu5IrtVDyf2aEuSn+bebzNyxfJND/94myFGaFyGixHWpwOKaYa2q3a9P+kwYszjSmejnpBYw2Wyk8NQsaz1caSl
X-Gm-Message-State: AOJu0YzsMZNX5RO4FDXEGMvZwyw23M8inffHbVnrvKJpmTmIUZXo1/LO
	VgGi4tZc0iUL1BVtxWEz29CpzWw+f80IRXkdc2s1TWa7wQvaynpaMBVQVwcmWeM=
X-Google-Smtp-Source: AGHT+IH9PZZGEW/lneAoNJzheV5fGPg7E4aL81hWkt8YS3T0r84cQ6ZAa9vuO4OE3yQ9glpoTN5Frw==
X-Received: by 2002:a05:6a20:3956:b0:1a3:aed2:849c with SMTP id r22-20020a056a20395600b001a3aed2849cmr6538706pzg.8.1711324527476;
        Sun, 24 Mar 2024 16:55:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:da85:b0:1e0:c37d:cfaf with SMTP id
 j5-20020a170902da8500b001e0c37dcfafls164346plx.2.-pod-prod-03-us; Sun, 24 Mar
 2024 16:55:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV/+mslmYkWWEZ/YBHb2ztp/EANegIr27Z4Ae6t1yiEqWMHkCkZVl9CkmNe7fd1CdzINe7/U1rGt2uYNu1oPchUTvcsYW/ez4jQxyN+QdUf9s+LLTY=
X-Received: by 2002:a05:6a20:7da9:b0:1a3:c603:61c2 with SMTP id v41-20020a056a207da900b001a3c60361c2mr2539046pzj.12.1711324526203;
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324526; cv=none;
        d=google.com; s=arc-20160816;
        b=h5RvvIN0px3qrDQ+KjfQfOKoate6+e/cUZa7QQZDdP5yTxEFxac8A6dHLf0n/ewOzB
         PtT4rCwQtW+qgwEvhOJln2Jz1PlbBWLBWbUvb86u91QoWyAs6rJe/vbH8n+0Z7ELvAfL
         mxdUubd1Cmmr5LTvAFhtkcimWj1TgIuf7T3VajV7xdE9GUPDQD0kyMLdmpO1HPAoYVO5
         0VN8x29xkBfGENxUAghofR74IkbQ5ZVObnyStMXFqiPF2O/XopRqDE6NA+I8Bjub6/nx
         4U8C5G0U6TfjslqNr/+x/E7DEEvtx2xD3o0xlAee9MEpwBvOtNTRvIBFGpJFOhVog8pI
         BeKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eHfDKYBKDOSF5nkhxH0HKhVm+4o+I6CDGNU5dThwXeo=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=u9SmT9XMAE27RYhZoLIGtgCpGgVToY0t7d+RmhttIXZoFnZrYuWiXP8NghpKKvPNvO
         piCxt29JGXSbj9M6LpmbNP104OtO3tnK/ex75v5aw7LKgtyOV1ZFQfSfsZ5sAgT7eLZW
         NTnwpIudIzjFN0n2K0rJzPLEwC3hRZgE6omj27Ci7J00+S1tdJC86HyBgmWi0Rv4tuXZ
         Acdi8mcSC3yejTNJgLaVcwQO4nbVQHXcpoNR0+HCAXlNPz8u5NDRb2BRbNu77nPhRou0
         biPaZ9NEt8YMJwuIaYeMDgYM6xo/sqXHR+m83+TM9BGmrYqcWg8lumdyBYZOtvUR+jn6
         XZ7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=iFGmw5+9;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id a7-20020a17090a8c0700b002a044eea8b2si4869948pjo.152.2024.03.24.16.55.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXfu-0000000DzJc-2rva;
	Sun, 24 Mar 2024 23:54:51 +0000
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
Subject: [usb-storage] convert SCSI to atomic queue limits, part 1
Date: Mon, 25 Mar 2024 07:54:25 +0800
Message-Id: <20240324235448.2039074-1-hch@lst.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=iFGmw5+9;
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

Hi all,

this series converts the SCSI midlayer and LLDDs to use atomic queue limits
API.  It is pretty straight forward, except for the mpt3mr driver which
does really weird and probably already broken things by setting limits
from unlocked device iteration callsbacks.

The first patch is actually a bug fix and should probably go into 6.9-rc.
The other would probably best be in a shared branch between the block and
scsi code, as the ULD drivers will be a lot more extensive.  I'm actually
scratching my head on dealing with some of the updates that it does from
the I/O completion handler and ->open calls for already open devices.
Suggestions welcome..

Diffstat:
 block/blk-settings.c                        |  248 ----------------------------
 block/bsg-lib.c                             |    6 
 drivers/ata/ahci.h                          |    2 
 drivers/ata/libata-sata.c                   |   10 -
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
 drivers/scsi/scsi_scan.c                    |   79 ++++----
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
 include/linux/blkdev.h                      |   13 -
 include/linux/bsg-lib.h                     |    3 
 include/linux/libata.h                      |   10 -
 include/linux/mmc/host.h                    |    4 
 include/scsi/libsas.h                       |    3 
 include/scsi/scsi_host.h                    |    9 +
 include/scsi/scsi_transport.h               |    2 
 include/scsi/scsi_transport_fc.h            |    1 
 include/ufs/ufshcd.h                        |    1 
 65 files changed, 335 insertions(+), 601 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240324235448.2039074-1-hch%40lst.de.
