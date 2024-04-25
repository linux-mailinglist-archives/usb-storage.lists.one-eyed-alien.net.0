Return-Path: <usb-storage+bncBDVIJONZ3YDRBEHRU2YQMGQE2XZAVVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1146.google.com (mail-yw1-x1146.google.com [IPv6:2607:f8b0:4864:20::1146])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9968B189B
	for <lists+usb-storage@lfdr.de>; Thu, 25 Apr 2024 03:57:38 +0200 (CEST)
Received: by mail-yw1-x1146.google.com with SMTP id 00721157ae682-61b1200cc92sf9370517b3.0
        for <lists+usb-storage@lfdr.de>; Wed, 24 Apr 2024 18:57:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714010257; cv=pass;
        d=google.com; s=arc-20160816;
        b=r6rDO0qvUcj7Zd4MIeRnMP0YnCHeUCpuS7Euon+OJYNFOMZA032V69hoL/p2sPnu0M
         VaIeT/7k4pzZTILaVxPXsFEMAL/5z26FUQsCSIUtdOzNxcplZmOJSu2LCJ5yvg4k12SF
         JVs7I9OMgHR9qc7BL9bFNU/Gbjwu1GSO8YtjZ4SAi1Ki+/ck6HnbSF5ciFGzD9j8Pka5
         DqWszb29efCQYVy3gA7FSL+R3Jc/sMhk8bV56Nt7B3DKnmWyziDw3ZXCtpDaYpQHOvqh
         kfW3TMxUtiKkBmpseQXtW+jBzeAn9/sscPGvDk2FplIPvYWzkFSvu//yORHLqXxPGomD
         F63w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RJYC+EQGaLBa5LuqG+ocYhBloTrBC3dKGKibONYIn4U=;
        fh=iROlTp4mk8JkuhljDgc0MZzn8tD7T2X5/WKJYebG0kc=;
        b=e8xRohSB+sLZjOemI6jG74KfoGWzKaz4rWqeIBiIoPYCecDwJIH4WtQ1BcFStiG3M0
         apTmH0BSy0y0zESbngpX/BDXS1fuN8U04lYGnjkgaCKv4ubA+A8sij8WP8AsJoftUaiK
         hNQrz2/WuxT3PDPH9dIMJH+sb0o0AHcHQV/iFhHXBuYzQofMB/ZScXde1BESkhuT9+cO
         l6mSIQDtVx2z7BHZGK9578T5YQt2ome6MCMMvhvK9Zre3VYm3Kn0CxVZSzocejIbdpeN
         825doX2kQMOlaTL/6Q0k8UFcQrSkstEtwH0D3XztbobsWnssUEFqyUVE5mjZjav1Wt5j
         IY0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="i/VqEWwE";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1714010257; x=1714615057; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RJYC+EQGaLBa5LuqG+ocYhBloTrBC3dKGKibONYIn4U=;
        b=lx+AWGVlO8OK9SSlDnqwscrc6cDdeU2P5PRPDaXSCPpKgr3L1ERYq2xjwwsPHncOUm
         gFnyem9KJuj6Vbx3LJ1RjDaA4urc24qlyuxdVeGD1Mgxvo7aFrGcZDalsIS4jVIGgicL
         kFZsJRkRrs/k1tq9sKmVtLkH4qR72Y+3PABas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714010257; x=1714615057;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RJYC+EQGaLBa5LuqG+ocYhBloTrBC3dKGKibONYIn4U=;
        b=cI1A4SCkQqzjDpK8P5tEP1MhAqcLC1D5mjtNDje+Sscv441YRZXWSo/+uUX8mAVRZQ
         ay0oTs+jKGs4OaP2M9z1qtqRsbGiSg39oOgWMBqdtAMef8IPlz1bQKV8kXvTZXq+Kxmd
         DJMxwaofAfiZEo4B/ePTyj7+KdVcX9Lsr5uU1JT7qBYSvog04zbGMAxHYmmbtXnvnl4H
         Ecs6iJTb1YSEFgzKQ1IpH31GNs0LhHeKib2K1KJ68MxDnU1gHyTYF7mu3TtbjjYfXLPQ
         HBW+OlB+dClz29tE2mWwFeTd+G3sAIoaPx5A0/FAlyF0XNKYdLbfzzOxYXKR1Q4OzGb4
         C79g==
X-Forwarded-Encrypted: i=2; AJvYcCWkKIkjKVJiJVeFL5pnmdsL2bhyMqhLcrp7FBf/bGVDo6VQWxCPQczCUwYTEEv1YL5W+TssU5W7hZAEPW76CcLaWgGJCueyuE44
X-Gm-Message-State: AOJu0YwX5EfxR7PsdwwhuPHbeSvp4uEQ9EUtgu+fgSD1nvvKzPs7vFxI
	riCL6CEWP1sgFNP2pijxUGLMzsBZG16NV6VB6b73FhtddVkCAL+O1v82bLXgxwY=
X-Google-Smtp-Source: AGHT+IHmAoKNa4UgYJcFJLIiGqMFRrOkTl/qYowvh88X6h0MR8Vd2nhrOVqg4dX18ANA56qFJ17yGg==
X-Received: by 2002:a25:9841:0:b0:de5:1f5f:3682 with SMTP id k1-20020a259841000000b00de51f5f3682mr4250824ybo.30.1714010257303;
        Wed, 24 Apr 2024 18:57:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:aa48:0:b0:dcc:717f:41b7 with SMTP id 3f1490d57ef6-de585edb9f2ls515982276.0.-pod-prod-07-us;
 Wed, 24 Apr 2024 18:57:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWkirC71VM+oyGSlN60MIZCFsZx/G1ZrnWis71jGs3TIEDhtnIw80t/vlseUkDbGlfiO6cE+qhZ011FNHC1yAY1uJPUAB1wKnuw3wSZu98PQNCQRH8=
X-Received: by 2002:a05:690c:74ca:b0:61b:3346:a79b with SMTP id jw10-20020a05690c74ca00b0061b3346a79bmr4660867ywb.37.1714010256153;
        Wed, 24 Apr 2024 18:57:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714010256; cv=none;
        d=google.com; s=arc-20160816;
        b=zlKOijkhpD5m6uZh+ZhCSfslv20spKiMxIZVU3LijAnXvYA5GXWf56L2gN/4B93If2
         TIR+KHyZDpMXcK/j9a30ZBmnpxxoaTucKLgA9ayWqelCSHhRdBsUTA/C/UqnOkp69t1G
         akKVu79NKE+Cl/OBB9K4tqW6ufa31SlHul0dgGefjbdmkHf3TOAhC5N+k0Bv/MskvciF
         xFucWUu0V1OnJCQbQz1WNB7mmylQ4H/jYHOSVyFVpSDZhQVpnUELr0YosQ6B/Y992t9t
         JbzY4Pixn6lZyzWA2i62PNfIzaUyh+zHxfzrp96zO4lOLWdmyxUMvuSDmRe0NNfPSfFR
         7iEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y/IH+dwowyXx6zFMUjLoi6/J7l1DbgA6+TyLeUVYpow=;
        fh=JxvUJ7B3gVn0hxm7uGHYzy0doF5Ij+MP4qMo+DJi3Xk=;
        b=VVSvbDQmy5Php8yxZLllQjYIMT/kRbN2iuwJGZbPGK8WPDXpOV68EEkIzYNrhTS9KM
         QWneqD7nyzmYjOUSR+hnfM9J95iod2+S2yWmG/qYlQzuLyLPk+OQ/A86RSQAdlZ30QTJ
         wSYLJbTXKDluc4z30h8ZqYW8MbU9Hur/aXYeyn/InH7wYjFa4H7mH2YeS1rOxQmqEMko
         gXS95WYY4VEu82j+xc+nLH9sbezGkY0ly0AXmJjBOVakbgKUVf5JzbjkSdmzezMh2Fjn
         GgJZirgmI7Ehvrn3XcSkd0mYE1sVHihaSApK9L4ujFab44jh8DAOD2mrtS+lxzFw6dEP
         Px2w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="i/VqEWwE";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by mx.google.com with ESMTPS id u27-20020a81b61b000000b0061ae125a39dsi8236446ywh.45.2024.04.24.18.57.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Apr 2024 18:57:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43P0hpPi011500;
	Thu, 25 Apr 2024 01:57:16 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xm5ausg4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 25 Apr 2024 01:57:15 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 43P0Sks8025252;
	Thu, 25 Apr 2024 01:57:15 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3xm45fyh23-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 25 Apr 2024 01:57:14 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43P1vCuP009586;
	Thu, 25 Apr 2024 01:57:13 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 3xm45fyh1b-3;
	Thu, 25 Apr 2024 01:57:13 +0000
From: "'Martin K. Petersen' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Takashi Sakamoto <o-takashi@sakamocchi.jp>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
        Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
        "Juergen E. Fischer" <fischer@norbit.de>,
        Xiang Chen <chenxiang66@hisilicon.com>,
        HighPoint Linux Team <linux@highpoint-tech.com>,
        Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie <michael.christie@oracle.com>,
        John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
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
        usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: convert SCSI to atomic queue limits, part 1 (v3)
Date: Wed, 24 Apr 2024 21:57:02 -0400
Message-ID: <171362345502.571343.9746199181827642774.b4-ty@oracle.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240409143748.980206-1-hch@lst.de>
References: <20240409143748.980206-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-25_01,2024-04-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=999
 mlxscore=0 phishscore=0 spamscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404250012
X-Proofpoint-ORIG-GUID: USRSK6KOfQ5vH9L6gr8AM_aaScaBYiB0
X-Proofpoint-GUID: USRSK6KOfQ5vH9L6gr8AM_aaScaBYiB0
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b="i/VqEWwE";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
X-Original-From: "Martin K. Petersen" <martin.petersen@oracle.com>
Reply-To: "Martin K. Petersen" <martin.petersen@oracle.com>
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

On Tue, 09 Apr 2024 16:37:25 +0200, Christoph Hellwig wrote:

> this series converts the SCSI midlayer and LLDDs to use atomic queue limits
> API.  It is pretty straight forward, except for the mpt3mr driver which
> does really weird and probably already broken things by setting limits
> from unlocked device iteration callbacks.
> 
> I will probably defer the (more complicated) ULD changes to the next
> merge window as they would heavily conflict with Damien's zone write
> plugging series.  With that the series could go in through the SCSI
> tree if Jens' ACKs the core block layer bits.
> 
> [...]

Applied to 6.10/scsi-queue, thanks!

[01/23] block: add a helper to cancel atomic queue limit updates
        https://git.kernel.org/mkp/scsi/c/293066264fb4
[02/23] bsg: pass queue_limits to bsg_setup_queue
        https://git.kernel.org/mkp/scsi/c/4373d2ecca7f
[03/23] mpi3mr: pass queue_limits to bsg_setup_queue
        https://git.kernel.org/mkp/scsi/c/9042fb6d2c08
[04/23] scsi: initialize scsi midlayer limits before allocating the queue
        https://git.kernel.org/mkp/scsi/c/afd53a3d8528
[05/23] scsi_transport_fc: add a max_bsg_segments field to struct fc_function_template
        https://git.kernel.org/mkp/scsi/c/7eaae991c30d
[06/23] scsi: add a no_highmem flag to struct Scsi_Host
        https://git.kernel.org/mkp/scsi/c/6248d7f7714f
[07/23] scsi: add a dma_alignment field to the host and host template
        https://git.kernel.org/mkp/scsi/c/5b7dfbeff92a
[08/23] ufs-exynos: move setting the the dma alignment to the init method
        https://git.kernel.org/mkp/scsi/c/67144d3c58b4
[09/23] scsi: use the atomic queue limits API in scsi_add_lun
        https://git.kernel.org/mkp/scsi/c/693a1e8cbe12
[10/23] scsi: add a device_configure method to the host template
        https://git.kernel.org/mkp/scsi/c/b7eefcf11f3f
[11/23] megaraid_sas: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/b57089d32c2c
[12/23] mpt3sas: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/8c9289e66be6
[13/23] sbp2: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/c1f99322fc84
[14/23] hptiop: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/f65eb761f811
[15/23] ipr: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/c8bc8392b2bc
[16/23] pmcraid: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/9ca2dc2f0701
[17/23] usb-storage: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/70a7949335e5
[18/23] sata_nv: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/3cfedd59cd55
[19/23] pata_macio: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/a92041bd5f15
[20/23] libata: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/a25a9c85d17f
[21/23] mpi3mr: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/310887f688f7
[21/23] mpi3mr: switch to using ->device_configure
        https://git.kernel.org/mkp/scsi/c/30efd3823f2c
[23/23] block: remove now unused queue limits helpers
        https://git.kernel.org/mkp/scsi/c/ec84ca4025c0

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/171362345502.571343.9746199181827642774.b4-ty%40oracle.com.
