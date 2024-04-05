Return-Path: <usb-storage+bncBDUNBGN3R4KRBXV2X2YAMGQEQD2XSIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x248.google.com (mail-lj1-x248.google.com [IPv6:2a00:1450:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id A02E48995A5
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 08:42:39 +0200 (CEST)
Received: by mail-lj1-x248.google.com with SMTP id 38308e7fff4ca-2d6b41203b2sf15981761fa.1
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 23:42:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712299359; cv=pass;
        d=google.com; s=arc-20160816;
        b=s7OhbVckkaCqsRozVSlPC7Nq4K2octHYTnMZD1hj6e+802fQUjheRR0AuA5lZ+na3J
         iZd0XUUuyxUhgj7mQJ8FB/CiRIOJjH7NVFCprV9m08bLBzGaHlsXl6MldsTkJcpsdW/x
         cJhB7aX7CYmsq+WTxvoqTRlo9uOfVkWdGju1Qzi0ULbaQcVwwhVWefRNez3kHU5zJsVc
         AgJ7YKXX2oWs7qKnhvsz5TEluj5B+54G1OBzKh1b+zEEpb2VIbZz0kXiTJ0JEb6CXrHx
         0dE4YYetT2HLVx+7UDh34/4pWOmf8F7YdtcyYtJEEgX9pQLoniRvkrY0AJb12jMxjhVz
         jXQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Mved6jSkv1uv+TC5/cUZwcy+yXK/zkkaVY1AdGi2anE=;
        fh=Qbn6MP/9Qus4E48K2Sr6kZviBfV4xkf8eZjyABFZTKU=;
        b=cAYagMxyHgONeMyyLVVWIGIgyqv9Ya+zB5IJCUXDOjmvC7darXJOwG2laWV2h9ur1g
         O1qgR1msQdiWbQjI8DXCaAAAqKJHnpd70STFe4WLM8nmklnN+d4MqKnS8QyC47vo4RP5
         U3/janTMsxMJgutHaDL2WchJpPcj3kZNVu8Ur7QBdNzh53JVQ1AEqPtYTkibmmeHoKT2
         7rSyi8rx/DLdqHKwaNDvmdJIJH/4MhEnAfPG3uDjdGp8PxEtKVnhpZuQqAchBQldNzeA
         hvLsPZkPB+5pdaw2E2NMgGoXWgOotdDhRwPHq04ccKHx2/PxvEnVsYoOj2LklwQ8IklL
         yP1w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712299359; x=1712904159; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mved6jSkv1uv+TC5/cUZwcy+yXK/zkkaVY1AdGi2anE=;
        b=KS/r1dAvOsHnt0n/+I1f77gtVk3KHM+6vD4/5H0eQADf4ZR+KYfOoZ4OYlg5SIKg6H
         K/AzkOoMjCuUl28lRy9F/Dwn6quNZopQm1m3xTiKXm+yw38eV7gcEO4yr0s4elwp05FH
         x02qHiVJjfpAheIJpD0wCiczlfis++yTruV7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299359; x=1712904159;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mved6jSkv1uv+TC5/cUZwcy+yXK/zkkaVY1AdGi2anE=;
        b=TXw5BT7Q+9AWW1jaRGmL/WJtmQyw/n9l1naM46b1BbBHoSSZVNFETuDz5AOuO1THiu
         JI6vdhuKoYPzPsz2EnEPxj7qjlgaDzdWPdZqs0B+qH8xATbBsVBdhHiE6DQL9oX9EGFJ
         okFDDrxCc15S/4nysPqIOgOEL2ljGJGt3iW+qD9Ldn5hQ8b0zloHCGbmvOia36AylWpB
         86UVjjxcyP9q2ePpm0QP/hHW9QR+r1pZVMXb3s2WcBuDRuVrna/WhXzknqnVLYi534PT
         7OS2M1po5iQLTgaJS6gSRmb+x0Sa0b8Eoi6kCeZTPgj8Yu+8EGTgnIFYtQO88hwBZ45U
         I5gA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUiTmWYOyVjg9EwgrsYarqehcWk8CFq8UdPeQgaxmOVPz9HN0sOTkOMecOlL54cILMZoujp5Z8hHtfWB3QpR0kCs8YueB8RNbuv
X-Gm-Message-State: AOJu0Yz+uQ9mumACSl0dzrAKm9VveD1jlmXdg4bU/GcWsAKU53aJru6j
	7BANc4yMw6dYbaNqkzt5xs5JmA0S+SHorXpOsEbxVN6gXPnHxqskRLqxLwdllk0=
X-Google-Smtp-Source: AGHT+IF7vKkMlC09btcVCjKpWR7UdCscET8jrPY2gorFttp0pQhAwKYPPNhQHjlpydud4IUG7kyoEw==
X-Received: by 2002:a2e:b0d6:0:b0:2d8:60a4:d0d with SMTP id g22-20020a2eb0d6000000b002d860a40d0dmr440912ljl.53.1712299359052;
        Thu, 04 Apr 2024 23:42:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:452d:0:b0:343:95b6:d75b with SMTP id j13-20020a5d452d000000b0034395b6d75bls587691wra.0.-pod-prod-03-eu;
 Thu, 04 Apr 2024 23:42:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVeb49lfyfRjrNWe/NTcYhGTjfMKq6iz/q5nX+dt7dHqHUu0jp62gDOZuMRCZ5mEGySfrV5sHW/VlstyT+1l7hkoJM5NT72fp9CYBiseb1C1gdYesY=
X-Received: by 2002:a5d:554c:0:b0:343:95b5:d306 with SMTP id g12-20020a5d554c000000b0034395b5d306mr430875wrw.19.1712299356959;
        Thu, 04 Apr 2024 23:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712299356; cv=none;
        d=google.com; s=arc-20160816;
        b=yCm6fK+NuXp7GzJPaShIpnGQTXFNEgsGmbbiB5yGcnYZJ9YC9S4U51NeDp9gnGcNyy
         UNsJ8BaB0d3kyPY4H7UMEnU72qVeX3RVnyZIj7QBbIPzjQyNTuItdxp5odF3FYoJftka
         kCOyd46dPtVftckU5jlcCxB0ZkDGCOTyYQPJlR7OvOYatai1vvI88LwHXUmE7InWFm2T
         9+GT15p3qqjmU9sOc2jIYwEi98i8rzmi74v9imJaHZA2x5wB6awJ3kObMJi5gWMfcnAq
         7hv4SJxUjx2rGoZPxvp3BijyEJPmP92r4LH0RqhIt+QSb422XamDR+Ldf/SWmPoL2Vp4
         zenA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Oj1AVCcQ46IyJv4AdOTN0IGf17qjcrciS6h29fZuntg=;
        fh=3VKlqmzP7SHoeH1936VRPBQxfTr1xbu2brwNQBQLRVs=;
        b=F4UEmh2JfDXOrF0Idb3Bg0+TEszExtupDMn56OIZtwtntHQNF0BqW8icbNUm+4iKI3
         n+xwTeTOI9Rp+XRTc86B3fN39xXao4Vk19vRhRzORoXs8zeFSNDqKl4CZQzOpd/7ITgU
         XTkU1W9rQljzTHAB3lQmNKsx+IEnlKdwmQ1qaOugGjGZjoI5AdRXglLWPotFd3TEavGf
         5866bm+SOFtQXGnmkEly+sGLKooUaKTpVtj8RM0vyKFuVBtgFAECX5TAAEa9ELRWfBaN
         7DtCf3oYVNeVIOYeM5W98R9dDwWnd7gsmocZA4VvLQE8RlE3aYBYG+Pf1aLRsb9mgucJ
         oRuQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id y10-20020adff6ca000000b0033e5fb94a9csi578658wrp.587.2024.04.04.23.42.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 6740B68D07; Fri,  5 Apr 2024 08:42:33 +0200 (CEST)
Date: Fri, 5 Apr 2024 08:42:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Message-ID: <20240405064233.GD3480@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-4-hch@lst.de> <8011f224-04f2-40b6-84ad-fc0fb3d10b16@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8011f224-04f2-40b6-84ad-fc0fb3d10b16@acm.org>
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

On Thu, Apr 04, 2024 at 09:55:13AM -0700, Bart Van Assche wrote:
> On 4/2/24 06:06, Christoph Hellwig wrote:
>> diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
>> index ce5445eb9d0e4e..05e061fc6d3a06 100644
>> --- a/drivers/scsi/mpi3mr/mpi3mr_app.c
>> +++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
>> @@ -1838,6 +1838,10 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
>>   {
>>   	struct device *bsg_dev = &mrioc->bsg_dev;
>>   	struct device *parent = &mrioc->shost->shost_gendev;
>> +	struct queue_limits lim = {
>> +		.max_hw_sectors		= MPI3MR_MAX_APP_XFER_SECTORS,
>> +		.max_segments		= MPI3MR_MAX_APP_XFER_SEGMENTS,
>> +	};
>
> Can 'lim' be declared 'static const'?

It can't because the queue limit validation can modify it (and thus
none of the pointers in the chain leading to it are marked const)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405064233.GD3480%40lst.de.
