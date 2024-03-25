Return-Path: <usb-storage+bncBAABBC76Q2YAMGQEDGKM2AA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id CB88788AD69
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:36 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a486a8e1fdsf4335627eaf.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390475; cv=pass;
        d=google.com; s=arc-20160816;
        b=mpC4pDB6N1LrGHknoNAIrPslZ35wXbFornSHsRHmLSB9Dje/E0Ye/cPPZnN8x85Zle
         un3/D3nqQ/W3dnfiU/sygqsCpU+yTs2YT5uLP6940bvuXf+FdNJ6JwnA2QPggZHsqVw9
         OlXE40PydhShAUNfP/7nQf7/RPqxo2CKVhauHaNIEnuIU4A5WPy76tujsOO6UqGGrtbm
         wfkhXL8bUYglru0ag2BLkKD8GvJLCQJbba64hQU3+EYt2FL/ASKT4OF8xwHYRyJz2Y4L
         RNUmZPd+hTWiiRojq3esMUeQE9SdmZaksxAhkIKwcK2gZGkLoWXmfk9ESD2QZ/iFpHsc
         T1Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=iUesx0+UuZ4fC4Gv4srzTd2mfzSpvVUgXet3RrU9DNY=;
        fh=ZpiACQnX0YlcB3IBqNIECZRZrYuek/bTfw1k1qpqth0=;
        b=TB3rnWLXXb7i2HbcTCIN4WeNH58fssFklVLN0Eyi8SPm1awlyKYRYsZ0ciJsScxhtL
         GHiaPMdJVCTg40RJkTq7LinffrhzpYWjBKCxa5QWapTCSV2xd/mLvdAm3Q+Z1Be4o8ov
         098mVp5zcKEnjhSMwqqN04FC8/AhgofIn88mCV3xwrenlOr/7Uq50MpAY9vSVJveQ40u
         9kl53iNA+teYX92dsQ4nV2kebPb/0eWAog7y7wqp7k5ro6sECOAG0X2f+pkqCtquWUY8
         uv4y6CNxuhx79llQMfhko6bbQOoFomPHvolg8yCCB6R+WW9WMFZMa4Sz7xV8IqLSxzMm
         5ZUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BfPij3gz;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390475; x=1711995275; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iUesx0+UuZ4fC4Gv4srzTd2mfzSpvVUgXet3RrU9DNY=;
        b=YzDE9ADK2enD+tThiyug4L6qIa0MwSFwjNh6F8WB+dOsDnQmVrSxrSNX9qH3o7sQUb
         KKlYBWPmYbYPEKOzYLMdB56TnFhflAfPN8bNdp2JFvsRPJPEwUhC7VSNe/XgPve+TG6H
         B0T4E13Cc4aeH+i+3b9TFRs+LTdhkSr8Xv6Eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390475; x=1711995275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iUesx0+UuZ4fC4Gv4srzTd2mfzSpvVUgXet3RrU9DNY=;
        b=EZhjhF/jmPRU69G4mdavcqJfkXFAj6GH3BodIReOzYx/s+HhOeKn2osvO803YbOEgv
         qoVT1bjWKjgPqbRHgzNsKVHygW61eUhEllaoxFhXCpe7XS/sHsGrvUnSOmudj+XAQVWT
         imd1ZTkyKm3ZskRZsy4a/ix+vu9lnvbSq0+hsjSe7ybAS/LfZW87hYZ2xe2/YA9rcYEA
         6ZAldC6RqjQw5iaPb5KE57s422MOy/M/tbeShUiUMK0MiMNLQzYTTp2ihrp8upDPrhML
         xA2RDFEA1sJj/wHRXtZOEq8wgT8NQorpApQzy+KoSdqW7gun6Yo3H5yD43pxDTDs5uvF
         3pMw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUfGumBZDWgH5+82Z7Vp7DBKUQ57AChXOKX5IclbAqh4/20c5xaW0R2gYaR5+IFZR6b14SXJEVYf+KZVJxB1sS7k2D3Io5uqkj4
X-Gm-Message-State: AOJu0YzaB1cG7AXt5sfedqsN3yer+X+U6aM6zoxYH8hyn7ZtaqLo54ZT
	wOyrdjMl7ATcz5QYfTeukUmyOrj56BgP3royI/xROzcb29f3jndE/MuRC6Ynj/s=
X-Google-Smtp-Source: AGHT+IEPjtLxiU7Wm/sv/A7pI3Sz7QIncLnAywC9pxOSuDVjCrUOg8iRQWNzmzHLUe7xspqCdWCEHA==
X-Received: by 2002:a05:6820:270e:b0:5a5:21df:7eef with SMTP id db14-20020a056820270e00b005a521df7eefmr7038917oob.2.1711390475673;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:eb06:0:b0:5a1:6fa3:1da with SMTP id f6-20020a4aeb06000000b005a16fa301dals3984573ooj.2.-pod-prod-06-us;
 Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX1XlZpfQ6fu3rDsJUMLhllTcnhlB8hphHbADbog5JTSV6fQb9pSwBfKPa3LqGofE5510/KhiffFYarTZOQz6P52ZelKZgmXImVx1rL9KI7T/0IWBs=
X-Received: by 2002:a05:6830:348c:b0:6e6:deb9:dda6 with SMTP id c12-20020a056830348c00b006e6deb9dda6mr44810otu.4.1711390475302;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
Received: by 2002:a05:6808:2199:b0:3c3:d110:85c6 with SMTP id 5614622812f47-3c3d1108aa1msb6e;
        Mon, 25 Mar 2024 00:52:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUItaB5+LNp1fjx0pTaYmKIYFklBUnRHlP6LeFHr+8ZobPPW7SSBKIfAYtOFTjj87qcQHS6ZHH/8H78Q8q28C6WgIyshs7JuNxSsqhSqT3W2dZOg8A=
X-Received: by 2002:a05:6a20:7925:b0:1a3:8ebd:56ed with SMTP id b37-20020a056a20792500b001a38ebd56edmr4944648pzg.34.1711353155164;
        Mon, 25 Mar 2024 00:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353155; cv=none;
        d=google.com; s=arc-20160816;
        b=JFYr4uOsr/BLQW8NZpnmHHxzUZqkKoeH3DnaAVFMxDHPtPHhyoPywyAee1tHEFXx4l
         ObuuNzJLiYP8ajyjmk0OSem5o82dQoMclnt7OEMr+5nYVq+KMnrdFWuwJ5AhgRUtTgqv
         O86p5riW/j7Q+HFOykAV5qVWqDPu0eWNTuCglik9V4u9WUGhWTPnnNpKfg3DNm3VXqCJ
         BUUbPBf8wgrUuktJTRPjssfa0vPF3h7S0s2dxpgjhzuLrz7Kd6lcFvcwd2r89oa0KkDh
         13WHlvcguWcODtNVUeaJuBvh2CHlHBa3CGm4Dahef2/APLvb9+qV/Gx00IhsgWb6MwPN
         sXEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=0e9HI4U8BFRJDMkw1xVAtJWpEnV1o/4ci5n91lhMvHs=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=F82QFZkPGrTT24FSUfCtPRtmeMS4/GSPZ/+MFAA7m6n/t0Jrwunnz/d+pZV+5Nr4nD
         vVuP4xvn6UpaTUrpTLBMMraROQPDyinM/LEJ2DON/s6e/NZBEbIWLUg3XdpFHi+MNL5K
         LNmiIqT3R7CJk2zu6EM2GztVhIDBMedlL9nfkBPNeOBlx3tlFoSOh7VT/Uf7GQfSjgPz
         lmks2MGvvKOqO+TGKu9QpEuVQ1ODcpKjGiFhvQveB5L0687/xrkdVkPC6BE7NZIKK9wH
         DtbHLFMkz35pIA3LlLm+w1FVmd75XedzT0+K7Xb4sh1mbZ9NGRXwIc1WiZ8yLeRAt9YX
         xRhg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BfPij3gz;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id l5-20020a170902f68500b001e08341f80bsi4767033plg.485.2024.03.25.00.52.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 62631CE0916;
	Mon, 25 Mar 2024 07:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1373BC433F1;
	Mon, 25 Mar 2024 07:52:26 +0000 (UTC)
Message-ID: <06562b24-1397-4ac3-bb62-f2409503e956@kernel.org>
Date: Mon, 25 Mar 2024 16:52:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 20/23] libata: switch to using ->device_configure
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
 <20240324235448.2039074-21-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-21-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BfPij3gz;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me. For the ata bits:

Acked-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/06562b24-1397-4ac3-bb62-f2409503e956%40kernel.org.
