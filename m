Return-Path: <usb-storage+bncBDUNBGN3R4KRBKXTSOYAMGQETZYFW2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E4E88F6E1
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 06:01:31 +0100 (CET)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-4147e733d20sf2632225e9.1
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 22:01:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711602091; cv=pass;
        d=google.com; s=arc-20160816;
        b=ei5Y1Xjq1KeEKDDsm97FyVz/bWYhk/lWvfG2+fgNcU4Yqr0CM2zDphLPDrkKkZ+I58
         MrmHsCpocme1vbF9W2Lcf3R1Zp/yoQCjJKo+Kp2osprfNrlytXjrSDGm1aoK4YADjEsA
         iKQqgnFrloyBczxIsCT37K0vNNjggc3GiV0pzsfwGJ9IujANY+86kGCoYtGIQHgsH9ms
         dpBAJYBKjn1yg0si80E+al4wKJK9rrTvzX+W4uxujJ0CFVXY5eSXcFyO6Hb3a/oDULLD
         f2Y9UmPOWUuIOj8IG0XJxBsht8sO9dUIz6iPjkE40fpKEvuqAR8wa8dzSeDfx5RfZFjk
         5tiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mxObiHFGoiFryxnvWgISV2ozSkzo/jw958C3rss1Wlc=;
        fh=PGlcLaJdG/qEvz3BQSIcxGS5743qxYAPPhbcwM688mQ=;
        b=CjBtk26tIocxonGKq9GnKoIVNtcHeLzKkLiq5Zhd24AHcZ5sRd4cEbipwoghHL/pk0
         VD8OxpuiBhSzJ9cqZNgbL/5NWf/3Js5b6rOYDQOqXpGBGHwNQ2Urg+zk3ii2ooIjLvN8
         g8Q3qEmpo67lFFo26YWlyUEVh8wGqHjcW1GiWROnFlP13uhz62xwpx3GrhI5PXtD+d/S
         6SR6lmZgBY9FoUpHsahjSWjWAjQYM9XN2c7VrwIEngW1ghpiTCfdqMerCPr+btCLOF1j
         cyIVNL9vB3/0rBADDLYPGY3tMPkKmL5GC/OCfeAvMFkQihGvfUzJ+RqM48xIkbkeD3oK
         zq9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711602091; x=1712206891; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mxObiHFGoiFryxnvWgISV2ozSkzo/jw958C3rss1Wlc=;
        b=lcYV87uYeSUrDqTQDD9d4S5Ev4gTygg762JhuV4iKLYFG38KyLZJX2aSYoI4dD1vj4
         v8PaCJH3Ny7QWB+bQp2KPD5UpiQ0OZWtZqQVItm04YKpYC0k0T8jmtnw56Dkq/by70Po
         Y4PMfBdUS41KxR5Cvk8BP4+9AuDbwHSnVS9aU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711602091; x=1712206891;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mxObiHFGoiFryxnvWgISV2ozSkzo/jw958C3rss1Wlc=;
        b=XoVDd+m7eWw+Rv6MHSklJvH6mMT82TdZK4KT832ZJ5Sh6tUKS5wvOzf+Mlel2xHvnp
         cThP2E9R4pu4Mf3BxkGVIR8RE3FpeOz5ukkkC2ySKhPUEhIOWnZ5vNwxY48q59JxA0z+
         6BQO9ovAyawQ8ASInKU25K7DqIaErYz8ux2vASzQEBk7zONpmr9GvJUxt5ih6a1odK7f
         DkwuO8cC4/TM//haeUcBuF7l158S5ffse/yqNUvHQynmUE8cyrCB3AyXAxOnZe+uvAnX
         Lfu2waKdHQqBetNvvKNHiE5rMKt42iIho/l790ZvWyJ4a8maxv1sHo+lnVdPg+Gxu5Fr
         SEuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUiheHnKXQGkqStYm2VDisFQnEHO2b0ec6UsGpsEwxghDwkFQC+3ywV7OjSImWI3KJA+Ii+5JxLkxrAv1OPzFLJ242OA7pgihL4
X-Gm-Message-State: AOJu0Yx97ZlTUf2Mf6D6+AU6/8fiI2bY6AOhbXO0lIy3YHCNFR69HXf3
	ifxNYMC04iU8c16FTGHI2AyNef1ObaUeR1cl+CIKK9n51XUYKJrlzanI5JU8LyA=
X-Google-Smtp-Source: AGHT+IFfa/O2H0FItBxi/GR/ocC7Ir5WxZsLOknAi8Jb2/7QfngwelMG6SZcEIYVUe6d3dg9115GSQ==
X-Received: by 2002:a05:600c:1386:b0:414:835:6ed2 with SMTP id u6-20020a05600c138600b0041408356ed2mr1521562wmf.35.1711602090502;
        Wed, 27 Mar 2024 22:01:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1d12:b0:414:aa7b:d009 with SMTP id
 l18-20020a05600c1d1200b00414aa7bd009ls244774wms.1.-pod-prod-07-eu; Wed, 27
 Mar 2024 22:01:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUepD37D1164vnmttFeqEwG6lrgg9GHUT5N6z4gqL8RczwgkO7XbkALCVj46pSMUkSz/z//f9OYhietOljdio5pXY9N2bSuf18dAxwIdVZjOKWfn3g=
X-Received: by 2002:a05:600c:1f95:b0:414:66d:db7f with SMTP id je21-20020a05600c1f9500b00414066ddb7fmr1572945wmb.10.1711602088442;
        Wed, 27 Mar 2024 22:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711602088; cv=none;
        d=google.com; s=arc-20160816;
        b=HbnjiQm/3Eue1QegN+Tq7/237k8qBhNwVQv3dtD8Rpm8Zrxch7H7u1kKCwTVWDlQ0k
         jeEJz1WqJhi3wSfiqbGKebV8hhPWYOzxgn7vzAbOMlIlL0QKXQoZBrpOFuTKhV/v7kDi
         svSAM74jVvbq4lEYrRLeFOKeOXQ7m4gJzGC8mNica13sIz435kJzEiqO1knDBo6g0G9x
         ACINx0xynSK4WsbdF1DVvQiSyi/kdpWjvUCSoHXyoQ/eE0IBZe2KFl/msK8KifO/fEoZ
         5Vm+8O/F0iusbCpCp9dud5y+7B7aVgsmVkjiQIO6MDoKjgqG1scrYwUOIV2R4CbLL7x5
         oe8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eJ9X3HUfdGcBrdf/PHkLxlRnKijmQfV5FPazwjvg3UU=;
        fh=O0spm9G4llVPbyHhJ041MDy14lImw6/CKpM6ogn4cVU=;
        b=vJe41PIvXjtZsCFcE1VMfbgUplnPvoX4NUShkAuCoX0bdByXFAK/jp7DCludD/EboP
         JGTj1RD9lfTCuJMbnTu5ZgZEUyqB8HbaQD3K0o3XsX9HmCoGeErBu3x/PcTSsZxgI2Hz
         tQVurAwkY/GLQ8zwr3x2tHtHSQTkIGZSu1PpRs9oJ2Q+HTSBduTMlU0RNFV98E5PXf7+
         zYymUaNajxyUxNLj3cxqDhef4X0IE02GESn213EqRZmAm4MpCdDnaILRY5oNrLi3fcF+
         HNqaW4smGZsqXPtSK/B5hWq423cibzRxjBm+yqqwHRePdFj65ohVeNKXxnYy1Bco6AaD
         uwGA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id o15-20020a05600c4fcf00b004146c88a373si1578178wmq.128.2024.03.27.22.01.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 22:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 5852C68B05; Thu, 28 Mar 2024 06:01:21 +0100 (CET)
Date: Thu, 28 Mar 2024 06:01:20 +0100
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
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
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
Message-ID: <20240328050120.GB14655@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-8-hch@lst.de> <1137e698-4376-4dc3-9bdf-886945787486@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1137e698-4376-4dc3-9bdf-886945787486@oracle.com>
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

On Wed, Mar 27, 2024 at 03:15:28PM +0000, John Garry wrote:
>>   	shost->max_cmd_len = SCSI_MAX_VARLEN_CDB_SIZE;
>> +	shost->dma_alignment = 0;
>>   
>
> nit: I am not sure that we really need to zero this, but it also seems 
> needless for max_channel also ...

In this case we need it (at least to keep the existing behavior), as
the SCSI mid layer sets a default alignment, and iSCSI claims to have
no alignment requirements at all.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240328050120.GB14655%40lst.de.
