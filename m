Return-Path: <usb-storage+bncBDUNBGN3R4KRBE6NRGYAMGQEZZFCUJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id B71BC88BA32
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 07:09:24 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-41489c04f8csf6556415e9.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 23:09:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711433364; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3sXdu/7JFKOLDLuwRvTeIs8VRwLXLiiXv4SLF+gJFWGpOHI3UA1z1d2ctdS+O+Dho
         ek23Grrw7fs1hiaaNZ63dHnShnV4i/hc2o/853pUsY/bI4RYrDenRr99VatQ5XMg3qE6
         jo8ahEQra9bfz+mUcTCCK6W6eVXjQf1ynhywCLTqBMnwDBliCF9rIBb020joKJVXQgFq
         va7YUThsVIY/KwTnSuX5bXHTXQ93xYVsjp+lrsShH9cNdrH5HHqrq5VBlMqVKNjM6M85
         dF+QLPgG3rujpQaAFl/9MiGTakyDA+mq6QceRbOTUdjqE2nZfm5oymHaSxoZsZ2cLcTJ
         dYbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/5yGKfTo3caon6Jyo3fHBsuIC5bL/LgvLrABij76Wt0=;
        fh=vO5MSKxUACD1ZarGWtFMz0+aOXJxgVOWhQFI168vd1c=;
        b=RV51mAdD8e9qzBchA7cu6SeHgVF5MWSpAT514yd3Ke1aWtZgkiA9yP9OGS06+yBQHs
         1IZIjB2/xoGS4l6sbstRvwznDMVuzh9MDfSz+bJZDVTeqUfUCLT77T8AczxRHZB+QmzL
         Ck+apmlaktKA0yOETZMuka4bPW5kIc+GcFKzpsdLfdJXSGj+f6PrcYrYikD64WQbd+th
         nAIHD036MRRDsX4jPR7CP6nLXLHqZrWNJGEV0wjR0o+IRH2EbQGTsKlJHJH5SK9tKVWl
         t7fGsYSg5gtqvZOtMPuAuFl7b1Kq1VB3d6GKzqAFu4U6ahznl8WyYkBYwbWDbGX3PlVT
         urVQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711433364; x=1712038164; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/5yGKfTo3caon6Jyo3fHBsuIC5bL/LgvLrABij76Wt0=;
        b=Vd+5K41Q2a+5mi/qX5BOnzjaQzHrn+n0BD4mhrBswsUa1pFcClDwfeaYjrNZ1a6c43
         AdOzuQmPRZLVpcQ0/yW/ktKeRnyVIZ7wAULRvSiuAy6BLFDRnfylj+NCtYpQXYIhRfo3
         GMY8GCogKIcTn6ItNcgKKOi3IntvUsBJCYXZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711433364; x=1712038164;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/5yGKfTo3caon6Jyo3fHBsuIC5bL/LgvLrABij76Wt0=;
        b=BR8WQTqAO+XQlX2QQpnMnl1HKaX2EkX+c0TX9xEZN2z0/0ksif+3jrM5Yqxfa0QdXc
         c3uRzvkm4QFVptn58a1bCP5egPjsY19q3ahSUNDzOk/R+4crBKae86SNMRx0ibxhU0wP
         Qr+NoH/MlQPidR/HYg4dWDH6nQ1F7yg20VV0Zh96Xnz0sjMhWqNmTDuaaCGDGQXZAsDd
         te8y5TWXeSJPQN/wQYed51Oa+Us3PksIyCyVbncFps7VPdwt3EuTD+LCBhC5fGTBVVFZ
         nsyXOHzfar8V4f6gbbSxTTEh82nC/yxVpBzqwW6YEfJOqfMITKVDjQE4c615fcwFjQhQ
         3rmQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXeYy+5XS//QU+8ZBgT4pu6Ggx7SJ3sct3/k0JFsZTnVKoJZk7lnO/RpsHWwCJwI0cTEEKpZIlXRnZLCJk05fObHRfeIts53kqe
X-Gm-Message-State: AOJu0YzTdf/bw2Z9DqJuhDZw5C8GJqnXJLNHOnIaBGL9Jo2LFPnL1N4h
	uMmlMqjnerxQik6rswRTsAu77M8vHUVG4/Yd0VKYGX12y+3iZ8Px+V0ucpuBps8=
X-Google-Smtp-Source: AGHT+IFmikC7XurihqHUxDE9BgxyZkOC+jFwIy+AXLzujRsLx86WceVl5qE992HeqgBl5eJ84vVoOA==
X-Received: by 2002:a05:600c:3508:b0:414:8c26:4213 with SMTP id h8-20020a05600c350800b004148c264213mr2035887wmq.13.1711433364002;
        Mon, 25 Mar 2024 23:09:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:e0c9:0:b0:33c:e3f7:205b with SMTP id m9-20020adfe0c9000000b0033ce3f7205bls1863778wri.2.-pod-prod-07-eu;
 Mon, 25 Mar 2024 23:09:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW0zy8x+QBiQLFRBIW078qIYeeYboCMwYVOgSK3NRirIzJBqSpVRjw1EGZ1hr8hYmE5fVEWtP7LB9Lba8/6uRqJ7xWk1T1uOdob4aAQOXqTYE9m8ZY=
X-Received: by 2002:a5d:4211:0:b0:33e:8b95:b361 with SMTP id n17-20020a5d4211000000b0033e8b95b361mr6493100wrq.17.1711433361902;
        Mon, 25 Mar 2024 23:09:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711433361; cv=none;
        d=google.com; s=arc-20160816;
        b=O2Ci78misD7zNRJaoHrXJO2reOQ4ueAnV8zY7DCAveQIDiGxEt2X0J5EcusHqxNR5K
         VZJ/BYylO5SIbT/Sl654RWJh13UJ+Om0cZkRKD7D9Lpf+Fu78gJmlYW3KglSWdzvmXYE
         Gtj4Hiacwn/f32CvrH3i0QP6lA3grR7rLOMo7IRSGV+KhmvW/sO+2UbecknbL4ldPjaE
         LVEUFE7CM5vjZw6b1akaThC/JlsVeIECfojExCjC0cqFmybpEYQ898gCkqqK5GTtFOfL
         L5Pr400LfhIatvYXLYQ3CaU9U0BeaRWBTk7aD/pAf9Dg0YJVakKgGq3XfV+1/7HhNRl3
         tong==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6iZdGMNekVsbh18zlMJr1sZIzntIR3TZKus3OHqgoI0=;
        fh=rGclfsX6IVvLNBcVa+osytPbgqjudZGOzaQywEyEf3Y=;
        b=auqa833JtvmPUp2ljyMwQhNs+KeQmFg4swqmQVh7/SW/LM7A+CviqZHr2/7MrsPjkp
         zdpCX/zVjt6wA1hvRA/wNvKIl/W1hQF70k7qzRXKtPgcZSwTGOJtF7vg7qeeJ+4q/h4h
         RbIz/L2p6OW8vv3lTDdcy/Sa3AIpmrZKdkcNIVJJg58D2mFHgAnKqAjk8AZRJYRU56JP
         O9SwRYVO5OgIWugpsogQ7mfeBbussx73LViL41nxzs+GBnW1aTP198fgOwB7MlmVS7ze
         MqN95hFUPWDWN1VCEGtmtbT44k0i/iuFvEaVu08owobzp6PAF7cVyV8wLLiDfFtOmcqS
         1hWw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id k2-20020adff282000000b0033e7378cec7si4693750wro.795.2024.03.25.23.09.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:09:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id A28C568D42; Tue, 26 Mar 2024 07:09:17 +0100 (CET)
Date: Tue, 26 Mar 2024 07:09:17 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
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
	open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Message-ID: <20240326060917.GC7108@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-7-hch@lst.de> <80162a6e-12d1-4fd4-ac74-dc5388853323@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <80162a6e-12d1-4fd4-ac74-dc5388853323@kernel.org>
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

On Mon, Mar 25, 2024 at 04:26:55PM +0900, Damien Le Moal wrote:
> On 3/25/24 08:54, Christoph Hellwig wrote:
> > While we really should be killing the block layer bounce buffering ASAP,
> > I even more urgently need to stop the drivers to fiddle with the limits
> > from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
> > centralize this setting and switch the remaining four drivers that use
> > block layer bounce buffering to it.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> The USB hunks could probably be moved to their own patch following this one ?

Seems like a bit too much churn to me.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240326060917.GC7108%40lst.de.
