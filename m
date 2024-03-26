Return-Path: <usb-storage+bncBAABBJXQROYAMGQEAXQ5EGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BAD88C93F
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 17:30:32 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-42f3069a45dsf122421771cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 09:30:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711470631; cv=pass;
        d=google.com; s=arc-20160816;
        b=bp+R6AwAmR/CVH9L63FkiWb4KovnNQ2biOFPyxcxCRrw0GNSGmwkTFPqGupxZkKFAB
         Ncux3zo2qxWccYMvWlZxwIDe3NC9nvBAxYxcGVwsG2RnktoGdT8dEHEoBAC+IY71xvua
         5tIWI4GP0iJ2ZN9SRBOKOr548qoryyaTQZkgvYo9Vz+KnqKd2V7pMNjUWQztgwfqBSS2
         ONNbOrlCIFnETBoRr/HXpVKg5K27E94v7l7a3lJp/FPHeUHvQ4R1OUqQqmSm07hQHSZd
         NyPTKmppOd07uUiiz3t7VAkL5zcl4gL1Y7G7fGRJugf8qdRZs/s5C7nLAq+i18n3fImp
         dwpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:feedback-id:sender:dkim-signature;
        bh=wdsEqTwAc/1j7WTYOGK4eq5i40IEWbRnjpe+oQxAm10=;
        fh=Mudq16M5RzyYzx62MzFg0Hy1s2/vfS7WaxQDYTArB2M=;
        b=sRVbGlHXoqzQLL58ESJS6LevimZcb+7VCk5hu3IARf/fZ6CsELDNGM20/r9xpl1961
         Qdvxn6UlqCNwtIaKSld+JlVySCG42X6qBY/NKR0A8AEMmVB9L7DFM+Xpa1IQHnuWmqnv
         FsKwO/k2Dtow65Rt61U/GwNtiYdfVpVLPluJcVdS2gNrBshyN1jzNpS5AmfnabByLmEg
         J691Dop6EUCU48v9s+VWWUXg/sxU89AIte9w6p4aEvw3jqihK3HJNhxK3HvB2lANz+lN
         n/gM0WNP5QrPjxf5VpfehVwUpErAAs5k+dSeuxFS/9rhV/+dVU/miGS984P3Nr1lK208
         RfiQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@sakamocchi.jp header.s=fm2 header.b=IYcHZRbd;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=bY6T7bCu;
       spf=pass (google.com: domain of o-takashi@sakamocchi.jp designates 64.147.123.139 as permitted sender) smtp.mailfrom=o-takashi@sakamocchi.jp;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sakamocchi.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711470631; x=1712075431; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:mail-followup-to:message-id:subject:cc:to:from:date
         :feedback-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wdsEqTwAc/1j7WTYOGK4eq5i40IEWbRnjpe+oQxAm10=;
        b=dsnQWgYSzSCjYG+NuGB5uYjqUs09UFPQXT+AD0Xm+JNiAb/DCdKaaeOptTzRwuyPl1
         hVNXUFPgl71V9V/vDR2VGAsotfvofqwgeB4i7Z8i9AyYv1IaeCaEA/TNtbm6RfHp9uy6
         iQr2NIzlX4fAv7rpQPWOuZopYLiU8JlP8bxI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711470631; x=1712075431;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:mail-followup-to:message-id:subject:cc:to:from:date
         :feedback-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wdsEqTwAc/1j7WTYOGK4eq5i40IEWbRnjpe+oQxAm10=;
        b=KRX8shwFYxpWSVFgE3qL5uUSA4BZn+RS+5pFnk3eKVecqbDdnDHUdqx6n0OJb2jNhq
         jYiasaY8TTkavaiEzUMBgJ8XeRtoxw5AG/YFZOn4Z1gtIf5JZaHHRS6t3CLQIXrXxC2a
         liyboK3lJmF/wty2AvByn043zAAIQNKehDnvNzwWCSSvPNAFUbCyzG/5nq2xmWQOvJUJ
         EdddTVpjBIgAX4wHX0sYy9KbvYCcfC+Qn8vWfVy2GHUZd06kbEYvqz08HW574ZZnifuM
         3msJw8dQK9xYM1KDbFJuaVad4TlBHhWUK0h8qep2mi7al4l4gbqXHfeSKGxqC8ZcKCNg
         NJ0A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXnl4OVsv8bpuq57JZ6DJBxmZ64nHjuJ8U8M/BdYySnCTAW7iRDe/N7p0WYb1Nh4qsTZF9SFDFF6GDCvnCjXZpE0vF3FuEd2DDU
X-Gm-Message-State: AOJu0YwIC9r/fwZhCE7E0hKM1k/z3w/dbkVMX5UBp6VWMnY0TevDscxe
	3s2rPunJuC50vVkv9rYBxuvJ3cEbLm12IIsCshNYHX6qpzlwLfYf8o4WvJENFjk=
X-Google-Smtp-Source: AGHT+IE7GRhxDqRiApv2ewfVzK/t8lZ/6MCpnotT9FCI4u7N8PGtdJdqWoQ96b+SuBXQJoBFTKipeQ==
X-Received: by 2002:ac8:5793:0:b0:431:2ad6:b5ad with SMTP id v19-20020ac85793000000b004312ad6b5admr3189756qta.25.1711470630861;
        Tue, 26 Mar 2024 09:30:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1210:b0:42f:601:1562 with SMTP id
 y16-20020a05622a121000b0042f06011562ls2337234qtx.2.-pod-prod-04-us; Tue, 26
 Mar 2024 09:30:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV4QAV13cqEd2vPusa10ZwASWDtTv6Pqnw+o8hJOGwDQcdD3Ce9jsrIVqKieNfyPk7y2r8eHzPWLHtgMXaP8EB7RSMueFz/40f6ws0yxA2PpQErn7A=
X-Received: by 2002:a05:620a:4116:b0:78a:63e6:d05e with SMTP id j22-20020a05620a411600b0078a63e6d05emr67433qko.14.1711470630453;
        Tue, 26 Mar 2024 09:30:30 -0700 (PDT)
Received: by 2002:a05:620a:2910:b0:78a:4068:6a01 with SMTP id af79cd13be357-78a60ac0e9fms85a;
        Tue, 26 Mar 2024 02:31:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVdZ/nvQADkiziYbJUmpPYgQEe14/8S0Ih0g7zw+GVvgdWEBh7ITdQV2TctsbIDPP3ispVz30YrqBJGU8y65NYBURyD1ABAVO0AWaLieu1/FaO4mNo=
X-Received: by 2002:ad4:596c:0:b0:690:b85a:7030 with SMTP id eq12-20020ad4596c000000b00690b85a7030mr984635qvb.1.1711445465214;
        Tue, 26 Mar 2024 02:31:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711445465; cv=none;
        d=google.com; s=arc-20160816;
        b=fSy/idgoqxRDPHDyLm4vnNwzA/lhOSVKD26rEG4D3LfgOSgL1UYu/rZeiDswsSRfu3
         dlGIJu502f03YtYDJQNR9FiCVQmIdNo7fJcheLGbLQykFyWlN+r4zo3N666ie2RQqlFR
         pu2ALEICmmuwXU0glSp0LCZucUS2TAi55G7J7iCJPk39HFCl8VeynRAIfJyjozFZGtek
         kyQn4qQPnKWASQIK0xFLMdqTFwW+IlK38oESyBUEpdbqrSxNE5DUQHZZUWuvtI/HkhX4
         +TmS5rfSBZCyyQIIOr83tGtkg+QVUaNHiv7R9cF30Nl1uC5yj3TdGPXHvqjdDNPkScTX
         yrmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:feedback-id
         :dkim-signature:dkim-signature;
        bh=JsIYIdm4lfmTSisZZ/DXBUcj1A+T+HA65a7uJi4J4Ag=;
        fh=R0UVrN4aitAYsIypk7xe9nwoCrM4gJrmtlSOlxl+0N4=;
        b=C7/hbjDS8I0XZ+MG9eAFnVVXN06caykh5HXhoVhzueWEgRd/u0PIh0J4lW0QWPZSvg
         pj76cTHIEKmDBkBpMacyMT2bZEWSeNh36ZAlv8gGuQcLUhHblEZZRwfWVdz8YCRTYKUH
         8NwiUv5KBNYXYXrG8OgYMRsSwaE0VCamf32ZRX6fv6gE74h7OWqTuiuP2E1/VA7rYMix
         vnq7KMcsRMyOCbnwqHmisfx7DKozyXbf56fYiQDI5YJc2KhPJ8oTVJUdjuFzX5zwb+8/
         Qnfc4DBw7eLJRMeCDEELp7P7NyM5uGTaDmxsM0gTbSbJm3bj7Klo/uyTs1HgQGYCBvBN
         oyFA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@sakamocchi.jp header.s=fm2 header.b=IYcHZRbd;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=bY6T7bCu;
       spf=pass (google.com: domain of o-takashi@sakamocchi.jp designates 64.147.123.139 as permitted sender) smtp.mailfrom=o-takashi@sakamocchi.jp;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sakamocchi.jp
Received: from wflow4-smtp.messagingengine.com (wflow4-smtp.messagingengine.com. [64.147.123.139])
        by mx.google.com with ESMTPS id p7-20020a05621421e700b006968e9e79cesi3794316qvj.474.2024.03.26.02.31.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 02:31:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of o-takashi@sakamocchi.jp designates 64.147.123.139 as permitted sender) client-ip=64.147.123.139;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailflow.west.internal (Postfix) with ESMTP id 671F62CC0247;
	Tue, 26 Mar 2024 05:31:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Tue, 26 Mar 2024 05:31:04 -0400
X-ME-Sender: <xms:0pUCZuTCEK_UZ1FIa04HDNbw09J1SP-yLjTPmiKJ7fcM9-9PLm5N5Q>
    <xme:0pUCZjzvYUNp_6AUn1GhXmXL5M4uvpS0meVqI5xxToMHvEoigMtmYJ7j1_wA3I0Sp
    HvgeEyM6lGYvNXn320>
X-ME-Received: <xmr:0pUCZr0cUziTQhpAkvv_eqG_J-dYqPzZf0V1SUH3f-nNStBcAUp6EA4jUGzRJEBOwGQMJiJimKe5XTYumtIHgMhG_YMg7hmSTdk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddufedgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
    shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
    hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
    ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:0pUCZqB2VFAGd4lCaBCxrik37ACK9ghaOvrLJuoQkMNILffyy2RCbg>
    <xmx:0pUCZngGTm6NYZ66zzHGXj6ZOAhF1W15NGgU_1lQ7VVTb5-DzgKjDw>
    <xmx:0pUCZmotj5j7QD4RQRHOqylb2bqFpvVFfCyUaWvVyWMamP166ANVEA>
    <xmx:0pUCZqgjGdSeR-bNNxKjy_SJixp8QgiXMk2VyLNValuMMfRrKA7OQA>
    <xmx:05UCZshvx_JveHrwhZignnPkPsX9dTUPRS4MjCrtEER4_LSUV7Gv69QHUMm5xSVi>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 Mar 2024 05:30:48 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:30:45 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,	Niklas Cassel <cassel@kernel.org>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,	Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>,	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 13/23] sbp2: switch to using ->device_configure
Message-ID: <20240326093045.GA139274@workstation.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,	Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,	Niklas Cassel <cassel@kernel.org>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,	Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>,	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-14-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240324235448.2039074-14-hch@lst.de>
X-Original-Sender: o-takashi@sakamocchi.jp
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@sakamocchi.jp header.s=fm2 header.b=IYcHZRbd;       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b=bY6T7bCu;       spf=pass
 (google.com: domain of o-takashi@sakamocchi.jp designates 64.147.123.139 as
 permitted sender) smtp.mailfrom=o-takashi@sakamocchi.jp;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sakamocchi.jp
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Mon, Mar 25, 2024 at 07:54:38AM +0800, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/firewire/sbp2.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

I'm not good at any kind of storage protocol, thus execute me not to
review it. My concern is which subsystem provides the change to mainline.
I don't mind it is your subsystem.


Thanks

Takashi Sakamoto

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240326093045.GA139274%40workstation.local.
