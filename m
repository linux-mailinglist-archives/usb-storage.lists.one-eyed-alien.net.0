Return-Path: <usb-storage+bncBAABBC76Q2YAMGQEDGKM2AA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9D288AD67
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:36 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a55f6dc981sf836143eaf.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390475; cv=pass;
        d=google.com; s=arc-20160816;
        b=HtvoEgL5XNgfCcd9KeEpllLSp9Ew4uAetift3rX6m3+zFYjTjkzwXOQbvMABeUp4EW
         /TXyK9p6Ebg+cU3DrZ6nOq/Dp9dfTOqOgTetjoimWs8lpuLkMzGBWMK2epJ1IDVeEybp
         Bgi0/tqggU+7BxkcK3m/CvuvAZclXyvM762hrtXI1Rn6VuXcRjKZ00Li9n158DArSJNc
         X5Y13ks8QrBzLxcN8hnbH5lv7Jsw8V0iMUJ3AObFCg1zf/ZIPBO1SQMYg92br6y/l5dK
         KSC+nbwN6DYeB40zjKs+GGYqT4/OqrtAGb0L5kaIb5VTjcy6XSRavLYAKPPSF0tH64tD
         d2bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=S1NjLx4Xen6/ovL1FjjVVi0ykgbEOjlwzyecowkI47A=;
        fh=k3R73T0FND64hbV9ngkAkdHxZCTeFlptJA7jkjZmbOM=;
        b=ye3rYSnFDhFgU2Bg9dcnarFCT4N7EM6C47uW0ng/NonPxvjPkGXp+4MnedoiOIk2mY
         wJp1KsSvtVJJr2kY2MdVgScOK/1GnFm90YqTW6v0wGOw0cPJLfVuXvRy3prwqFciNSjM
         hJ/XUNdjy0uS0T8VR6WUrV265wO+aFRiWb8G+tVdQiPie+zLIY8vd0VTKIWvfKzh5ajo
         t3r/jqcx0yxfgvCsztKy0cKlxkbirJFo8q1PMtBmdctn2kbyElJYQKbE4ho8/xD2vPbY
         Ff18CVVUIpQhqo1NcGC/MTEfKjNU9eSKkTT9gCrRYnGuRkT1TqN3929Yecw1AlJAXBAq
         iHmQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="nXE/LH2T";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390475; x=1711995275; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=S1NjLx4Xen6/ovL1FjjVVi0ykgbEOjlwzyecowkI47A=;
        b=lefp9x0zrQHDAkiH0WW0sx04GS+W7JCHOFvAhOSzJou4+yGqT+ecWLgunyQJUxVk6s
         X41zuBmImCPbl+z1BrYijhkk+9YnrTYFrqajTeR68im27wpfCw3WYQvKxY5BR+451b/a
         kQo4U+k6b1dPeKBPTDMOZ/PQb+LyoiYznHVM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390475; x=1711995275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1NjLx4Xen6/ovL1FjjVVi0ykgbEOjlwzyecowkI47A=;
        b=BsG/QA20iFvqwumPYzmN6IzXeSN4pJXvxxiCgwvfygXt/aKsQtCOWrgHo+1TxGrkok
         yqr+6jOEUZA+nStXbsZM0yWiVw/mN9QtweM/EXG+PR4qFlTHu6Le3DCtnU7IYsBsJko/
         UvjIpd0SnGJNVAPesgo6I6qc6ufiG4+rE5U4OLpopko5YOgba2yFiMH5UHN8dAEfDZR8
         0UMocc4rynoIPMQlN5CeYIZgbf/4pROx6icg2fj2G5M8XEVTbWfBEETMjJbCqDz2xA6t
         QRq/NeDsSiiHo4REfyWcNc2cXsYYYDgDpS/oXzUXk5Egsuwoz6IgC4HRXImbPdOC9zyc
         VOoQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWrD4o2P2/dPctiMOSKtOzHBJ6iHsvi1NDejJI5fWGMfrWF6uoZhcfTGhPrmgkJjtiMsaujx1ctSmn3L40eHNU5rR1xKAs5DfMl
X-Gm-Message-State: AOJu0YzP/0mF+p4rtf1InKs597m6ROCwNvtzZl2dR+TgD8yQTCmfLFND
	ddonC+Jtwiy7KzPr3mC9taGPHAXSfZcjE7tUXlOK+A04kEbtevKjTJXHO6tAUB8=
X-Google-Smtp-Source: AGHT+IFwl+CKRanc6EKp/pEpCQlEKkbFwchJBT5zgTJF2ABwNFT8x2hYSTm/Ci/vhLPgnNQIQiUUDQ==
X-Received: by 2002:a05:6820:1e02:b0:5a4:f5b6:4eca with SMTP id dh2-20020a0568201e0200b005a4f5b64ecamr6576316oob.7.1711390475640;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:c90c:0:b0:5a4:b452:a5ad with SMTP id v12-20020a4ac90c000000b005a4b452a5adls1523026ooq.2.-pod-prod-00-us;
 Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVSdrq6pRaPDSzKKdcxaPecg/MMAZ/PV/l8aga689Jqy4ZNW7x/H+QutWt1LZK/QpilRES5wv3pW8Eu7i60TxAxI6iB3xlMG1XD+d9uqYyDCc8/TjU=
X-Received: by 2002:a4a:e603:0:b0:5a5:6058:583e with SMTP id f3-20020a4ae603000000b005a56058583emr45753oot.1.1711390475283;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
Received: by 2002:a05:6808:1783:b0:3c3:cc09:ef6d with SMTP id 5614622812f47-3c3cc09f277msb6e;
        Mon, 25 Mar 2024 00:50:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWTuqJhTgG4MAiNcrOIIuUlqX9oozcykwc2sKuHPwJsKes9/Og675ZhW9UJO+W0kLDDjVMQCTYp3xq5tM0eKjuOFZxbEGzGmkSMacJQddAb4jgxMFA=
X-Received: by 2002:a17:902:b68d:b0:1de:e6a9:e94e with SMTP id c13-20020a170902b68d00b001dee6a9e94emr5151920pls.51.1711353013489;
        Mon, 25 Mar 2024 00:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353013; cv=none;
        d=google.com; s=arc-20160816;
        b=qlFhdYtn5kQ4iSBVtrTZHamAxplahhGuvO4EAt9ajWnJJTLIghcVvaLIALVk75Ce5Q
         42wSL+6zZEErwjir81oqa3MJTq2TNdKQmuVeufEtAGQm6COISZrnxQIMALYBxhNUF+da
         vBxnt1z5yBZ+NNq/3l9ou8ySZck/xfzl6JF6Tc8pDPo7n4DZYjJi/V/eAL8YMZp+eXpx
         ddAbCBzQni4libdPt9qlUSDrUPRYDPv1uh011hgQa7Hzybq3q816d4cHXNavVk524jCl
         W5w4AwuF4yZstpn9GweCM7RHJGB+Gmd4mj5ebMzmvESzWG6uJV8Q9uJMq7T1LWPle4YR
         kSNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=e40gzKWQ7xUOKu7nUJHkyrD8AYoIRciYCQiK2DXthTc=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=S09tcpcZZM0ktHnyOAI2ygFfRkHoYyqRmJrOKy6EI81YiNeUD5toObczYIG3MyLMR+
         gkb3+JtEFdlSDRYxcNb8B5jP7kp8ho3KmRRlprXrt2vuVW8LALwITfbwVGZCnzc3GENO
         EaAUCyqx5A67HNjB9QIKEcBIE8ttfiXBouniQBeX+fOGVhDnBpGMZMiW64RFsofSiSXI
         KwzyBiIWRQ2b3s+Z5Z+2BC4XmN66DeOOlfGY2SSBap5CkUg9TI4B5EBonn1xh4qOiXHo
         4f/rZhnjiYV65q0D9oPPXcyOlMPUb3TZWV0OP+W+xua9RayvlIqgB9a/y79WAWvlvhz2
         CvMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="nXE/LH2T";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id a2-20020a170902ecc200b001defa2d8e2asi4782161plh.496.2024.03.25.00.50.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E97D3CE0ED3;
	Mon, 25 Mar 2024 07:50:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73AE8C433F1;
	Mon, 25 Mar 2024 07:50:04 +0000 (UTC)
Message-ID: <6944da16-2a6c-42cd-baa1-c6d6d4dfc866@kernel.org>
Date: Mon, 25 Mar 2024 16:50:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 19/23] pata_macio: switch to using ->device_configure
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
 <20240324235448.2039074-20-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-20-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="nXE/LH2T";       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
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

Acked-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6944da16-2a6c-42cd-baa1-c6d6d4dfc866%40kernel.org.
