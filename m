Return-Path: <usb-storage+bncBC7M5BFO7YCRBK64SSZAMGQEEGMUJ3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC428C6DFE
	for <lists+usb-storage@lfdr.de>; Wed, 15 May 2024 23:50:37 +0200 (CEST)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-5d8dd488e09sf7988883a12.2
        for <lists+usb-storage@lfdr.de>; Wed, 15 May 2024 14:50:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715809835; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfCyGDNd4d5CGBX/9vU+5hJS4/ktEpk9bBgdc521AoYfXRIRSMJIqtVaw2y0MbMh1n
         6oKN1xaRsgOCMpBLLA4T3VAgVVNR5dkgtL1cqIyOy29prghUpyUApydjQLq2ZvDoUDkp
         sCUZR4tCGM0AKTtJcjMpTJrU54MsaFDF5eOOQJA/yq+PKOXPgCcLRglbixk0OdaKvh7q
         XRTlfSXNaCguKaTg9iw7KM7jcwzR9jNOMLW7cv4ytai35EKrd644A/KP+ifVAXr9Xpj5
         7tp2JPgVFBHW+C14Kotv+XvFDnfOm9CbAC3xTRQB7spgTfBn/t2/CH4/YAdBcQmY0xc+
         QN7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender;
        bh=SG20TjrNznPuln0J8GUQiHuQY5NnB3+3mHlJC3uc1Ys=;
        fh=Od1kUaYWwrZ+Bg1eyw7kz/sJlrFr2e6BCfr4Vu2Yy1I=;
        b=adE9AzuiZUgNePyOyUz1edlkND+Qvn368gPO295/N/yuUOG0bZebbbpqvzxDuHfUnH
         1nnoojEGdDXzqAD7zcaKWTwNWO8XKfdWOJyiBtX/F6bSG7CgHvc/2n4tLr820u4ufJ48
         NdT5uqWivHQ5nNFnuM0nnESnkmlvHO4uDYCeJNTwFQ8R+qVnvU8/hq8eSsbqG1SrgwXO
         9On72/mGDhItriEvra+jXkdYZN8wP4Edj7IXhIUvpJf4/nq8mkyT+slBRAywu2eOvxtI
         w7IkQeOoxsIhChWEMFpeR5nBFPJYTZ7NLrpWQA+sQkrD+QY3UcDXpEFoN3SnqyG2BKNs
         GubQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=dCQNSh71;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715809835; x=1716414635;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SG20TjrNznPuln0J8GUQiHuQY5NnB3+3mHlJC3uc1Ys=;
        b=eGObA9/5q3DpWpOvxKMWV2k/INKyGUr8Nvk59JbTphSpViGgiEAvQMZmhZ8h1bLgva
         Jtk803GcS/vWGJFApGAqJhAGMTnb7x2W24fVIsx9QSqMeMSV7L737ey0l6/JeIhjmVSE
         5Txo9RQzodpMKempAdTiQSpQab6sJoq+CChCrTzjAPE9WK7gX5TT6mYh9+92hgINrlrs
         giYfP3chCA/48ERUIO/E+n87229uIVckWx32Lil/uyl5PLJoBLjkYMGjfCJTchvMMzW5
         7HGMdRKJKPi6N00csLX5fbhY4+fRn964SGAY4vnq7dhNaM9L4H2h7RU/8d7tpXLfanGT
         grTw==
X-Forwarded-Encrypted: i=2; AJvYcCWmQ0yO+WMMzUv4DQpLJAmivlbitKGRgBPuF5FG3A8AtGAqydLzaC2ikx7F/+xWg78sEOjkF5aLth/faNKzlU1c/ZDRg7LcAAUK
X-Gm-Message-State: AOJu0Yyic9h/xQjeF8qiKjU9bk0BcXezILmhef48fm7YNTwZb6PM3bNV
	QoJH6azvDnyCCSnr0VL865q07ya5jtaG30bzFf11pA80dw9C2rxV17oZ16M7voz2dtxssxc=
X-Google-Smtp-Source: AGHT+IFnbbVN+gZpAK6kcYMumHtDtSICceERCOsEGw/jCdxbLB/FWQjNXqcrtg44H/U10x0ixdz8Kw==
X-Received: by 2002:a17:903:228d:b0:1e5:a3b2:3dad with SMTP id d9443c01a7336-1ef43f51f2cmr223827125ad.42.1715809835277;
        Wed, 15 May 2024 14:50:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e883:b0:1e5:10b3:e819 with SMTP id
 d9443c01a7336-1eefe78ce66ls17025295ad.2.-pod-prod-06-us; Wed, 15 May 2024
 14:50:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCyFjpD/201fpPWZeTHEbY9YnIj+h0x0kNnDqf7623fzj72b5iAnlyc6x9Yoolu2/YmvP22+vG78uMyxVfCIXd3XjMYpyzHBzM3q3Yf8eQ01JzCAM=
X-Received: by 2002:a17:903:41c9:b0:1eb:51fb:de09 with SMTP id d9443c01a7336-1ef43d0ad7fmr238422255ad.14.1715809833530;
        Wed, 15 May 2024 14:50:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715809833; cv=none;
        d=google.com; s=arc-20160816;
        b=dHyli216p7K6rWNoRHoNDhWKXzP/AVUHAJnD4ULIDXtTPoQiBos7VWSsV4+5FCNXfx
         qJaxm6iLpP5M889e8vcQq9P9TMllQwSLcXqNWJlnH6phBJ2eKRdRFVIDaOdRs0t8zlB0
         YmPwDpk9boY+DpFD7vPvA/5IEfZLZa6kRdX/R9MR+rI66AWDksG3A/BtXnXWpInZmNWZ
         TnZ3u7vAYUfy0VL3DpvTWBq5U8edn1ywXFrIdAMTvXKGO5zuOX+eEyfZCRif3buL4SDi
         9k11rCSAb+msy6G7RlkVxEZb01pYLmgaSX0I5uEXmnst74bdTe74WCvoC4O446mvHWXM
         nSkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=TUuTliHGjG8EepapSs2g5/Z8liXHlvUYXr6xFZTnQ/s=;
        fh=D0A44t17ibq7+c8fvWdSlbfdUMA5d/ZycLdMNfkJrMg=;
        b=ChoN/TXp46udwr3uj3rVpaUDg2vHZbZxtSg/y1dnk7HAaOC1ABJHA7aLNEaPgyM9In
         HvSHJ6jvRKBrtzj9qxpE5mJs5/EoM+7+43mXUHUzIGaT0NAaPMBE7RSLHKnxujjA3F2v
         nqiU/XBq2DfcwItimi3YEMbLINQauYxGSl/+ZkFfl3pqXuLaXNg8o4E1ZwE9jFnaHIAn
         r59exmxUqjwyo/EwR00sSQCp2SmypKtONgJEgg0IAHS7PgPK1BmHvw5BCNoIIbkr6VSy
         Scef94110xYygQu/AL10NBiCgS4iKXTIJr1Tmc9qC1SuQlTNboU7iljlDnkGut0OJiAY
         2jBg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=dCQNSh71;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1ef0b9d443dsor80685425ad.1.2024.05.15.14.50.33
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 15 May 2024 14:50:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU0PAi88zEw4jkHiy+KThfCqNHXfOrNwxt6xREwTbz5PPuBRBOjZ4KCmN/QUOzeCjkgeEylZMmt2LEMa4+vGIITUliNtmAvf2TyPKX/EIEiCH0RLPk=
X-Received: by 2002:a17:902:aa03:b0:1ec:5f64:6e74 with SMTP id d9443c01a7336-1ef43d29b65mr185610635ad.23.1715809832960;
        Wed, 15 May 2024 14:50:32 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b9d164dsm122822315ad.52.2024.05.15.14.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 14:50:31 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 15 May 2024 14:50:30 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
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
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
Message-ID: <ce2bf6af-4382-4fe1-b392-cc6829f5ceb2@roeck-us.net>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-5-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240409143748.980206-5-hch@lst.de>
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=dCQNSh71;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

Hi,

On Tue, Apr 09, 2024 at 04:37:29PM +0200, Christoph Hellwig wrote:
> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.
> 

With this patch in linux mainline, I see

ata2: found unknown device (class 0)
ata2.00: ATAPI: QEMU DVD-ROM, 2.5+, max UDMA/100
------------[ cut here ]------------
WARNING: CPU: 0 PID: 27 at block/blk-settings.c:202 blk_validate_limits+0x28c/0x304
Modules linked in:
CPU: 0 PID: 27 Comm: kworker/u4:2 Not tainted 6.9.0-05151-g1b294a1f3561 #1
Hardware name: PowerMac3,1 PPC970FX 0x3c0301 PowerMac
Workqueue: async async_run_entry_fn
NIP:  c0000000007ccec8 LR: c0000000007c805c CTR: 0000000000000000
REGS: c000000006def690 TRAP: 0700   Not tainted  (6.9.0-05151-g1b294a1f3561)
MSR:  8000000000028032 <SF,EE,IR,DR,RI>  CR: 84004228  XER: 20000000
IRQMASK: 0
GPR00: c0000000007c8040 c000000006def930 c00000000159f900 c000000006defac8
GPR04: c00000000146e788 0000000000000000 0000000000000000 0000000000000100
GPR08: 0000000000000200 000000000000ff00 0000000000000000 0000000000004000
GPR12: 000000000fa82000 c000000003330000 c000000000116508 c0000000060c5c40
GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000088
GPR20: 0000000000000000 c0000000026f2f40 c0000000025eeff0 0000000000000000
GPR24: c000000006defc80 c0000000031cb3a0 c000000002571c80 c000000006defac8
GPR28: c0000000033052e0 ffffffffffffffff 0000000000000010 c000000008f13df0
NIP [c0000000007ccec8] blk_validate_limits+0x28c/0x304
LR [c0000000007c805c] blk_alloc_queue+0xbc/0x344
Call Trace:
[c000000006def930] [c0000000007c8040] blk_alloc_queue+0xa0/0x344 (unreliable)
[c000000006def990] [c0000000007e2658] blk_mq_alloc_queue+0x60/0xf4
[c000000006defa60] [c000000000a7a260] scsi_alloc_sdev+0x280/0x464
[c000000006defb90] [c000000000a7a6b4] scsi_probe_and_add_lun+0x270/0x388
[c000000006defc60] [c000000000a7b070] __scsi_add_device+0x168/0x1b4
[c000000006defcc0] [c000000000b08fe0] ata_scsi_scan_host+0x294/0x39c
[c000000006defd80] [c000000000af7704] async_port_probe+0x6c/0x98
[c000000006defdb0] [c000000000120028] async_run_entry_fn+0x50/0x13c
[c000000006defe00] [c00000000010821c] process_one_work+0x2c0/0x828
[c000000006deff00] [c000000000109090] worker_thread+0x224/0x474
[c000000006deff90] [c000000000116658] kthread+0x158/0x17c

followed by

scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
usb 1-1: new full-speed USB device number 2 using ohci-pci
scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
input: QEMU QEMU USB Keyboard as /devices/pci0000:f0/0000:f0:0d.0/usb1/1-1/1-1:1.0/0003:0627:0001.0001/input/input0
scsi_alloc_sdev: Allocation failure during SCSI scanning, some SCSI devices might not be configured
ata2: WARNING: synchronous SCSI scan failed without making any progress, switching to async

and ultimately a boot hang. This is with the mac99 emulation in qemu.
The warning is always seen, the boot hang is seen when trying to boot
from ide/ata drive. Bisect log is attached.

Guenter

---
# bad: [1b294a1f35616977caddaddf3e9d28e576a1adbc] Merge tag 'net-next-6.10' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next
# good: [a5131c3fdf2608f1c15f3809e201cf540eb28489] Merge tag 'x86-shstk-2024-05-13' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
git bisect start 'HEAD' 'a5131c3fdf26'
# good: [f8beae078c82abde57fed4a5be0bbc3579b59ad0] Merge tag 'gtp-24-05-07' of git://git.kernel.org/pub/scm/linux/kernel/git/pablo/gtp Pablo neira Ayuso says:
git bisect good f8beae078c82abde57fed4a5be0bbc3579b59ad0
# good: [ce952d8f0e9b58dc6a2bde7e47ca7fa7925583cc] Merge tag 'gpio-updates-for-v6.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux
git bisect good ce952d8f0e9b58dc6a2bde7e47ca7fa7925583cc
# bad: [113d1dd9c8ea2186d56a641a787e2588673c9c32] Merge tag 'scsi-misc' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi
git bisect bad 113d1dd9c8ea2186d56a641a787e2588673c9c32
# good: [a3d1f54d7aa4c3be2c6a10768d4ffa1dcb620da9] Merge tag 'for-6.10-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
git bisect good a3d1f54d7aa4c3be2c6a10768d4ffa1dcb620da9
# bad: [f92141e18c8b466027e226f3388de15b059b6f65] Merge patch series "convert SCSI to atomic queue limits, part 1 (v3)"
git bisect bad f92141e18c8b466027e226f3388de15b059b6f65
# good: [0e0a4da35284c85225e3b128912582ebc73256c8] Merge patch series "scsi: ufs: Remove overzealous memory barriers"
git bisect good 0e0a4da35284c85225e3b128912582ebc73256c8
# bad: [a25a9c85d17fd2f19bd5a2bb25b8361d72336bc7] scsi: libata: Switch to using ->device_configure
git bisect bad a25a9c85d17fd2f19bd5a2bb25b8361d72336bc7
# bad: [6248d7f7714f018f2c02f356582784e74596f8e8] scsi: core: Add a no_highmem flag to struct Scsi_Host
git bisect bad 6248d7f7714f018f2c02f356582784e74596f8e8
# good: [33507b3964f136ea1592718cb81885c8f9354f65] scsi: ufs: qcom: Add sanity checks for gear/lane values during ICC scaling
git bisect good 33507b3964f136ea1592718cb81885c8f9354f65
# good: [4373d2ecca7fa7ad04aa9c371c80049bafec2610] scsi: bsg: Pass queue_limits to bsg_setup_queue()
git bisect good 4373d2ecca7fa7ad04aa9c371c80049bafec2610
# bad: [afd53a3d852808bfeb5bc3ae3cd1caa9389bcc94] scsi: core: Initialize scsi midlayer limits before allocating the queue
git bisect bad afd53a3d852808bfeb5bc3ae3cd1caa9389bcc94
# good: [9042fb6d2c085eccdf11069b04754dac807c36ea] scsi: mpi3mr: Pass queue_limits to bsg_setup_queue()
git bisect good 9042fb6d2c085eccdf11069b04754dac807c36ea
# first bad commit: [afd53a3d852808bfeb5bc3ae3cd1caa9389bcc94] scsi: core: Initialize scsi midlayer limits before allocating the queue

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ce2bf6af-4382-4fe1-b392-cc6829f5ceb2%40roeck-us.net.
