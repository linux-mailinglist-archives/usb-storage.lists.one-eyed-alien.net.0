Return-Path: <usb-storage+bncBAABB7H5Q2YAMGQEQRWPEGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390288AD5A
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:22 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6e0ee5097fesf4715144a34.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390460; cv=pass;
        d=google.com; s=arc-20160816;
        b=xQtilosOuTUPODdsjXXqYtmCu/dLdBmLRGVv8pJxKHkHE7ECcribQzIjPnes/+0as+
         tlLq4g4kjvrw323uBhQUtneyVsT+5C/iJ7WEt3NmRKFZEkOcuDNHdc2E+m/hy/TNUPwz
         Hrprb5TwXn847pzNoPEgMTDTv4r+Vnpa+rWYfABkTZKvHjNeu3iyKyA9+yK0UFFQoeXG
         +Mud4qxAY39NXTUJaqiorG7CX1ZQG0XMYQHVgjVnPgSruNzOpycOA9EwQ7zCG4HNwWMg
         rtnqzlFCJkSK5hDQk09nDofYhBl46zPVMZCfI0HswIM33fVlKBvkzT67kXwEo2xIQgX/
         aL0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=emausEs+0xPWUCh8CYA5jEusf97U7WYcS17O/2RGb+8=;
        fh=CXhNy/u8+Mq0a0DHNf/g71QpF3s3zeNf1RkIEtQJT44=;
        b=VDaPF6z/KMTwKI5eAUdEiCGUq/tnVCqxmU7CdiP30lYJPq+BdoEoBS/LVv7onH33Sz
         YMBLU9aiQdFwEgqGvdIsZ+hhHvTOMESCqfVLENrw2Q9WqGOs4RCte7HXebadc+s6tFiO
         39KaVuPuVaFB5vw2NFLqAMaUDnvfjRwIsvvItg7SVvTUpu2yXsQzBKLyhCjk/5hNrbNB
         wM46ggeJLV6OAD0J+4s+q2Yn08Ymekpa84NIzZ2dwvNaGAubS2o1nkHxtPi1SaIdRJoZ
         YZ1nkBD74GIs0AKp1yM8MnGSW/2xsjAOUGz2q+0kfHvBN5LVeWiH5MSQu+7syiza336i
         nPUw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R5g4IRlb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390460; x=1711995260; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=emausEs+0xPWUCh8CYA5jEusf97U7WYcS17O/2RGb+8=;
        b=Y8xug82gc9H3piE8SvUh3RTGoGM1+LWiUBY5yPODEwmbAqwZR6sOEmn2OYKr2bNM2R
         cMm53h9iQzjiQnd0pwFPd1FZkmwld5n2W53pAu0Bp7fHIgLm9jQRZMCdlq7MSQNk93JE
         ZU5eZqWV+t4SEA1f+B2UtZp1tmN+dflci66Nc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390460; x=1711995260;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=emausEs+0xPWUCh8CYA5jEusf97U7WYcS17O/2RGb+8=;
        b=vLGAABzfsYR10bZmxCchzWauIcbUUeNdJoMgq3gqdKCff2gB1b+kuzhaoVLvPW+azs
         kPl1z2R1qROQ1wcaHXyF/vFCNcr6odWZdFK2eBrNw9ISUEjYF2xDCR64rDMWc6pBKbJE
         oNUXnBPPsOrUYUWnlBVP3qQKhAEMYT3WoyNzgR9jm3huTu5ocsvKjXhX0BmMUzSXBXsU
         LEM3sxFrOtE+WZNvtec4+D74lzmvjbXiex0hE+Ugqo59fYxu2IDgeEA/zoqobxhu4Vga
         Qt917eqjMXGRJBATY4tXRLvjkdMV+67KvkuvKyxlk6kUyBTQWteJdA0x5pNZIDj986Lq
         BY9Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVGGM0Gfufp/Er/bK2SLnYb87N5ArcD2455b+XIkRSW+Q1BGegfKC3tFQIZbENci1Z3EpXeck/eKapHeOvALWOa1aRCf2pZKRJe
X-Gm-Message-State: AOJu0YyV0Wrs+CWO5uQlgA3pSgzHfzSdsY0u904FfEvB04ACNrQbGAaB
	d7+CtYWI6L6Dyu9vsPfdHaasahD2HAL6rEdUqPnoDdjXM9PLzsJaPiA07d5MTbA=
X-Google-Smtp-Source: AGHT+IHnd+TsMpIIKhT2xb13wa/tPyE4k0jwrUsAE2tbv/GR1skJmhsXc41ribvSUOkY6y30W8RDUQ==
X-Received: by 2002:a05:6870:1652:b0:22a:4f78:5be6 with SMTP id c18-20020a056870165200b0022a4f785be6mr1994032oae.17.1711390460544;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:7896:b0:222:6d59:56da with SMTP id
 oz22-20020a056871789600b002226d5956dals303763oac.0.-pod-prod-05-us; Mon, 25
 Mar 2024 11:14:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXrWzJuhZKuHzLfpt0kk0dWIpmOvmovQTNKKfz4cRodCiYSFC9rT7fH5t7UbbCOE4pmhUYSERGrqYBeBiESMfDaUkqBDlF141RqWelrL55aMAWS8JI=
X-Received: by 2002:a05:6870:d252:b0:221:bbb6:4136 with SMTP id h18-20020a056870d25200b00221bbb64136mr279987oac.6.1711390460166;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:20:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWWTEyR8tIFHVEOHFeAirOnH7FWwsgGUSZcqBgGhZfq5aES84Q+uc7Sy179Ix+DNQWASsbqpeFaBqrPlTZyKd+6wVQOHGE18QLDwM/amA/qBXPFuS8=
X-Received: by 2002:a05:6820:2918:b0:5a5:639a:2fb2 with SMTP id dp24-20020a056820291800b005a5639a2fb2mr131444oob.0.1711351222552;
        Mon, 25 Mar 2024 00:20:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351222; cv=none;
        d=google.com; s=arc-20160816;
        b=XoVctHq8I3KSJYwGEyMh0Dfh6Sgykycb6qjdWAwAUJYEuYde/CRIGh/7mxXK593yBb
         yWROhxwssRq2AA04CzogpG8tzs+wLlfmTJHvuGa8reOWgw69tbvLKh3BG0JJJwCoEs2X
         573QBqNMZzbYGdPwK8D0Vip8A8LE5r5EorgwEj/J91pFSY30419Wnblb32cnI2IAoQ83
         jvgy12BmBe8WC9VpGp7i16l+Em+aluiab7ObFpOjIAbYyGs5LrlAGa7ReMKkzJnY6gjZ
         uVwZtiweTXHIybJM+UeRNsMrXacHcQAv2WkSydb3+Gy3xeO3xsjUaSvv1e31u6NHU7sJ
         xkgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=/lgGBhtkghTv64e7uD1SNneGxZlpozu8FKoaQFqRTbE=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=hDnat/4V91YT0Hcy2CX65B4PVkvMpkTAp3wNcwwwE3L4a1TETiiyvWKv3FJzu1ETq8
         87qQXMqg+7OA2GaL9UW5inXOFe4do9D7Q6UjbRyZ2pf5i/5lNYwtJW95H+0gtcgymjZd
         0jlTMpGyOB/09I+pMz25y/30EBoZFD/tpDIvx/utF6Ip4jc+KvEZ6/cnSjH+ZoFLsyCS
         FJbJdco8B+DnKG6tlVYZMWPagXY8Rz651eUBx4NAUPApgJ/sF5Z5FB4DfZPu9E/h9hcw
         wrCPpeBI4ucM4fz8yU1BHc7J66FtYqGZZDWLD5h5KnSC8v5lWJ5nI8v1czt+B39RDwT8
         sEQQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R5g4IRlb;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id o7-20020a4a4407000000b005a4f28edd5asi1704123ooa.97.2024.03.25.00.20.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:20:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4148C60DF2;
	Mon, 25 Mar 2024 07:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E96C433F1;
	Mon, 25 Mar 2024 07:20:14 +0000 (UTC)
Message-ID: <be1655f7-3ae0-4a5a-ac35-95e9c7d2da02@kernel.org>
Date: Mon, 25 Mar 2024 16:20:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
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
 <20240324235448.2039074-5-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-5-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=R5g4IRlb;       spf=pass
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
> Turn __scsi_init_queue into scsi_init_limits which initializes
> queue_limits structure that can be passed to blk_mq_alloc_queue.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/be1655f7-3ae0-4a5a-ac35-95e9c7d2da02%40kernel.org.
