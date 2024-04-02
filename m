Return-Path: <usb-storage+bncBDUNBGN3R4KRB7EFWCYAMGQEYCYSGVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id AF319895437
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:10 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5dc4ffda13fsf4683184a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063229; cv=pass;
        d=google.com; s=arc-20160816;
        b=EG2WEJa0rbxOLh95/JpoYlweOuQkZH8VWgsO1CrXFfRCUifHVFwQqVXbeq4eFDDOVs
         emQ+3iSdutoH+D/MWMcG+tntzyQbesBGM/Ps3kGVH/D5uSHHKLbHpwi8480ddS36HGit
         M2I8ggClYcOgwgGClxqPbTRTp+2mae1uXungakLuCrEv1CHHK5+z3r3QDkMzbgf2nuFR
         rkJAzrdZVNqwlV2/1qrZ8P/8ZySRWBi2mgptfM+ou21hHfNoi4CZoFiPKhyVIndQVg09
         kpf1VigmVqSu/ywzK7URY+tzbSeoyl9RMrJpWnCuYIj++e3BgE7hQ5PSt/GNkqgbKzt4
         fvkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gPgGWJTmzmbZ4W01ahFnoMKyshWLT2Gxa3lH4u1QGms=;
        fh=B5htyWVkRo5rW5D6UAaPz8EfSJ7Ant7A8xNUlY6W6YY=;
        b=eQoONM4GMTVC//OQq8E8kNkf5wrnJRhtRYHhLTMw2hYxfg2R+OU2zzKeYJGKORxtW/
         /0vDTyajAUE1qqsXWEO86VD2rHQQ21DXLSWu8QeJ3peoycux8iGK7jJHb+Px8TasXSg3
         VcyORuTDv8E8q493kNtdchGdwC0OwYMwC0Ob8AeKBOjsSmzBjnXoSVmjoqGThpzdgl1G
         u6VFBSIyX6pR4g5TuCbnn7s8xeLk5oW4simZjY/fJho5/YHjcLLgkMkeaPyyKC30+Lxa
         D7lvnmXzELKombZwGgjnZHblo5e3U3WNZ19ZDByWA+EIpf5/uctEQT9kPWwKwCD7LtQc
         zrTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=5AkjCBFQ;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063229; x=1712668029; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gPgGWJTmzmbZ4W01ahFnoMKyshWLT2Gxa3lH4u1QGms=;
        b=Z8lb6dpHSK1pRmkLPOivJEdX19owpRsgIFO1L+7Ga9B4AvozgReK7wF2RTyLUyB7UK
         7Q2hm67XllqaXG+BJ4oQrEZsdKQFc0wLj0Ycpj1TwzbywW9qrhrnQKGjNQIPSZueO4Br
         QgyLCqUp5Mi8S7ONZf6d80PnvkCgj7XpMp7O8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063229; x=1712668029;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gPgGWJTmzmbZ4W01ahFnoMKyshWLT2Gxa3lH4u1QGms=;
        b=pDZHF46pjwxUJbqT3B5GDaME35EqQKhpndEmM2mI/VEVsGCxa3mAbWgSuRVE0rEezL
         +NqVGgDEEA8FHzhitguJqzHaMY6fklhhC/1Ek4oMh9iedR0TB4JvvknSMvOJd5uCc5hx
         g66a56jO6rV5fdofp8W/KbGq2lO5cLDh7AL6qbr/Pa3tGOwe2/R4ezWOOC/D8up4KThV
         7o4GALjaTUgIuwVKhxE63yWSId9PvsDsae8J37xsxTBGVUKUcNPM77n7Iw4d11n5D9ZH
         I1C0Uv/lzmE1ZZAuqs6DIIhIEWRjj/UrGcwTWYM5kVKFWSRz4h+RXt+qwTcDzVwyEF9g
         oJ7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU0B3qdqKiwOyihBNE6w2hRtwbwC66sCxSFcnSFWAgIkOXUD+prRMCnQwJJvtvTV0yYO65KKw6Frv0rOqhyddBRK34nHmKodPIs
X-Gm-Message-State: AOJu0Yz/sRu72DB8zaGRWdXr7Fo7xsuVMmaNELTYqVmcfijAzDivmxSg
	dVb2SCvA28Qju14ONSLWssf8L1RfanwpjoTYmBJCr0IaohrCSMQWfyXy3WKmfVY=
X-Google-Smtp-Source: AGHT+IEqv9VnfQNbg6IDiogCTLoK58dD9GjSbhsKFmbzL3kOYcZDrIQSwt0gOxaLm8qjFhrFYppNWg==
X-Received: by 2002:a17:90b:30c6:b0:2a1:fbdd:4219 with SMTP id hi6-20020a17090b30c600b002a1fbdd4219mr21122884pjb.2.1712063229143;
        Tue, 02 Apr 2024 06:07:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d805:b0:2a0:8523:bb1e with SMTP id
 a5-20020a17090ad80500b002a08523bb1els3414107pjv.1.-pod-prod-00-us-canary;
 Tue, 02 Apr 2024 06:07:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXG2zcz927JipdMMGHL10bkH4uynECZkMrGXfmfYpKjcb1qvjPDjZy1l4wNDjatrMazrDAUgt5HAXPibjLRGgbGzTypcaEdZ9J/ceIkv5x1N0qdoBg=
X-Received: by 2002:a17:903:183:b0:1e0:9926:aded with SMTP id z3-20020a170903018300b001e09926adedmr20898297plg.24.1712063227869;
        Tue, 02 Apr 2024 06:07:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063227; cv=none;
        d=google.com; s=arc-20160816;
        b=wsu6QgdWyMN9lW6KbvfKIexFy3KFucKyWJwKfcxXH0orAudBFc+74ci/CJlQ/7Ud5H
         4ciiiuevsciHb5xrUHbw56aavhg3CwGfM0iX5ZOuAg2/xOddm7IM/flCLvi3KdeSkfqL
         vLRjM0PTR1F0Mp+bHxzB2f9Ui2TiNzy89g65YeC9YzHSkmOnvxB6TxxAn11EmpsYMhbP
         C3eYvuHbv2Z4ciMYuLtZrglzuHJXyn0eiDQarvsDlwjisdh5JOqQ5yMV3x9bN+lGSSm/
         jyofE6QyqARyMLRp5LJbRpIqd8TESpLM6q0Y/CB9fGfypnhWSyqGptqMevR75w+J+FcL
         3VCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WnMplBC7d5smH4h7cTd7I8II3Hw8mKB1V3xXI/Gj8Ow=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=jYCFUxEAlK8BH5gYPHNFEgLb/t+s7L3qUAC64x7fleseHrDKguv4/r4IWtYiKucfgM
         jj0hwArz1Ys5ksfiPZV3bH02mpsfX6L9WnI9QOY/Aksf1nFxMaddsBkHWXKbwoEozao5
         YR2EgTw9nLg450tEKkixv0tp2rNac/SnuZ1WZzup+MhtYz64NYDGN/WxK7kbCGnDHrPM
         DPIkH+6xpninsO+lsi7libcuvhAfXrR5wTpmeHZUUF/k19fpLML0wuTUXu9uhLztnLRr
         FvQnHPgNiMB5eMcd1YMt1wM9sGVgrCyXESpDCgiyNOyQu2cMkN4M+D2YdbPK2Lm182Gu
         tthg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=5AkjCBFQ;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id d126-20020a633684000000b005f0bc6ed83bsi4973715pga.193.2024.04.02.06.07.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:07 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqh-0000000BFIS-12gL;
	Tue, 02 Apr 2024 13:06:47 +0000
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
Subject: [usb-storage] convert SCSI to atomic queue limits, part 1 (v2)
Date: Tue,  2 Apr 2024 15:06:22 +0200
Message-Id: <20240402130645.653507-1-hch@lst.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=5AkjCBFQ;
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

Hi all,

this series converts the SCSI midlayer and LLDDs to use atomic queue limits
API.  It is pretty straight forward, except for the mpt3mr driver which
does really weird and probably already broken things by setting limits
from unlocked device iteration callbacks.

I will probably defer the (more complicated) ULD changes to the next
merge window as they would heavily conflict with Damien's zone write
plugging series.  With that the series could go in through the SCSI
tree if Jens' ACKs the core block layer bits.

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-1-hch%40lst.de.
