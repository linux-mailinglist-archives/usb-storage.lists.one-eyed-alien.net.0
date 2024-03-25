Return-Path: <usb-storage+bncBAABBB76Q2YAMGQET7VC3UI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C10888AD64
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:32 +0100 (CET)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-22a05c91c2fsf922089fac.0
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390471; cv=pass;
        d=google.com; s=arc-20160816;
        b=PTPDMecsMxUrU5uS0GACl53vPy1+sZNK/2E1BxbIsAatVP+wsxS2fA0MYVbYGUqQhg
         ZMMaUUUMet5om8ZACJJU12C+i6e6VHThg0UuFOMvlr2l0WuYKzyE1mSVEn6IER6K3RjG
         UwFKd3onuWM/dI1Ooh1jn+9aHPB11QRHrzZY/O2N1q274LFq3y99A69G3jTGZTeMmw/8
         cPAWTQZ/0heVJ9NZNv+XQZYBI8Gtpn8Zto+ONCnTHxXEmcTkUcdbEuBWxsZr3+tZJXR7
         LjeY5rqOGK3mk7DYiw3cSZfo2V5lSFL217CpErg33mfOOSawX8rXM4vhlETxXIxEHE9T
         PTHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=llSg4NDrKXnx8wftiGDXamcqDBsif67U1zs3gWBWj6w=;
        fh=gpkzwYByd2MZcOumiLmm0RpGo+MKNzD0UMEIm8/gsyY=;
        b=PAXhcZaNgEa5T8d1ubte+dAP2ZepoKMiGeEzXtwDt92F/SwjXJpThYEWziHe9Bj7z1
         OvgC9RFILl69kv1oyGPm36lqP1TFwN+OHQEkGAjIHIwJf73vsd0mxVsbs+3qTQ7uoomx
         +9v/NBHF+tgffQHYq3gTGP7DMhUH5fPkpwdV0xWM9ZJNRi6WZgmbVYac8FnRPXC/pmgP
         OliKkAaQSudbj5SGOd3iIexxb7HuJOHlD8UzJCKfe/FZPGpDv+8KwRXUnCWmLjNXK98O
         ZZcR2y6MtBorxqzEAzdHnfPg867GrGCbrx62uqSlMMltxpCn8vxnqLE1yv438ihQICe0
         FPCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fdrhBYjw;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390471; x=1711995271; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=llSg4NDrKXnx8wftiGDXamcqDBsif67U1zs3gWBWj6w=;
        b=X8o/HcgFO5xpRpBdQvY3cjvi+aIUPJ1HTt+H44HMBrbW2wIJgTnBUVL8PpWCH7yBTf
         injr++T1959hW5UhYlannPkZwhmTwPqtAGDe7sfDKSr0hqozQ7OTNtMXCQQ//FJ9j5gj
         e18LAY3jmMTGvWvrlJ3SsIo9ox142bGP4l0ys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390471; x=1711995271;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=llSg4NDrKXnx8wftiGDXamcqDBsif67U1zs3gWBWj6w=;
        b=WrCHg8fmBj3SHE0JjNrQx75HlhRTdnRiXsPOMjOqJLeA80jvFVot0O6NTlDXMjNgtv
         DHrI0AQcfvpnemyvxbZCsJJH6oWx8mu0PbYj3ZsiRyhIIaVA79WkG0PAbSBeyy1xGqgX
         bacuGPTXcxo13ay463bCcYKfboEu6OpND32NhjJRQMo4KwUib42RyW41BIp2+pMb9lWS
         BO/sceKV8DhqgE6L9jS0FtoriLadjQnHcXfCsDQYUYFzstG0GB6kYwgZOdrKOdx8UceP
         dTGVxmRpPtWn1OfygjkMg/Neo5Ar5yvbhjokzpiVbXRRmjdKW05qKIVkJxGzRjTiy2HJ
         wkwA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWiPx0t1TkC54OqCSdcCORQl/wwonXjL75TTMJkwaFjYX/gr1O6JFFlySBYs04nJXdaMR2+8khbCQqu59AOJ/SIvpTARWl3g2Fv
X-Gm-Message-State: AOJu0YyG8hXnX9mAfT1LVGhmMaGUZeEjVNWA8G6G2zb8Szth6o/qTQec
	/rjxBpi414M+Qi0ud1d4PJj+BVROd22q4lVajZx+L6+hInKInEpegPmw6N8hVac=
X-Google-Smtp-Source: AGHT+IFvA8bedpSIFRRRBvtdOIHnlUcsONGO8NCk8qqdOrLdQf/U+WG55l+BZSNxrsZhzrSNMjgO+A==
X-Received: by 2002:a05:6870:14d6:b0:229:fed5:1b2c with SMTP id l22-20020a05687014d600b00229fed51b2cmr7772240oab.44.1711390471287;
        Mon, 25 Mar 2024 11:14:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:569f:b0:229:f956:88f0 with SMTP id
 p31-20020a056870569f00b00229f95688f0ls295076oao.1.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVRG0qnMblaqeBQ0WFeaZ653hvkYWSRndMNWeFuuNUuJfIrvBLSMBfRcsqIJiriwbh82RgNBF9JJWRQT8AeQTY6fRZpQhqtovTAqgiWwlF6KmS6CQg=
X-Received: by 2002:a05:6871:5227:b0:229:fcc2:563d with SMTP id ht39-20020a056871522700b00229fcc2563dmr284028oac.7.1711390470888;
        Mon, 25 Mar 2024 11:14:30 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:42:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXxbuyiID6Riw7Xd3hH4X3AjeLhsbbJ98b3OMqVg6rkp03KoDF1Js6LdYXi73J3YhCun34cnaJpgmRVEM9e583JWmrBWf0WCyNMvVRwJygE0HvjccU=
X-Received: by 2002:a05:6870:d0d1:b0:22a:4345:5731 with SMTP id k17-20020a056870d0d100b0022a43455731mr1313501oaa.29.1711352551993;
        Mon, 25 Mar 2024 00:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352551; cv=none;
        d=google.com; s=arc-20160816;
        b=I1FI7V6vP3ORF/mv+jdc/AXcIjfBHwLQRvKiRcZXHh2X8K0lFw6+DzN9sGGbBtJ7Fb
         +WTsGeA0/98t3e6HsnI7KEqm0parz0yVPrVz5whJsus3QB13Bq8wBXCs1PqTwlRyjDtP
         BeH91nGLRYei3UuifNHKhP42CHaXojZxRY7CSX4QYpqSC0SVjVpWP/8Tn1jbZK985E7g
         mEBd3jFxd8V2bW5LSxWDbhHzwUfGvlBj1fH9dHxaaP0jeA81rXelOweBc8FnzjpZZA3t
         HXSRfKe0/JfogRRjwlwZQU0zaSiRwyPb0SpoGcfNzUPyAOYwZofFmU5ZlbRNIQ9cZ0vy
         RybQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=gLL+kq1hTH55904+61na0HjBeveQye72qNEe/eYTuHVISAsmxXqsPHUqhDk3f6/HA+
         umO+mL/phcCieXFbDayYGGsQhbdJobGG1X1fxprB4IJVwsg0gAa/gSBofH/1HHxjIetu
         qLgH6z5XWRIPi3/myBAiwh4xji/YG6nwrzidKwldqhHkK6mgTZTPl7VJoypJj0F5pvy2
         KyvnVGQTOS61Zx0I6xr6vZzx3LR2I/8uMWkbrnaimeBEwudF4VsElqy3bI78XirPRnfY
         8FpGRAbGeTIAWNZdMS8dnetTcHDIsj7tsqkwPyEiqieN350ze3aYhZwywcv/WNqhWaoM
         hZfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fdrhBYjw;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id p38-20020a0568708a2600b00229f624d867si1414795oaq.129.2024.03.25.00.42.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:42:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C96D560DC5;
	Mon, 25 Mar 2024 07:42:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64E6DC433C7;
	Mon, 25 Mar 2024 07:42:25 +0000 (UTC)
Message-ID: <4f9b30f2-2351-4d58-b368-46c65288aef9@kernel.org>
Date: Mon, 25 Mar 2024 16:42:24 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 14/23] hptiop: switch to using ->device_configure
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
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
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-15-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-15-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fdrhBYjw;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 3/25/24 08:54, Christoph Hellwig wrote:
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4f9b30f2-2351-4d58-b368-46c65288aef9%40kernel.org.
