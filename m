Return-Path: <usb-storage+bncBAABB7H5Q2YAMGQEQRWPEGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 085D288AD58
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:22 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a46b025acbsf4723611eaf.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390460; cv=pass;
        d=google.com; s=arc-20160816;
        b=d9ZRUBlS5NG4D+3FDQbdCl6aXUL37OgNsaYuw6/nPSm4qqzjL5iD7lFeGUaSlPixTw
         pFQiZvauLotm/P3hC3cVw+kFZSCZyBgx2eJdapQt3Z1CXSn4SLytMqS5k4S+J7BGtWz0
         vbfX3uwQ5D7Y0pOD1vWNjq0iFjWCddg/IM/WdcNtXgml2ViTP2fgMD19k/DyXbZ5PPqO
         2p0eEsXt+ZtunCuA2i9ynV3WlaW5VRY9FoSTDSkA0Kjw10hxifOGs4SWBniidjUKO7kr
         yutpqx0I0pKjTvBdDqvGga9YeuqU45zz0NBcet/E2Ghi1L6JUE2xjeqMUFClrB63QPoB
         9H/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=4BpXMQUThk7YC46tGAXswDaQMBC8ZRu//mTVXWQ3kfc=;
        fh=2jWDwarZ898GztS7y10868tPpJP1mcwHYnadHlyP3G0=;
        b=d496mPctMtew4ofF2ZSDBtuurWGa5WK0KFUZVQzTn1Gy9JbJzL86OsiRW0AjvkXNJO
         33EOvDX0zQUS19qYsr9XsvP5n2Ii34p6DJU+bNJlW6WrxapMsGWgiT86cik+9iKcMOEN
         Ez/YxupDzIW1DjxeZlUoBYH35wsTL4IfXIq4wIv73D9TSP34cX+sTZ7ta7OZQRX9FZAX
         b31EKntu5N8NXNWN1bNEXGEFukvK8sfGFEgVmX0mktPfz/7/etnUse8EKXosnIpb40ZK
         7dflDWlsA8DaNvqq80XcBrMs+U46qp2JHV5YaiwhOCSGh9pv3RlF3y3BPWYDS3Nt1yZd
         Cmhg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dSlxD04j;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390460; x=1711995260; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=4BpXMQUThk7YC46tGAXswDaQMBC8ZRu//mTVXWQ3kfc=;
        b=XVBYobjr87ugEwwwgdJ5cQNV4Z2nx46/B1LBe+hic2clr+YJV76aQVjtMSorD68sN4
         c6pBHteozqA8aE+Rr+GbSoLI7a2CEZkptTpBGeYlbrlyYopeNEZmDbKarSY/CUgOP/wQ
         cdjXtqn4BZbnCh2jUgjj8m51qVOLlV9nTl44w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390460; x=1711995260;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4BpXMQUThk7YC46tGAXswDaQMBC8ZRu//mTVXWQ3kfc=;
        b=lnbzm/kIZ6i6zNtw4NK/Wqo4/a0Vy6+v4buNm1Qv4SzjxP1Tc62SATbRxIREZ5ckcS
         svkHU19WyXDoEkOZQOx1Th2fH3ODg0ZFJ6V/tpmNmvyknTI4pviWsSLlv+0Cgg7xYguW
         AQIPzwNW+PIfzNY9k95DrCYsgUZRihb9TvpOLDOysE5Bqxlrn0WU/aNQjWE/kCoHFQnv
         hqCzh+WPhQgax1olh/UAiqbixc23wM1S4fXrFxpPPS9AJtRAFdMwIbSbpMmeUzYMstrY
         mPUNGs8TcFyHx/Vn717+hVIIGiSSFCv9F3bEvd9zekgT54KYhzdzdzjrnKPrahFmh6m2
         R4iA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVyymO7PZ8VQ2Cb+e/h6DbxwsL3+Peo8RvsoD/8ExcVzedv1hwnupX/o4v5d/USLmbKbgYker2YXjDbWZCrKsF8wUE2agn0dltg
X-Gm-Message-State: AOJu0YyWAt2895oWvLBnc1qidPvVSUZ1GhMQaker1tBZ7uso++gUPFia
	kPnQ956VImYp/VWQTvtSEC1rTzizpvKgr6is+oNJMFralh0VT7e6t3sD/XlNggk=
X-Google-Smtp-Source: AGHT+IFvzSaOfRMVH6Y1bbIGgHKttvHcfNo7KohCAP5LMpG8SdGcN0Twarik6eOoEi5QG+wjSAEyhA==
X-Received: by 2002:a05:6820:20e:b0:5a5:25b9:debd with SMTP id bw14-20020a056820020e00b005a525b9debdmr6882003oob.5.1711390460545;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:e1c7:0:b0:5a4:f1d4:44cd with SMTP id n7-20020a4ae1c7000000b005a4f1d444cdls1405886oot.2.-pod-prod-04-us;
 Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWf5P42TyoFk1vDvsq5+p/kmVNiW8MUKwhDLeZN6Cs8RcKix3kMx6GE7F+n0q7rpZEoplIWaMkVhJZ0JZSw61rtS/zN8eUBn9Q9i6MPzMYmtX+TThM=
X-Received: by 2002:a05:6830:2b0d:b0:6e6:bc33:b7b2 with SMTP id l13-20020a0568302b0d00b006e6bc33b7b2mr209442otv.1.1711390460159;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
Received: by 2002:a05:6808:2120:b0:3c3:cc75:72a7 with SMTP id 5614622812f47-3c3cc757394msb6e;
        Mon, 25 Mar 2024 00:17:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX0yBjyGiRPr3uU7urQogOADF6u0zjfg/8Lz9/MgKCUJM2fcHiZQU5c7FJOjHjSad25FheUpk+Y1G3JJORxTl8Q0njcRCGRxQG168OzT6FPjioyUqM=
X-Received: by 2002:a05:6870:171e:b0:222:6240:6e72 with SMTP id h30-20020a056870171e00b0022262406e72mr7512070oae.0.1711351063186;
        Mon, 25 Mar 2024 00:17:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351063; cv=none;
        d=google.com; s=arc-20160816;
        b=LepIY483CGhL0DefoK4jpGSw/iojQHJIyG6yp5dBgsV3ACRXiGLinbWrir6CyPHOX/
         LM18sGjKbetqhKfRAtjNLpe/IehOGOnxyaKKtgzl+mzO62+sgDAVCyMPD/srKsQ2WYS0
         xzOe0WCI8138A1bnsWGOa/PyfYht1xClamqmj/9nwXpKHFlEAQCEurU7yRecXdU4kjC0
         0sTCnGuAONQZ6e/V/b5FcurFgk3yD0lopJCK/Orv0wh6tRQa54f2YJpLIMbhYnuRChxP
         jKa4r//f3FkHYLc5Ta/DSdq5xFLavbV9GpWy2mMNDlg6JH5/tN787Y8HM43gC/4BS0pF
         Q9zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=rExrY1kx3gGrFdOhFLvhp9E3IdR0L42WIU5K30Z1pNE=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=kP76l2HojjNOYnu/oqF2MOawPxKQV8AUAvSmYmY6F+y6CMI9Em0lC18/8VcOglgPIx
         p2s1nu9PRTOdblJA2VbZRbWTI2B40IFWJv5INJjVpo2WTkON99YdN05/Bim2JfQG/y6x
         ji7Q9PbR8aSHrVqCjitPEoXYfOJRlFXfn1QMJgZtbQ/jYrsFDx/oc/MY3WTifyjJXw0P
         +jrjNUbPWVNAO+gg07BERZigwZX3+Is1SMT8jv9Ak0AQZrNr3eem/BSWQ9XEY8T9OsGY
         FlZOfODtoFCKUab23D1M46ySTVG0BRvwZtniwNXPa6DAK5nFo6iZuxGPuecx8ooR6QaA
         OS+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dSlxD04j;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id t14-20020a9d748e000000b006e691e017fcsi1223138otk.241.2024.03.25.00.17.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DA3F160766;
	Mon, 25 Mar 2024 07:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C16C3C433F1;
	Mon, 25 Mar 2024 07:17:35 +0000 (UTC)
Message-ID: <04beb70f-38b0-46f7-bbbc-24cf40a91d70@kernel.org>
Date: Mon, 25 Mar 2024 16:17:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
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
 <20240324235448.2039074-4-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dSlxD04j;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
> Pass the limits to bsg_setup_queue instead of setting them up on the live
> queue.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/04beb70f-38b0-46f7-bbbc-24cf40a91d70%40kernel.org.
