Return-Path: <usb-storage+bncBCUJ7YGL3QFBBMOJXKYAMGQE4YSDYUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520189886C
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 15:01:40 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-6e6fb338247sf940160b3a.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 06:01:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712235698; cv=pass;
        d=google.com; s=arc-20160816;
        b=L2CkEtG7OmAH6+b0v8k9cua+vTFACOFETYJ6TJTahaL4nLvqDOfEdWMDkeFZ9NuN4n
         aP29u2CrWNP/ASA437MnJVq5cTRmSt5z4oCZ5DXZ7m8k/R89EFdnkg9eJmJQHWKn1cA2
         ABQAnCZ+gT8o+0WpaBTi2aq6EfrH7DZG5jcfKTiMc97Nl3dnv4qs/pu6xcehLIYwEY15
         5cQgBGWgXBGLLEf9xBLz85+22BJRMThQNxSf09cNMr5qParU0imGeJHdkOZqPSfCg9ex
         v4PDFJUQJgavyEamqg8KTmmuSM01RCwsTXVrKFAcHYebk53mp77i2vO2DcObSuxfzrSu
         NbZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D97JOlLHr5SW/C2K2eZiOKrhyNjw9mePwcXSzWjU7t0=;
        fh=8AcXxTKqzAcyK2+Ufw0pu4vYG06Y4Me7iOjzwttEY/Q=;
        b=ir2Kjl8mmB7kuxnj5Hv7OHc8DWf2XlwDBCvkOPnNs9th49S658EPgc5Xy0KUl6Y9PW
         AwqjyPwHMS3Y3I/j444d9vi2rA+1m+oXx229xJrt2OdvwSaAXrQUctFvuZqF39q5PWKx
         tZSdXYncthh1/x151LHGdO5TCJXJBJD4+a5PnfGIJhwGEXRS8kdsj3NnAa37Fa1gQc5K
         0vr8/27ttVnH31kyKlNJJsgfl9mcDpUlSbV/yeY4ZFcElaLiR6VSO8sh3yaWIcgdZGU2
         7+3vdz1+4US5dDZPwKG0WR6CmrDjaJ3OpcezSrL5j5reem1p8zakbM5/4PvM4WoRdP14
         DDmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZdKmzqsq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712235698; x=1712840498; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D97JOlLHr5SW/C2K2eZiOKrhyNjw9mePwcXSzWjU7t0=;
        b=R6T0ZPcDg+35GqcUiD752NT+kHh0wR4vXilm1a0cRDwynrGuZ0ckUK6z1QWQcAEdKq
         yB8r8UHwD94nwY+P4dtI537ffOnyAICjanYbr8jDtSzX2Ug7pfN7gFe1RXO1gnrAj7xG
         yRXGAacwAMSgMb86RGdExzC63eLeweBpaKAlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712235698; x=1712840498;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D97JOlLHr5SW/C2K2eZiOKrhyNjw9mePwcXSzWjU7t0=;
        b=KaKtYSoSwRrUPT5IKq+Jul6MrKWR3NeYY19PBTRt+ydtIwJZbGmsRxjBgC8MKQq3gp
         hf3GJh3WpYjBHQSff9ykqIynV/Fzz4Ocpb490jU/xNMSbWWurBlDBbL0ED/cSTcGpCMh
         vEaRHj7bY4HBB+Tse7yzKCxCOQAfvgcA1knKYjQKm9WIGGzCTA7FAZmA3uNjxS0rVdtR
         G66CWuZJRjuzOecvsmIEBolOsH88dDVUxva7SC8JcKqAe88f3MmHJ2xRT2NRY56HNvq3
         Cxp72DY433ecyAfIWT+kEWzLtazVl3s/tSXq7i2HacQXRP6dn163yk4Wu5a7hZBVV8yJ
         o6lg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVLuDRQSOwItMi3TuvpL5J6zpd4sls1w3QOOz3mQlQGXoNE9hKSjmqd3/fSRHUUGWyaFPJMwSvaIM31IjsE3u2a9LZvzkZ2Hu9w
X-Gm-Message-State: AOJu0YwUGDSxewEZcTDbViDLaztQ8HL0KhKkoHNeEG/QU7lXtfPHjlVu
	he8aUTsA2DhwGHh0DZBuW5Z4Gbq4QiZOtfmL6pkBy436vmt3vpgjALMER6HaD84=
X-Google-Smtp-Source: AGHT+IF3THgtt56RPfQXwYe+FVXkWm1yC7kS5IjJpdwadCti9XfVtveUywYr8CADCWhvjE7m79ccUQ==
X-Received: by 2002:a05:6a20:6a1c:b0:1a3:50fb:4f7c with SMTP id p28-20020a056a206a1c00b001a350fb4f7cmr2934285pzk.29.1712235697842;
        Thu, 04 Apr 2024 06:01:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:6c96:b0:6ec:f6f9:d525 with SMTP id
 jc22-20020a056a006c9600b006ecf6f9d525ls149327pfb.0.-pod-prod-08-us; Thu, 04
 Apr 2024 06:01:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVeZTvy3x7+K7j/pfZw85hIiKgg7wvP46/r6GuPbXYxyS7s5nXc/lsIGxanGW58w/I+MalDlRR11bIIbxJqSYayDM7lISra4oo5U3s5H4/OmljYrsU=
X-Received: by 2002:a05:6a20:918d:b0:1a3:cb50:b52d with SMTP id v13-20020a056a20918d00b001a3cb50b52dmr3367282pzd.31.1712235695980;
        Thu, 04 Apr 2024 06:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712235695; cv=none;
        d=google.com; s=arc-20160816;
        b=yH2gVDscKRf9RmSETu+T+cS7MZP9XX1VfzXNJ6Y3WqNU2zSmAC5vJ1GZVTdsFnMAgV
         Hd34wvflXEm8uUsyQCBq3UXOmbXKQOjAAe8zLWA/VrOwDAPYo5bSyNrlxz7zLn/mHnFF
         r6J9b7DSgUafisj/9kAkX5ViBlHYwI8WPxHifdi1u1Zz2GgDO/QbxpCjVoBFn3X+tRyz
         FOtqhS1JsnN6tZJQqk3S8NqNzYQeJrVYqNVeeRxZam7K21yJx1CMpVb/7RDHREThoEBq
         583ZOIOsOeBx4nFDhzmh20pcFP46UdlkToJWr4AvEh+8d2E4HVxNdBdmYEAIo6Q1lg/y
         yfxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jrYAP+p0RHztm4yB2jsl/SH7xIIUUPU7nwdVaRJdftE=;
        fh=g0s1ljxghhsrYvMxjWchNxQ116E+IuMhBEFDId3PuK8=;
        b=jSsg4ywYDl2izvhwrTeU4CWAIiE2XhEhSPn2E1qVZrrOLutJbGcKfaILWSYGYxRAar
         gp/dzhDcqtYZpVDHPktlZ8um/6irRuXqHx+9qdzdws3f3nDF+GkREQmK5mcDNSMpIhqw
         NSgMxJelyM3HzEK2/o4uHTs3YFbTufoYGVnamDGfVw96XboxqnaFFOgio9soq7zqIG1Y
         ImlUWGL0hWzzsAmjS7QdnkwKwdHg774ezaSm/1pKqYxJLk4nfSZGQMVxdKtTKDUfa2z0
         KmHlbo/VkbJtRv7I5SuGB5DMvP480kRncNqy8oONdn3dVyhrxqSbicIteYTIRUaRe9+3
         aRdQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZdKmzqsq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id r2-20020a63e502000000b005e42b5db0ffsi15388984pgh.40.2024.04.04.06.01.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 06:01:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 997F5CE30C5;
	Thu,  4 Apr 2024 13:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43D6CC433C7;
	Thu,  4 Apr 2024 13:01:32 +0000 (UTC)
Date: Thu, 4 Apr 2024 15:01:29 +0200
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
Subject: [usb-storage] Re: [PATCH 22/23] uas: switch to using
 ->device_configure to configure queue limits
Message-ID: <2024040422-justify-portfolio-4a66@gregkh>
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-23-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240402130645.653507-23-hch@lst.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=ZdKmzqsq;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Apr 02, 2024 at 03:06:44PM +0200, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_alloc
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Note that uas was the only driver setting these size limits from
> ->slave_alloc and not ->slave_configure and this makes it match
> everyone else.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/usb/storage/uas.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024040422-justify-portfolio-4a66%40gregkh.
