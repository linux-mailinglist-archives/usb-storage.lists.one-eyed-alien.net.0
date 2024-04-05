Return-Path: <usb-storage+bncBDUNBGN3R4KRBA53X2YAMGQEXZGYDGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C16E8995AD
	for <lists+usb-storage@lfdr.de>; Fri,  5 Apr 2024 08:43:16 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-41407fd718dsf8625635e9.1
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 23:43:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712299396; cv=pass;
        d=google.com; s=arc-20160816;
        b=CrjErEbci7vZit5YfpCS30+YnxjEQWeVSvyunRQpW0QAEAnWFd1Wa98h7vaD1C0ULd
         +blKjWjICGr5UfAemR8o/I//rPF5dNUYLwt9BKyQV3C4C/lFd16JvMQsEwznTp0AgOrt
         17jwCc2Ed4FiDCFDJKLotJUAS5bX/TZbLHP1zS7i8gsAVB5n8SvJS5kYGFimGTmhWLvu
         TPg77meRMtgZNaCdzcGtPHr/HJ/U3B4WyrM2LqJcZW1vSti4vj+tZ8A6LOzh8bZscbxV
         KEi2GV9Re6Lt/kV9DK0Dzn79HXdkqG4wM142ToqytZG4VYXwF68EGrUesvuqTdQZlklP
         19TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nvt46dbfjKqZrdKRxYvizI5dmCvLio4Fnc3GkYuG7KM=;
        fh=Mpvpl5Z7N1meynRSzDgr+MHRn9AzrtGFxigvJ7MrHAQ=;
        b=WhHYKSGzI5BHPHU56LHMwRnmkObMsiBqV9jsYwJu5BKjwLPMVeZk1OvhnjAwbr26kC
         wJx84habeVIvVTom9czcU7mcd1pwhOjuZFyBVOfIYfTl7q2FHEDe2K85rRaP9NHLyOGT
         2b4kEN2xLKIGsvPDS6yQWD4ZDuqSoZ89B8IRZmVAmUUt1xLiimWenjlit1G2cgGRwm71
         l5NoUxxoMZFfRIzNsw7v+HinVbeYcvaVSqj56/wlMsPpivsx2DwtqNCeYZksJpnZ0cBZ
         VYcWi8Mqf6dm03ts6T3614qnTMG/5j8KG1ijxwqoNWrSWl0Dh/ovyRqRu2/MAfir/RAb
         YkOQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712299396; x=1712904196; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nvt46dbfjKqZrdKRxYvizI5dmCvLio4Fnc3GkYuG7KM=;
        b=cc8Z/edkHDN5THc+lJrUZntSR2bp70KgHkb9Fdc7b0h75VVtJYz1y/Jnzl+zrL9OXq
         oB36ypBgl99T5vzZEBMnJGjnKuzfja7NSyN3b2k8jWKnv7HTUzu0YpDki7ohArOnUkhq
         CVQxOUmH1IYdcjMNVHPV0WDDK8nq287LOn4HE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299396; x=1712904196;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nvt46dbfjKqZrdKRxYvizI5dmCvLio4Fnc3GkYuG7KM=;
        b=GtmSNII2yEbCIoJ8c9KN/dtPPyhPce5h8s4C5mHxzCSLIVnTxnhJGAPCi9lDNQms0/
         +VfAkSkwxjK6n18OtwOOTjpS0EG4xB+eMWDXU/l7LvYDWxQsqNuh+D6Lrv//8AmHEUeg
         KYYaXXsRYX7rYy49kGsU3R7vBLglfC+d0wEoJtGSARI2/qaaf6Vpl+Bh+JT/BVogDHcH
         SPRHhhJRTpeW/vburTah6H5yD38DJFdmRIKbieyzD1btXrbqd+N7Pme0aOo67uqTqMKr
         t+0T4c2oi0iCp27XYb5goLdkXjPLHf4jq7Fc/rTYXia6yntpGoq87JWhJnyp2DO1V5FD
         tgKg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCURMMXVstTp/MUvjxpy0ugf0LBx8AjWe5vA713FRJ/V6KM/coZzXJYnm1qhmgq6OtWLdUWOl33pfscOAv+rFF9bQhZ6gEj56uDL
X-Gm-Message-State: AOJu0YxojxUMSnFTEA53pZ+eZokl5QRzDL1+K3LCa5TKpZqKzX/FoSRx
	SXxxjirTw+jTX1QMew5/3to1zarH8sWOXA/a0bfDvka3Ya9s2PZUksFgMuL44Dc=
X-Google-Smtp-Source: AGHT+IGKr1AfSMnK+pK18AesPXEWPbFX20ISmx6h6RmDitjjv9oUStQt3p/g0QkMHpprNV4qa6wl8w==
X-Received: by 2002:a05:600c:4505:b0:415:6d51:8f8f with SMTP id t5-20020a05600c450500b004156d518f8fmr433763wmo.15.1712299395801;
        Thu, 04 Apr 2024 23:43:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:5119:b0:414:8085:fba3 with SMTP id
 o25-20020a05600c511900b004148085fba3ls930606wms.1.-pod-prod-09-eu; Thu, 04
 Apr 2024 23:43:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXShVxhTCFSIfI1e6HLDb+1Y/z7ywED83EVFw023g8zot3/pdy1OC/ppwrQQfLUhGFQ1d57JWxdsk3t6rC3dbzVOPjnGe6YzA1aVcQo2I0COU1oOgk=
X-Received: by 2002:a05:600c:3ba7:b0:415:611c:cb1a with SMTP id n39-20020a05600c3ba700b00415611ccb1amr409596wms.1.1712299393753;
        Thu, 04 Apr 2024 23:43:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712299393; cv=none;
        d=google.com; s=arc-20160816;
        b=kBbDgmmDJIvmirXkEgcSD2ekRhrhmeQuCduSBxpET4ln7BPFNXVeVZmHFVGFMFmBSr
         qOX3Tu3YHeSAVn/MwzXSB9ctLFYmzQydVssE11Toi1CjxvQw8cc1SW4FZAskPWAphKfD
         0gEZdNzdpDwYsiZZ+RceOuIWG7qdXfQoRlww9EOCG95n03GBtbHLWAIBCWNouWgbMzVM
         b8UTbRottBnQnMnI8/dTR135SLpfIM9H+LHEXbl1FIls8UwcliMFF2FF/vcW3OwBTceH
         VTRmVfl9C6Ooof8G9ytwbfKuXc91+qaCKXGzF2c2Yb0rJTIeU28hhGIM+IzT4TBY4mkX
         gajQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=JnE6XAWcp0zyMMD0HC3taJtptli6y5ePW+4Dm2Cfkqs=;
        fh=3VKlqmzP7SHoeH1936VRPBQxfTr1xbu2brwNQBQLRVs=;
        b=iWjKXApqY2nzeloCZEyJGOOP9AgJIqTpsQxpqqH0/Zu3LtV+RWBEBlhz4rmhoDpz4D
         3syf/ihoeMFC5cHTwlsyY1hddN88+bQP+ql3jGvbCMbp4Ba/gHvPjDWSD7PNtZE4ZdlA
         RKvvuvhkXz2mLMWYc46X4SVq+pLDzg+g2vdqBpNGYb2Qtcx8Fxz04XPMLsLa8gl2YlCT
         penbi1+tszEKUZdd8aLCWuJAQ6BBdKOQxzQOh5k4YxqIlU4mJEihflGMSkxet2N0kHvn
         2moeemVaaNatqAIgKReENmjMihcAYRs7nbXLv9p+jKU+7nSJrq8yLPpuFLJIv7W28ag6
         i2Gg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id fk12-20020a05600c0ccc00b004148b8a2801si600929wmb.217.2024.04.04.23.43.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id C749268D07; Fri,  5 Apr 2024 08:43:11 +0200 (CEST)
Date: Fri, 5 Apr 2024 08:43:11 +0200
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
Subject: [usb-storage] Re: [PATCH 05/23] scsi_transport_fc: add a
 max_bsg_segments field to struct fc_function_template
Message-ID: <20240405064311.GE3480@lst.de>
References: <20240402130645.653507-1-hch@lst.de> <20240402130645.653507-6-hch@lst.de> <f272dc57-dc2c-46f2-8390-e801fa5c4bf8@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f272dc57-dc2c-46f2-8390-e801fa5c4bf8@acm.org>
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

On Thu, Apr 04, 2024 at 09:56:45AM -0700, Bart Van Assche wrote:
> On 4/2/24 06:06, Christoph Hellwig wrote:
>> ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
>> having it set a queue limits after creating the BSD queues, add a field so
>                                                   ^^^
>                                                   BSG?

Yes, thanks.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240405064311.GE3480%40lst.de.
