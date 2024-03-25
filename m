Return-Path: <usb-storage+bncBAABB7H5Q2YAMGQEQRWPEGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C4E88AD56
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:21 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a55f6dc981sf835959eaf.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390460; cv=pass;
        d=google.com; s=arc-20160816;
        b=U8MIy551niHfRKi95AN7mC4cq2sdGI5Y7ZLItrfmz7/uSeUMcHj9H7jC3rqIuvGugb
         HVcxO/ifzDIx28XY1wmOOftr7x9TLqBXg8qFTj2HFwpJ0DzndaIUnInHxwWNidPXpxf9
         hiN2xA3fPsAl5dINn63nSCqxY8o3WLo/zNI1DAevNn8suPKtALVyyQyB0H12OMEEuvhH
         ku33NUmAFlPxsB+cYhaf/4/YZLZR8QMSgA0CSV3UULeUNVXfipjnnjkKU7ZGQUvAcEJa
         2jQ3VywZC5Ksx7SoCkYWh/dZ7O4XJbLgWSmPuIsffI/dmyLK4fEcmEpxPhfTU2NV4dqj
         Ta6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=IH5xCkN7O0JeYkV1hz+yZG885XDT5oqmKC9csV7765Y=;
        fh=R0VeZpEg0PHBwa1tMtF1+xLxMzzbNV4i36qe2nx0ulQ=;
        b=vsqpqshkBfjK3OTgufs5F7AVOujSie9jyaurKuGP3s9ZMdlyMDq+/sdx7v38sAFU2m
         pCoNNZxSfVxLTxv9H+Slkumh1JI8rLlaRY9KQ4lPIVe2AYbLga82Og9V9sDWScxcSzIC
         Ojg0v8Y8i04lNrufhytvB6pqnaf6DGPC8d1peIogQYkg9S6Pk3KNPxYuDvpmVhhllo0g
         dqeYZL5IHLqb/Qre01m6ulcI/2NE5H8CANJv8TB4WhVdVjvry5CSJ+8ZTo8ybPhsMlq0
         wF9piuEiVve6OwWICIHSWr1QJHBW9Hheblg9ZCIk/WQ4j3LtRmEw9qqwwg09ru0nvD8N
         IZLA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cQqk9TXB;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390460; x=1711995260; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=IH5xCkN7O0JeYkV1hz+yZG885XDT5oqmKC9csV7765Y=;
        b=b6UpLuT66NafCAh+bBaCGKVv6EvXva4s2Sgd9m00bAteI0GBaLdPuXEvLpAdah7LP6
         BTHnJT4Fn6nvip1PDfuNHPeQMn27iCXBTyo+VgI17ID0wo9Iz0OJVaVHE/ObDPxyjvjM
         qhA8FXgRfjjw/wyoafshT0Vdi8Ez5tfGrzSRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390460; x=1711995260;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IH5xCkN7O0JeYkV1hz+yZG885XDT5oqmKC9csV7765Y=;
        b=INikG/rto392zfibZfyGyIaAx7schR74banKMuGpyf4aU5G30zbQwNS8tzZQ68W4TA
         ltiYO+mCaCgLSK8jrNvWg00OejKZeOm8SqU07ezcEksGMy2rdmKvYqXJwE4ywG+SxQ1O
         VWq78YRZriOI3a/vg+O4kY1r+jK6GMRXeMo/W6sG4Fh1n8A/mwg7aQ1rhU+lwmexLZaC
         zrARoGb9Br6XYVlWQzqAaGbMC8KkMBcQlojrv4FzONOPpJ7yzzDaoqnMJYSDY2/C0JtP
         +rxulGRzenW3Zg3Pan/U0PQbWqnWrdU6vO4D43ojMZpLabc2RY4n3hWP2yf9htMGvaq6
         n5OQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWyw6KNvunOsnLjdbaRDbmRl0m5g25S4eKnsyCeHP3k57t2JoTbnHxwdea/D8zRlG8oPUltK5bJ580vdKd0vhkqQ2EBBNaFy/Sl
X-Gm-Message-State: AOJu0Yx4FoltUe4pre80TZzsW2BasrDJvuHgyPeZFN5WImlRMJo8nB09
	j5m4lW2zheA7uoQ/KPoh0KCmXjVVeqwkoVGjTSSeV1LoRIlXUJMH0rvQUzhCx+A=
X-Google-Smtp-Source: AGHT+IElJoT7J3YhovZNSgUDVEMWnc3AHSQ0M9BkIM2dY6keWbKh/6+9OGkT4qt+qjDyvN0GOLSetQ==
X-Received: by 2002:a4a:ee82:0:b0:5a5:25b9:dea7 with SMTP id dk2-20020a4aee82000000b005a525b9dea7mr7375600oob.3.1711390460563;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:814:b0:5a5:468f:d911 with SMTP id
 bg20-20020a056820081400b005a5468fd911ls1753541oob.1.-pod-prod-04-us; Mon, 25
 Mar 2024 11:14:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXemEeJ9rJo0oWMXgAhNVu85qquIETO3G5wIj5WaJdQuid6lRLM37fM7s5ouaICfleWMqV74lk+0nv7DZgUHMU3scXYP+73FNZPRwQJMe7JJaWqy/I=
X-Received: by 2002:a05:6830:2b0d:b0:6e6:bc33:b7b2 with SMTP id l13-20020a0568302b0d00b006e6bc33b7b2mr209441otv.1.1711390460158;
        Mon, 25 Mar 2024 11:14:20 -0700 (PDT)
Received: by 2002:a05:6808:309f:b0:3c3:c0e6:782f with SMTP id 5614622812f47-3c3c0e6797emsb6e;
        Mon, 25 Mar 2024 00:23:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVr8ipaXMZR1LA2Q/3FTwqfPNKBvoHW6Dk42ybvZ8XxP+6YwqqGN//f5zmYXXmYqGM4h6Zlm4vWrKo1RQdRNDAY+6jZjU9hqdrfxct/0PRA5HyCnPE=
X-Received: by 2002:a05:6a00:2ea5:b0:6ea:b073:be46 with SMTP id fd37-20020a056a002ea500b006eab073be46mr708069pfb.33.1711351403193;
        Mon, 25 Mar 2024 00:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351403; cv=none;
        d=google.com; s=arc-20160816;
        b=Wug0hbJev6cf0qd4DTgu1IoQeCBwHFbp7y1V499PfD+BEamPNZtfB1t4/ru8lPXyVk
         QyR7cZjHz+iOoISdXIVsBPBz7rcTCzBIO2h8cPm5i658RHa7AWURIL9jOz0oYEXtfQEd
         Q9WWK4iipdbbC80fTq96UWdgmDtIc/fDVJOYMt2j3bPqYuK9jIVXRUBYU3UtwzisITVO
         BTeks8oymdXeJp/UVb1YQ/XVU3JlNp4Vl3mHxfgrSZvzpZbpjtmxd6O4Ey9Xc4NVL91L
         gNQm9Yf57Xk1WUd8HQUwLzBu+81LmjYg/soagssv/EBgMeAIVwZ1NSFIHphj/frF6iQd
         er2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=swf0HYUjit7t7Oy6/Im3Hdxis7CJmVTv03SkCOUhLN4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=vYDo7p+HpKIJKp6si2vL2P0nBZVHpTBqADe1NRsHP0VvJ/1G2yCImMi8AJiEZR6N6g
         Ufs0rYviT8CqzcmGNL8Mz1m/48l1HL4doNVr0o2X+bvKq736f3xq+ihFj/tC5fk+QRnf
         RyVVLEdbRvMKfkKjZNzAt6Fd06VLn6N0ABHm3oQ2m8AstGwkSR7L7khbJFh+gJ2BivzH
         6lNoFgHuKln4MTOxi4H+TLDaS0S/apV6oB+G59zA4f2Rg1uUqCyzwa+9yJ+BGk+dOaTn
         7oBg5A5Ovk+3s6ecCgkZ21PNYLlxg6lLftFvZG0vPcbZoJzU3OYN0oginXVTrCNgqZvI
         jGQw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cQqk9TXB;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id e15-20020a056a0000cf00b006e6ccd6c79dsi4595480pfj.291.2024.03.25.00.23.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CB84ECE106A;
	Mon, 25 Mar 2024 07:23:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F153EC433F1;
	Mon, 25 Mar 2024 07:23:15 +0000 (UTC)
Message-ID: <08451976-7e39-4c7f-8bf5-5eeda4316c4b@kernel.org>
Date: Mon, 25 Mar 2024 16:23:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/23] scsi_transport_fc: add a
 max_bsg_segments field to struct fc_function_template
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
 <20240324235448.2039074-6-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cQqk9TXB;       spf=pass
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
> ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
> having it set a queue limits after creating the BSD queues, add a field so
> that the FC transport can set it before allocating the queue.
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/08451976-7e39-4c7f-8bf5-5eeda4316c4b%40kernel.org.
