Return-Path: <usb-storage+bncBDUNBGN3R4KRB4FWX2YAMGQEYRMMGHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id A5818899567
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 08:34:25 +0200 (CEST)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-516be4577bdsf1399934e87.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 23:34:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712298865; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWQiwmB6GwufpksW1IpVXCs15HPDxMrc7RmAyyEcrg8+OZ3Po7h0zaMxP6DYcyfkbP
         OAdDQA6ySX04kW9ThmzRtSITtoJNgZhvWaj+WLp/ztq12VkjbZ3ldA2mLIJ0ACXKn7NG
         Etjc8dyAn4FxmsUi+Lg5+UM8LcHnY+7jEQtv/x0rRK5ael++vArAg3gMHQGFS2eAhIne
         AJHMH+5AtSDIpqy3uuwmMkhCd5HRjj/IO9DErNivattP9c64Nk4k7homxY6BerLZqGAG
         435iA3iCqow91gZRaRev2G9vnFySlCJZyedMEWW/SyUCkQYu6e5p0WkiVGe0Zq1hgK2L
         sVQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZHejwDk10zpyD79aP4sVlNG8dBSTAqG1Jnuly+mrhG8=;
        fh=+pKUxsXBri4WARsSQ7Fh85+/v5i8vtjYaQbXRPkfAD8=;
        b=gxJNM2bI0tGt6GGEQlUNBkdqfBTkVNjw58b+a23yedXz/+wJeVs/FpyI4leaErxvvK
         H7Wu9/73xOTKTR6TKKQwUGVy6lye7U8WJyBXWQTnpDbh84JTcNolOsm1B7z4T6hW9PQ9
         BeYFA9JaXgqi/Oxl4dXwmz5VzfX3MB4RVwHIkubBcI5KuOzgb8SReIxuS93XFw6F/+Tv
         JvDd7gwHx0SYVXzJmdBxjmjCKcb5q3C7u4yrbMYdYDNIUZ7vFdKKue42UWnazeHIQqMx
         oiVMtB+AdYHuFaETb5/AsILfmjERK5dSqY4i3bvAk10qxRdFc+JLTXy/2JnpP79IvuF9
         au9A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712298865; x=1712903665; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZHejwDk10zpyD79aP4sVlNG8dBSTAqG1Jnuly+mrhG8=;
        b=jJCXhNqUEwy+ECDztE7RoDBCgEpeix09mBkCkEcusni8T35UWaeUSoSt3smrRq3kze
         2lJX9Jmr7jFZ+ojVFKydgNIvVzOKO+1+cOsdZSqsBICaksaoBWFOA/nlutAgC/8YoKEC
         vQ/sjNpQQLAUN70+JGCDAQIbOCv6IGjwsVmZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712298865; x=1712903665;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZHejwDk10zpyD79aP4sVlNG8dBSTAqG1Jnuly+mrhG8=;
        b=AGbLCaOfuBHY0I68gbEgEfmo9w2KjKs6hClz/UfwgPjsRQkXFa8Fr1ZXlJbN3NGK5h
         JqEPmDt0aSvWEEpmFltH8ImWfNh5GCgDra8C7OE2Sc5cV0R5wTYg7j81hazLWThNwtFJ
         BKg9Blv/TCh6LCfWB4qUx3jlRw3rGiGNbqNRcC5lKRkun7nPfWh8Qjvf1a3oZ4LisPY3
         MaU/AZ/j99Vc9jgv/cLIelu/O76AniO35jwAS/yCRm26f5T8xN/B8NwK8ha2/LauBZyQ
         I+buTcdpvupOcQfnbPDjmb2nXRRHWLY3zlOHo6qf54DUkVy1fBr3QlmI4f/mFbaspW8O
         b69A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXYbaLmlg+7aNOOScfoPFyWg1ScU/rbX1XD3tcULr5uatN0GwboSqt16Deoepw3PABvNZRzSRon8Dqo+4q+A7oeHY93p64Y4cmT
X-Gm-Message-State: AOJu0YxAZ/gPD5hytJ/wPJvtli0jtklePP3XiOXQuHq4kuzY/N+XkmWo
	sD7EXuXu9e3J4ScAUdtx4ZlNVaDp5T65w3RTB5Yl/chkQ0MWXX6gQKExeo6R8SU=
X-Google-Smtp-Source: AGHT+IEtBD1pU6oI3G19gT6sXQcJh7QI08HD+N1wugKOTwhOBK2HQSkS4Ux7XD54abbdl7AlrzA8qw==
X-Received: by 2002:a05:6512:2387:b0:514:cbee:a261 with SMTP id c7-20020a056512238700b00514cbeea261mr429830lfv.27.1712298864977;
        Thu, 04 Apr 2024 23:34:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:4571:0:b0:343:8a1b:61aa with SMTP id a17-20020a5d4571000000b003438a1b61aals640019wrc.1.-pod-prod-04-eu;
 Thu, 04 Apr 2024 23:34:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVoVRI9mswOKxJ25cwk1emGkCpzdZ7UtaF7ITeadoDGNb6ls0YWiOx6mt/wfHa898ahFCPA+zX1PAJqWdHu+4hdUYau/u2eaMxIpl5l1Irl+AmFFa0=
X-Received: by 2002:adf:e901:0:b0:343:97b0:fd1c with SMTP id f1-20020adfe901000000b0034397b0fd1cmr354969wrm.13.1712298862848;
        Thu, 04 Apr 2024 23:34:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712298862; cv=none;
        d=google.com; s=arc-20160816;
        b=NYv6pbL8m4Z87XV/BUdzNroDhT9eJE7/lQ29hVIPs1JP+cYopd6AAT/LTjR1J6zwcl
         3C36Km+voxW20tExwtlz+ymNn4gYZ5FZZ4svNl8yIRB6oVcp4DlCBXzn65dWzmg2KHvk
         bYIt4R/goqpLPWpQVNv0XNnT70vJAdpYDX/P2myTqI1edbPas17atla6DRIHRlLyK3Ne
         a2yo9SX/u2kCZtwIuqlfem3LYe/QZ+5UoZGwmU4u1cXYFdORW8S9zbkNYO19QU0UNwr4
         TR8PT7eIg1UZKQamccO2ATTmcb2yp9lqJoQAm9+mQLJvx5ZgoArCqO3jn0+sdrrc3fId
         YNVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=EXG66o3VvTLv1AywafRIV4xRi77JYxDpv3asC/GT9J8=;
        fh=O0spm9G4llVPbyHhJ041MDy14lImw6/CKpM6ogn4cVU=;
        b=NHFE8vwxtLG8wDTLhfmNdQRpL6sG9s7qigDjN0XruiVqpibu+ld+6rglj442mjma8x
         TdYPHW4D/6n3Fns/TZFxWuNUBT9CJxVUHADjwVpHQPIzw566mWzGzZjdWCpI63XzoplS
         WQf6vFYWNXJ78yGtrL7JU++2VB2p/TpiaFou4nz02tznCpQu0o+72SLU2K1aw42pI/f/
         i1RrOGvJb99hBc3vvot5n8xFDI95TsZ3/MxFyMWbm/DIHyin+x2YXWlnsALB+JcXRMkk
         UlphWn0+UxwPY8LO1e7y45Zi8agh8MXwj3U0C+HWvZsp5TQJISCOzbdNjP4q/aFUhPMK
         H2Kw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id n10-20020a5d4c4a000000b00343d5dd673esi582200wrt.848.2024.04.04.23.34.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:34:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 2BED168D07; Fri,  5 Apr 2024 08:34:19 +0200 (CEST)
Date: Fri, 5 Apr 2024 08:34:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
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
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Message-ID: <20240405063418.GB3480@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-2-hch@lst.de> <fd99a58b-37c4-45dd-a738-cd2b49341c70@oracle.com> <20240403125116.GA19332@lst.de> <34c1f31b-2a67-4c3d-8efa-b08a50f20e31@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <34c1f31b-2a67-4c3d-8efa-b08a50f20e31@oracle.com>
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

On Thu, Apr 04, 2024 at 08:14:20AM +0100, John Garry wrote:
>
> john@localhost:~/mnt_sda4/john/linux> make C=1 block/blk-settings.o
>  UPD     include/config/kernel.release
>  UPD     include/generated/utsrelease.h
>  CALL    scripts/checksyscalls.sh
>  DESCEND objtool
>  INSTALL libsubcmd_headers
>  CC      block/blk-settings.o
>  CHECK   block/blk-settings.c
> block/blk-settings.c:263:9: warning: context imbalance in
> 'queue_limits_commit_update' - wrong count at exit
> john@localhost:~/mnt_sda4/john/linux>
>
> Is that a known issue?

I see that too, and it really confuses me as we have the proper
annotations there.  I'll see what I can do.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405063418.GB3480%40lst.de.
