Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZWJXKYAMGQEHWDIUVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F094898872
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 15:02:32 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6ecf84f7cb3sf55223b3a.0
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 06:02:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712235750; cv=pass;
        d=google.com; s=arc-20160816;
        b=cKU/mLcZxIDeX/ChtIX/kc8p1UL5zGecqDxBb83n0GyuX9MIIQmMEajkb00GSrJjRV
         kXG0bjDduTK2zXWz3UPuToeqG4L73xCx+I4I/kbpqmAYTdJAz5hPHzEnxbnzMTtVtq+7
         2MfDTr9Thtcn5cVlLVc+csp3nCxlZbo8roCFM/cfxAZ2o4soF92vyppKw/fGBGdbLVfo
         x8R/Thc2fy4G4gP+kHV9waPt+S4EvlgoG1TYY02ilT0De1mRhE0BEUDMkcWlnTA4EuTj
         QbQOHmzcdCMl2zdHWt+AYVEV1iC7CVGNgnRpdfz8HAfe7D6cJZHqqwGCorqRpq111Eaf
         QV9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a0Of/fEcdUybZ9+BJjTCh3ppN+f9j8onXyXmfJbDGZA=;
        fh=Jg+qoKhFfJh+C7H7v0m9cSLLbePoCKGjYfmikj7VzWM=;
        b=Xy/4Z5dksrKrNDEXd8CV1WTrvwriHKA4U3/26VUae+CB7w17EE3BpOrugKYQF+H41o
         1jVVkFZetCoujLFnJbLgWfExiwxl8WiAOzSd2D79kDjrozzSHIkG/Cf1ilENzf4eDTOB
         iKAucx3OwEDGZleO/pWwL101P2iKsD+AGSNCbTEwY25edC2/8rx7DtJX7dy40wlOFLy+
         DDhmk9q21LGgA2cqU/M8melTaB6p9nDpdcJcTDSnDr4SevYTTKW3hPoWoySFwFJ93WSN
         m97KSz8cyHaeLHzoyhXKiu1ZDBcWD4+Rs9qHbH240sc31D96rjYkYwylFxQ4pxYyzP9N
         FLKQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=wRPZ06sw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712235750; x=1712840550; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a0Of/fEcdUybZ9+BJjTCh3ppN+f9j8onXyXmfJbDGZA=;
        b=Xu06qLPvtxPBz2aGlvrVGvvMdS+6MW2GVSEgKvQyYSczqLFxqfwE7OeD4BRjAOjBIj
         RXIETL0/NtfKg4o7tVd7az+ZPwY5sG6hAbCOp/CX+i0it4WNIFaEcrtwBpGx9SxSdEem
         XVc+rhvrU6Uq2H+crQXMhHtecvobdJcS5Ndvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712235750; x=1712840550;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a0Of/fEcdUybZ9+BJjTCh3ppN+f9j8onXyXmfJbDGZA=;
        b=eKdUGOon6micuWIeSZgKhyI/FX14/F8lUSLl+dMAR3ku+udiOyRLP8kL9JTNQHDqfZ
         wFEAbncfcLHXKoqMLQf7CFWztEaNv6urqU02C30RLImeydBrKVnks4LNRO6/nLfd08sv
         fBw7a3Med8INJc7MG4KVcIjqIBUDxo1M2N1ulID9sESnezJimUAH1jq2otruvDgguUtZ
         Fx04oseyy3EMrKFjum04IsLnzdsDL3SND0VaOTvqwdmPm382avGehI/fCrLzP1U0tX62
         GKce42nZ0LPxEfiAl2VfuCXVnaWSH5dmNZOOnpWz5YlNo80JzKbveYeMQBQ+HBGMQlka
         dJDw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUacL5y684+PH/AW/UGtOs6OBsX2LskZhb3GEbTgDRKfwP+TmjZGTetHZx4N7XBcLapBT2U3gxIsQfCScyPMkFIUk16iGqEtlqC
X-Gm-Message-State: AOJu0YyJg+zYgD1YKifCTuMOS4SYDN/mi7e3EzOhfhPiQrQhUT4XOgA8
	vA9vWQhzG4rv664XHZLRGX5rJAg9Wq1uzTicisSkJqpaO7vjRDXUup9+0dfE0SQ=
X-Google-Smtp-Source: AGHT+IELMw/zX+TMuYo8wpifB2bB3BsIncu3VpCutJK9cuw7vXpeHKU7er5eGfvJEDFqevF9JvTibQ==
X-Received: by 2002:a05:6a00:1d1f:b0:6ea:8a2c:96fa with SMTP id a31-20020a056a001d1f00b006ea8a2c96famr2630270pfx.23.1712235750582;
        Thu, 04 Apr 2024 06:02:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:2e9a:b0:6ea:a064:53cc with SMTP id
 fd26-20020a056a002e9a00b006eaa06453ccls35413pfb.2.-pod-prod-04-us; Thu, 04
 Apr 2024 06:02:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU9quAkX257HVT1wJJjaixykqHP/Eu/qQk988QORv7APiXUn/9xG/Tq2l9mAPoLtgbo6UVdkmJYDRULLm9zUsEvEqtROa1FghJ0gjlqFaUVbJag28U=
X-Received: by 2002:a05:6a20:9c8d:b0:1a3:959f:a428 with SMTP id mj13-20020a056a209c8d00b001a3959fa428mr2152909pzb.52.1712235749385;
        Thu, 04 Apr 2024 06:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712235749; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8rpM1+PvqRKXTEjwqVVfl6c53KHEbrDihz1+tHl3Z/jFvMUPW0WEUo2xe+R1F8DrB
         PNZlazD9ll1VQtUkqXezTN+oe43zdCvm13mxFu+jcfKbJVdVukJZoAIO7RMGYPS4jnkw
         0eRBumnZK85oFz219AS4Um3m7P4KD3r3Y1NK7N1ulDF7YbJeCawvH2z9kcwbp5Z0orFU
         t9EtKpPJJeZn/Ttk4AGlMe1oiaP9xlUh9+a5LK+dGA0cVVbutmvul3B8VxqqF6wxL3IR
         1+pk/GdPtOmmltwsv6aC86oV9T5D//qsk+sQbKREWt/7PZ+7ETgwB0MEsX07fRsH6h23
         EBfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8dXSBbyv64569+ES4aWgPCJ7W59Pxi1C6DdDGWZnIOY=;
        fh=g0s1ljxghhsrYvMxjWchNxQ116E+IuMhBEFDId3PuK8=;
        b=WNnLBIyy+Y7HS0PJsWTE5nobmNFiL14jTbl7mXlDLG+ZEdtd5lZHugZraj3D7096cg
         ctJwEXWs2I8XzshLGpZmb42SYO4erScjYD6+r08RJcF64qA0DhZNrRgnk/NSzlERb/WR
         fX1z44zLVPnGRLq1msC8oOvrcpsTowXR9XZ7T3rEQFb79aEdA9WXU3QKPRCuLMLl3n3D
         Vl07LS0wqxjBvgj5Tap2bKuPgKBDhpz9Roy0C8R8fsIgbXf6PjdAdcWfMTT+v+oBffKr
         aAvLfdtd3qkbbZAZIx0EPEkGRxg3nOFF4cl5Ks8py+sqDivdyggXqHqWOcXusU7XwdnK
         MjcQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=wRPZ06sw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id lp18-20020a056a003d5200b006ea89b79d7fsi15508970pfb.158.2024.04.04.06.02.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 06:02:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 692E1CE3144;
	Thu,  4 Apr 2024 13:02:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD9BC43390;
	Thu,  4 Apr 2024 13:02:24 +0000 (UTC)
Date: Thu, 4 Apr 2024 15:02:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
Message-ID: <2024040412-reacquire-wrangle-3e1e@gregkh>
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-8-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240402130645.653507-8-hch@lst.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=wRPZ06sw;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Apr 02, 2024 at 03:06:29PM +0200, Christoph Hellwig wrote:
> Get drivers out of the business of having to call the block layer
> dma alignment limits helpers themselves.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Reviewed-by: John Garry <john.g.garry@oracle.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/firewire/sbp2.c           |  6 ------
>  drivers/message/fusion/mptfc.c    |  1 +
>  drivers/message/fusion/mptsas.c   |  1 +
>  drivers/message/fusion/mptscsih.c |  2 --
>  drivers/message/fusion/mptspi.c   |  1 +
>  drivers/scsi/hosts.c              |  6 ++++++
>  drivers/scsi/iscsi_tcp.c          |  2 +-
>  drivers/scsi/qla2xxx/qla_os.c     |  6 +++---
>  drivers/scsi/scsi_lib.c           | 11 ++---------
>  drivers/staging/rts5208/rtsx.c    | 24 ++++++++++++------------
>  drivers/usb/image/microtek.c      |  8 +-------
>  drivers/usb/storage/scsiglue.c    | 11 +++++------
>  drivers/usb/storage/uas.c         | 13 ++++++-------
>  include/scsi/scsi_host.h          |  3 +++
>  14 files changed, 42 insertions(+), 53 deletions(-)
> 

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024040412-reacquire-wrangle-3e1e%40gregkh.
