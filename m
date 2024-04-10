Return-Path: <usb-storage+bncBDUNBGN3R4KRBQ5J3CYAMGQETVAVYLQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x246.google.com (mail-lj1-x246.google.com [IPv6:2a00:1450:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C4C89E8CC
	for <lists+usb-storage@lfdr.de>; Wed, 10 Apr 2024 06:25:41 +0200 (CEST)
Received: by mail-lj1-x246.google.com with SMTP id 38308e7fff4ca-2d8744ebae2sf41643921fa.1
        for <lists+usb-storage@lfdr.de>; Tue, 09 Apr 2024 21:25:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712723140; cv=pass;
        d=google.com; s=arc-20160816;
        b=yMgaD8TQeDThzidajYZi5dDaGIidXCeqSQTVDTTIK0EJceZAcJ/zXBgvLki7tw3ECx
         GVH6nA9MoXLnMgfP/FgCFlMU4QogxMdBZmU5PZtscBnxk6Qt+cigq2p6iD+zXRc9sWOZ
         w3YsKEWTKlIcya33KeAGBEmk4xOvc6Qal0PPPkEBGLUPuxO1LGj5C50nhFtFJb1TXj6E
         nQfruW6Z8NdgyWWiQyjS1O2F9meXbEKuYWT3t+AM4oBNBRDqI3OioxzLMazn0Khwy+VC
         BFGgWsGymYW1ErsYSFvog9LbUUx2YGU3VUIWrbh5hzlOTUsq3AVInwJMKvVGqRASkkO2
         v2fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5RYK1o9fT0FpwFzWsR+xjiNi9SNvGElqs7Ho+OYEl4s=;
        fh=0U1SGLXY7vNIHmFmvOQ9zWHEZ4dd/Nvs7S4ewzDg3tg=;
        b=VHkqcDjC0HHs+H5+j5mf0PguZ9Sdf/8I11lLedZNVKJl8G649Kh1hcbJNl1EX913DB
         ng/+X9kOiF4yeQNhssNWKmBTixdkUD2fLl0wXRTTqU67PwQZWco2kwmFazocrWTl+Aqt
         CgQK0Qf4lPQxf4s1sQcBMGBKPiNK0DPMZiAUmNkCljPx+ESb+JhbfBgUOZvq1WOK8gFN
         MlbKVn1VxRNhWDbrS5IRGRrvLcyG57ExF6P9eljpfckodkd9ZcNSkzjdmEPNd7pI7hxz
         3Yh2V9qdbMkK2Szmx6xDtMN63rH2U3TYACWmq75CWtSJFEpFtYiqC2DAdRiVWHQ31CKN
         0fEA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712723140; x=1713327940; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5RYK1o9fT0FpwFzWsR+xjiNi9SNvGElqs7Ho+OYEl4s=;
        b=Wk+FvraIwttawCf9LBGbhQLDu61oc02QAQIgKPFwPvg1b5knWL3ap0qwInnycvuFIe
         NBR+4cUc5fNmpqNtnnJ2Z57KGPPAVFEBP2fDCHDzn16VbvJedZh8lLBgGGLP7ogPUI64
         hKIIvghMtEgxnlLD6YkeFQu0QdZSVk76PYpWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712723140; x=1713327940;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RYK1o9fT0FpwFzWsR+xjiNi9SNvGElqs7Ho+OYEl4s=;
        b=W+vXd2kZNEBie+qMb6lfvh6Y0omZezWC+HQddvLHZ+SNfuB4jd/AAGEcmGZP1g0ttw
         wsIOdbufMW9FkVhXNlM6bYwAPx2uGLPlfH6DsttkeDu5TKzU4NeMxC3vpB1FW2dlN8xU
         zFC64Od1Fu0aazwz3B4b8DtkCWdwYIIROfEQg1J4iFMimpFujHrxZReu3yKTTqYPorzr
         AnYEZhvb3P9jdFYObDkiAr2RzEfl87q0bn4HLP2n+VnJfM2/ldXVNG7CGV/W1AlfO/bq
         1Zd/8Xwcv67TNYW29aria4oE9jMRaIQyKQv828qEGq6o1GPTkegGtmxuIMt5CWMokCKb
         ioyw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXi94fkM3EeZBo0qMrWWsNPGxb1k5oyazKHeUqFk6wYVO1Qt0CHfSR3zl16BHMuMOBAtokeclISTxnpw8tH08OyEAyo2qJE/cFd
X-Gm-Message-State: AOJu0YybOX1eLN/0XysCc4dxmcUKhyuuRBDNeMoWKxRMWjd7f6QdIfCr
	T0m/6TVJOhkR1G9HnqdVtRS1gt9n+mxyS2M5xuzSSzA289I4XALUbhG7up7QzzM=
X-Google-Smtp-Source: AGHT+IFRS6AYJ7I4WNSNibl3CELmZSn8Ww0yztgqCRdvuIy9SD2kPe5vobIp7Y3CibpRQNJ5yCiO/A==
X-Received: by 2002:a05:651c:212a:b0:2d4:7003:fc6c with SMTP id a42-20020a05651c212a00b002d47003fc6cmr1202099ljq.10.1712723140331;
        Tue, 09 Apr 2024 21:25:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:1028:b0:2d8:243b:ec9b with SMTP id
 w8-20020a05651c102800b002d8243bec9bls2359350ljm.2.-pod-prod-04-eu; Tue, 09
 Apr 2024 21:25:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX+Ol2DtlKsIbEZucU2jSYD/Xzf7aUFyrewzRm4BQrGFwR3aa1+U7u8C6W5x+qGCcHjhdcSNzYIWbpbvDvHzlsz6cUDHO5xY1O6O9JTj9KnOcCtUnw=
X-Received: by 2002:a05:651c:154b:b0:2d8:5af9:9097 with SMTP id y11-20020a05651c154b00b002d85af99097mr1032250ljp.42.1712723137186;
        Tue, 09 Apr 2024 21:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712723137; cv=none;
        d=google.com; s=arc-20160816;
        b=UXpUvJJcu1QmGRZbpBDmzj5sPPumN+T3tjkz1uwAxd9l1EtApM6psUxtLh35hd929i
         i9iS3C39NcNnvM7a3Er9ejExTxmNuR6rGZ3ONGIYIFQtr0gkYGIL5ebMzHi0NXs7/o0u
         +Mrp4BwoEXJ1iQQESt/bQ2G0M7A0JJJoERLIhsOiOH9o2+1Rn3AdPZPdxgt0VS0UsUQY
         js27szSBUURDUF2GboOsudvSwNHyWCL8KFAsohpjAod/aEsGDqkwoaw9lJQUkQn3lA+d
         VHBeAX6LwJNJCuhaEWMCIaIhoh3HT9TM9L0ECBLriG/MJjfTTbpi91NoRcqtqmVGUv9i
         M0GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=JZ//BpHzOk7JHz0Kiqa22lutJNlcoEB7L5bXhmS737c=;
        fh=rd5ahIBUMQv3D4FHuPTZMHGnyOCsIG33eFX8tisiDg0=;
        b=GS56NFkgrr93/RMP/rrJt6ywBctc7L1Rloqwiozeblg6m86yI53ncCfS5Iz8VgI5Tw
         dF2EliXvyLXHcsoLgSNlk0RDwnoxFr2QCzKLTxIILWL2nUWvFIBB/oE/hFws0AJu+GHa
         fRmiSo/ShvbPEtLwPFvE08M1kViSwKJ/HU1+c2voNYmBn3+5iRWPQytP6kvoYN+zCQ+c
         o/cvLeE7MvjvCPFgaezpEjwG6GbNU+iVoQiPK71UhFlr9qZYUNd3qjSWn5s7O0AMyqAN
         HqCy946Ez6DbyOPpwpr6+elCwYutwxknskyE6aZg+cYYg4CFuY1jumNjwkDJVXQC1T3n
         7/hw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id t1-20020adfe441000000b0033e7f56426esi6368782wrm.271.2024.04.09.21.25.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Apr 2024 21:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id EF67068B05; Wed, 10 Apr 2024 06:25:32 +0200 (CEST)
Date: Wed, 10 Apr 2024 06:25:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
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
	"GR-QLogic-Storage-Upstream@marvell.com" <GR-QLogic-Storage-Upstream@marvell.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <Avri.Altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	"linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
	"linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>,
	"linux1394-devel@lists.sourceforge.net" <linux1394-devel@lists.sourceforge.net>,
	"MPT-FusionLinux.pdl@broadcom.com" <MPT-FusionLinux.pdl@broadcom.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"megaraidlinux.pdl@broadcom.com" <megaraidlinux.pdl@broadcom.com>,
	"mpi3mr-linuxdrv.pdl@broadcom.com" <mpi3mr-linuxdrv.pdl@broadcom.com>,
	"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	Hannes Reinecke <hare@suse.de>
Subject: [usb-storage] Re: [PATCH 21/23] mpi3mr: switch to using ->device_configure
Message-ID: <20240410042532.GA2457@lst.de>
References: <20240409143748.980206-1-hch@lst.de> <20240409143748.980206-22-hch@lst.de> <1e41a8df-2046-45cf-8ab7-caa5839d1718@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1e41a8df-2046-45cf-8ab7-caa5839d1718@wdc.com>
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

On Tue, Apr 09, 2024 at 03:34:13PM +0000, Johannes Thumshirn wrote:
> Why did you split this into two functions, with the innermost function=20
> being only called once?
>=20
> While it's slightly less of a mess to read this would be fully=20
> sufficient and IMHO more readable (please excuse the whitespace damage):

Because having a helper for a specific type of device just simply
is good code struture.  It might not matter too much now, but as
soon as something else gets added your version turns into a mess
quickly.

But it turns out the rebase caused a real mess in this patch as it
marks a function static that now gets used outside the f=D1=96le in the
scsi tree, and has a weird rename in not actually visible characters,
so I'm resending it.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20240410042532.GA2457%40lst.de.
