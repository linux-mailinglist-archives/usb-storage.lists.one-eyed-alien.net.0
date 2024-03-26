Return-Path: <usb-storage+bncBDUNBGN3R4KRBQGBROYAMGQECTJ5SJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0F288C5C2
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 15:50:40 +0100 (CET)
Received: by mail-wm1-x347.google.com with SMTP id 5b1f17b1804b1-4140e6bbc87sf30884865e9.2
        for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 07:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711464640; cv=pass;
        d=google.com; s=arc-20160816;
        b=av5XXTFHSpr2fXUxGGslaKtuvX/ZIpaac7NHUQNKspCx2suwdzMqZbMHAG6urbxY/h
         0rEhVgFK6h8u3Vzf3/iXMZULw97Are+NkA78v5Bmixe3Wvp2rbgAXmtFKsCQpq3qF4C4
         VTsMYktwfl9QmP9FgrEsNVP9cBadpO92EJ4lDtL1VFx7krKL2RLS6eVk2TkDg/ukHZmB
         BJlvDdyNvjJyvSu2wfSxArdRYihWQqUGExPwqYhGj/Z/8Pg0v5TVbXHTAybwTfcY7uOw
         ArG1hv9c51oRCOEQ3aYyXG6gqfWq+EdVTnKHqQIe6rMNcucFWwdjaw0TecGKHjzgu45G
         P9Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:sender:dkim-signature;
        bh=8QbtYJvZottuH8mP8zBudUzdIa+XE+RJPrCk1UADs70=;
        fh=hQxCvHu+FdusDhNBEt9ykPMxc1nl49J2WNhG120HjbI=;
        b=Ne72iijCoBaLMGmkLAgEjG+5/dHzG+sXGi70SgdN3T5pIAfL1/p3vWPLSckeigRdo1
         A+5RN1deN2o3U+CfY7uMe/4SnxTET5THireZBCNbGYRXOhgHiwy3flfUWI7Ux3OMlfmW
         jIeN+P6DpM7oewNPbpImQxt626Q74XGlGNB5nQ3Xt7t7HEYOFvefqmd1Oz6cDGUWvPa7
         EKRWBVS5tFnkeQ13MULxWGm87yUmlELWM6uiCFh3BcyrVXITWBc7xqFU05JI04y9UXFB
         /ekuMtVZckoJEws8WK9g//8cPymm9686hw0CRz9KTTKF99feETCfwij2ThY+qQNd5m+f
         pqJQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711464640; x=1712069440; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8QbtYJvZottuH8mP8zBudUzdIa+XE+RJPrCk1UADs70=;
        b=RIRi8toOuO35AEIGKHknRNREOX+G8yCYfk5S7Jhbb2hhIEMO794btuFgGnj8zwah4E
         IL9S2oYHLYRGF2qbpnyCbYGHR4L5Xeoa38cv+xIuvl3pkWvuRYEM4a/swQN44Wu5xN5V
         fJ88pkI7eAZqELJVxB8OqEAQVv05UU8hLf2EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711464640; x=1712069440;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8QbtYJvZottuH8mP8zBudUzdIa+XE+RJPrCk1UADs70=;
        b=AMXJQsjuePcZlSPWyEr//TceVqsQr5wIUB+4VnxpRbic3bwC3O86mvJQb6vUGj6B7y
         HneuJNahy6LPItezu6jOqPhV/XAbq3QYQxOW9R9od4N+WqFFieU5fMNiH98/2guC1Y88
         icnx/o1+MKS5gnveWQI0vNaKKc+gQv9OK8G0WWlRcDQCmB0l4Wv+oDTRMaBaEMzjzYav
         QL7/JBq5wGS6YMUA6O922EmaNto3U6+t6fQrUwJe21xxTKM26Ff/uQVycA/4afNQg4Zw
         YMM+DtxSqARu0gXgS6yVR5ymZsIkUH+gkoS4ARcm2/bM6pxJszSw3keMv9UIkY+v7C7L
         uZ6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV3Chulx3IarUa9cM1sDMI5uTzyseU/569DbwXcjFDkZr7tGx42DMouhGBt+BPjWj9t7gdr93t4CPeZ99VdzGtUhCFH7KJHrGjC
X-Gm-Message-State: AOJu0YyDUHrtYzq5XfyC3PBmgGej4TcgOF9QKRHxIfoYlw62vScIDWHb
	f//5HKGCVyH4h7NW5Ww1W6uwx+lmRGoFoNuN8rMXU11jqPDMF5xJR6EVtCUImTM=
X-Google-Smtp-Source: AGHT+IEZ3Y4rw+fjtFa2QQ0RpoYKwZ4vVeMw9rynQl5KK9zt3egahw5DtkFFtR+6gzqtQYfI4gkbLQ==
X-Received: by 2002:a05:600c:5249:b0:414:1fc:1081 with SMTP id fc9-20020a05600c524900b0041401fc1081mr1954810wmb.36.1711464640332;
        Tue, 26 Mar 2024 07:50:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1ca5:b0:414:887d:9593 with SMTP id
 k37-20020a05600c1ca500b00414887d9593ls1184804wms.1.-pod-prod-01-eu; Tue, 26
 Mar 2024 07:50:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUY3CIVaJXKgpJj93p6f6EyNJc0B/r6x1k/pB54IpQwRAyBl5g9KfEkMDvwd/n26PL7GewIUpjJczJfKofQO/CDSu2vjQ7WIrurKtS5ZWouOx7CL0I=
X-Received: by 2002:a5d:452f:0:b0:33d:a011:ae42 with SMTP id j15-20020a5d452f000000b0033da011ae42mr2005087wra.38.1711464638279;
        Tue, 26 Mar 2024 07:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711464638; cv=none;
        d=google.com; s=arc-20160816;
        b=Hg8J2Zu+HkyjIDv69hnPIoheHVYUj91eojLrf8FjoOU0KCfLyGXFruSZtsNIgoIWZS
         M9yZfnshsIhVEDaGQBARx4b7KLOm54yE16ZqWE3kpHk7zY7X7TR501V9g0FnOnyJi0xK
         r1TEqhon+GZ6rAYTuDz6pY4b/fueWpybGk1eM33NYgCFejQOEmnzWT/bzG8lTq9NVIXX
         saWvjTG3+SdNNLhNz4o/X0rsXGDMXVbqeL1RsA+Bso/1PzJ7ggiLghoE5mvRNMLe4H9d
         IQzqZAXOWU6V74sTEZHWYr2RCn5nx+XX9VN4R/5vaVCNtaG7kzpoYe8/kqh0bMcZXmBS
         yI5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date;
        bh=GlnT1lulvQTDci+Rff74fRpsjZ+fuaHv6r06gygdyTI=;
        fh=8g/qHm2QC7yoSCwSZ5sHYimArVv5rfesyFk22bD+9yY=;
        b=1CUehtT/WmPqsxcavh/tEmgdGJi4NAz+MwyCHhREP3DpqumSGxUSNCcHcaiQxrb+Ia
         OYCxcQGIIrMWSn+2aVLOGqnXvHiC69+2JlRko46z74pxnLU+Ndkn53Rip6sqrI2i20Q4
         uIPM3z4XmG+6rceUXa3MLJ0htOnVb6pS9iME8cNU2mNep5R3tTrzRa4znfMtlfNIbyF5
         q4Ev2ZKsFO8qitLOVY6AQNqVBYriBzy5f3MczUqZ6sSYInawMJGTqh165xXPil/EMqII
         BiVLymF4t284ZECW2ptYRp8nbuYhcJ6FtgdlP4FITabUBB8kYqvtz6Y1wr1IZdnvGnxS
         G2vg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id s2-20020adfea82000000b0033e7bf9560esi5322125wrm.938.2024.03.26.07.50.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2024 07:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 848FA68D37; Tue, 26 Mar 2024 15:50:33 +0100 (CET)
Date: Tue, 26 Mar 2024 15:50:33 +0100
From: Christoph Hellwig <hch@lst.de>
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
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
Subject: [usb-storage] Re: [PATCH 13/23] sbp2: switch to using ->device_configure
Message-ID: <20240326145033.GA22360@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-14-hch@lst.de> <20240326093045.GA139274@workstation.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240326093045.GA139274@workstation.local>
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

On Tue, Mar 26, 2024 at 06:30:45PM +0900, Takashi Sakamoto wrote:
> >  drivers/firewire/sbp2.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> I'm not good at any kind of storage protocol, thus execute me not to
> review it. My concern is which subsystem provides the change to mainline.
> I don't mind it is your subsystem.

The whole series should go in together, probably through the scsi tree.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240326145033.GA22360%40lst.de.
