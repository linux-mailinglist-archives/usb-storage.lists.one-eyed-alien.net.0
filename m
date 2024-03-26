Return-Path: <usb-storage+bncBD747RFBYUPBBJXQROYAMGQEQB7OZMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B0588C940
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 17:30:32 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a4965be4efsf4890282eaf.0
        for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 09:30:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711470631; cv=pass;
        d=google.com; s=arc-20160816;
        b=VG9eWB1wj4lL6OwWfdTj3aslD92I96aJD3lWM+HHsjivEIFx9MS32QuMS6WkteKoQn
         hc2FfndBc9zUHq9cal2pue/DL/UoTxldolftGnBKzQLTUZOgbHmAFmC2tprRPdSHox/G
         c8bormtHSwlTBvNyqB+IzPPav439Dl3aEenmb8C94WSZd/YuAq/ybNtAmLG4etrrub3W
         dLEHYUgFk/UNs5Uf8L5ZSfcmJgLIblklPa+ituXiu41J0WI+0C+GTllWtCXfWjMB+qKU
         tzcl6qYiovfEd4cMkqu2DIoWD0kc6Bz4h1XXws9Ai+GI3WhtvLHbeU18McE0wbFp6yC7
         g/bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:dlp-filter:cms-type
         :content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=QGLwGO3JeM7oPn3063y1Xz07vTY2fn4stk7MX4cN8nM=;
        fh=ekULw5bVpWbcI+6F9rBH2VjAYyW0VmDwWuZIlYFArys=;
        b=GL4lNGDl6vq1xnxvaaX7451SG3ztPuveeDrwLM3krchZKcPrsiuPGvWhfUwfYkqNUW
         O40Qf3XApWsci8pFbJdsGeRhalmbUmmw3eKOp7Gu9MKnMtO36mDxmo8KFOSzwhv5hvpj
         lzTC3eRXUYqQcN5cFgGcfbSaG5msPC2PxxA7NJLOltexoURfkDJdROaZvtIEdmBN3v5Q
         pttzoLK33SZbu1LTo5mGa8lfkCIvFIt8Sx/XSQ6wonBhEbAQXC3zxrWbMaVl4d0UCP4U
         3vaiNHUmm2F3K3GpJphSAotcBWInFCiDdVB+OJmMtK9AnvXc442SDcyTa7lVv+/S8+ZV
         yKZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b="Dl9t/6dW";
       spf=pass (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=alim.akhtar@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711470631; x=1712075431; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:references:dlp-filter:cms-type:content-language
         :thread-index:mime-version:message-id:date:subject:in-reply-to:cc:to
         :from:dkim-filter:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=QGLwGO3JeM7oPn3063y1Xz07vTY2fn4stk7MX4cN8nM=;
        b=U40yXT7UTLUfDoxUefZDvXX2agaOejPqntvUW2fxdElqVpAgUKwdoTDrcRfWoy2yfi
         2ehBAvBBqODyDoVssh3sv33eNZqu1t49MvWKj7XtDC4LWOhyJl6To90RSfM/l9kJVR0H
         o+z+YKWgfX5WdIieSU8e6+V7btY9lGpdpgTBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711470631; x=1712075431;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:references:dlp-filter:cms-type:content-language
         :thread-index:mime-version:message-id:date:subject:in-reply-to:cc:to
         :from:dkim-filter:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QGLwGO3JeM7oPn3063y1Xz07vTY2fn4stk7MX4cN8nM=;
        b=sJkIZaWGJoP4gnjBBiQFGTz+gYUj6axBnY+HNi33KRcCf+46B6sui63ntolBZKnXBd
         WVCEnQ1wwgavNlTsE0lRzV02x2P4sNSTYp0KJ/b0rtXP5NzJ9ie7J4eegAtQxxQwZzvi
         xtXYLqETbcWAi2VwVQO+we1LbiyPjk5X8Mmo8/cHqmDjhm9yZiLZQs3RVMR75jFyvs0w
         mna7/9YIcZGTsBB6sWkDP+z2iwZAmURAebymqTwJcYrGNg6r+SvTUevALoCXF5PDajPF
         LTEiGnp1Cu6YgKBMRPDSfilxhHSq5KmoiC4xJ5sFB3nffxKRMiVWftfeWbsvEGaqjgrE
         i0hQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUiWMyRClxlyifArx2M9t93z8L2CAoeXFEWWLTSqNyzsHcwLT25gv6SrAIxLdJEDCgey2Yg4ejEclOGdn+roV1uU8LyOnpSJclE
X-Gm-Message-State: AOJu0YzyqtOKRqin8TJNeW2lMskwTeuPTPZWrsXz19T6SDnNZ/o/YXdv
	5R+DbzpJz7NrbNt+56CKHYT3YVVtY9V3kbHa9lKo0mAIkM/pvoTL8jnUa4+UWZE=
X-Google-Smtp-Source: AGHT+IGwqFEJDJBzIca93OfTMUQzKKvpVA3QYy0pDTWFKuclovg02qvuZSMcZc+Vo4DqsBnLTB1ipA==
X-Received: by 2002:a05:6820:210e:b0:5a5:67a4:d59f with SMTP id cd14-20020a056820210e00b005a567a4d59fmr873541oob.3.1711470630961;
        Tue, 26 Mar 2024 09:30:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:b4cd:0:b0:5a4:8fe4:63be with SMTP id g13-20020a4ab4cd000000b005a48fe463bels2253919ooo.0.-pod-prod-04-us;
 Tue, 26 Mar 2024 09:30:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU5D9FQpg9rbR2ydmOphlOeGKwhp1wTB6TRiDkeYhm7a47MJN+dbryTGjqwiFzkANnLqHAkhbYtNRBplxS3YkeNBu4YCBp+b8L+BcgJCcBDbpwncSY=
X-Received: by 2002:a05:6830:4391:b0:6e6:e7ec:7380 with SMTP id s17-20020a056830439100b006e6e7ec7380mr47281otv.3.1711470630426;
        Tue, 26 Mar 2024 09:30:30 -0700 (PDT)
Received: by 2002:a05:6808:309f:b0:3c3:c0e6:782f with SMTP id 5614622812f47-3c3c0e6797emsb6e;
        Tue, 26 Mar 2024 04:27:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWj0EokPDah+vinQwpVmrw4TJeLovZ8u4dNPP+ZW1zPc9d5orZFlxFHxdRghI+9Sa6yYcXOoylfr/J84QIEsZOFRY6YHA4599pbB0WMiTEUUdhMQKw=
X-Received: by 2002:a05:6a00:995:b0:6e6:57a9:f8b1 with SMTP id u21-20020a056a00099500b006e657a9f8b1mr1843902pfg.9.1711452472728;
        Tue, 26 Mar 2024 04:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711452472; cv=none;
        d=google.com; s=arc-20160816;
        b=uqibAf6remJCMAtN0L+59QPLkXr/n98iwcwRIfUpEXA5A8jI4fAZDjqkbM12AUVo03
         CWHpe7LevbeHYGdXv2vcXbngym1AMXT903tOMIWS2Pd6CjR/giVQmF+WEC0FE5YBGrLx
         YRFOWXjgbdCEEgfcMvjjpYipMh6ru0BB+CBKL3P7FAZ4koxeXdSdVd65XRmzRX6/ZTJJ
         jhVI5JmSzAqpbt2UjY2xcRCeWOXFQAklwS2g8o9LMNPZ4H8FOrnjAMW7t27vGkyhB04p
         /0SrueGeEUHmoJtkUAGbb+EpAOCfM7lsZs7Dv4aa6hOYT770NIcCLHSM8jDNY5ETp9E/
         t+sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:dlp-filter:cms-type:content-language:thread-index
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:cc:to:from:dkim-signature:dkim-filter;
        bh=KvqRDcYvbbDHmK38k5UbQtwFg8UI3HdEkDUZrQqFbTY=;
        fh=6XZQ4Elqb/Ny5+3gl7pUMoT2h/UeYYna0Rt8jSDjI4Y=;
        b=zIxofWiEwWZ2hyupN3rTXhXqfRqzgvwxVcxX9nX2Oh9U0ZG6z96DY0LxArMznn963a
         fnK0QboQrCs8dx6DE1F5aIzvZyTgQibI0q/r3ldBFIs1iSPVq9GE+tiz/AHEIqGYY3SW
         BBViMKmhDzfXWWgfbwhhmbC04H9JGY1oVqLkETx28aKQPsY0QhYYKsgggl9B+U4FFezF
         tZOIH5KsL0BOjB9o86jyjPVV3PS8QiigDXFofdx1/ABRntGmS67bSmCbtRW0xdaTCxzM
         n93QHzS2lNQ5CJUb3R9Gtu+3CZRTC4eItpdWEldm7XudKsE8GSCuHnCn4Qfln/c6ObSS
         x2CA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b="Dl9t/6dW";
       spf=pass (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=alim.akhtar@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout4.samsung.com (mailout4.samsung.com. [203.254.224.34])
        by mx.google.com with ESMTPS id g1-20020a632001000000b005dc893fcd90si9380414pgg.362.2024.03.26.04.27.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2024 04:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as permitted sender) client-ip=203.254.224.34;
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20240326112750epoutp046b0520ab9ef492fa89cff80c7a04eafe~ATPRKJXCu1153811538epoutp04N;
	Tue, 26 Mar 2024 11:27:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20240326112750epoutp046b0520ab9ef492fa89cff80c7a04eafe~ATPRKJXCu1153811538epoutp04N
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20240326112750epcas5p1826ee93e91e35a0a4de0ad20e85d9215~ATPQwBsK-2467324673epcas5p1Z;
	Tue, 26 Mar 2024 11:27:50 +0000 (GMT)
Received: from epsmgec5p1-new.samsung.com (unknown [182.195.38.180]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4V3nbS39lpz4x9Px; Tue, 26 Mar
	2024 11:27:48 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmgec5p1-new.samsung.com (Symantec Messaging Gateway) with SMTP id
	A4.3F.19431.431B2066; Tue, 26 Mar 2024 20:27:48 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20240326112747epcas5p1a1adffea0ebe925790c1ab569af217e2~ATPOQ-GjX2467324673epcas5p1V;
	Tue, 26 Mar 2024 11:27:47 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20240326112747epsmtrp137ea723f944ebf29129353a4198e5028~ATPOPAAg43193531935epsmtrp1X;
	Tue, 26 Mar 2024 11:27:47 +0000 (GMT)
X-AuditID: b6c32a50-ccbff70000004be7-57-6602b1345f0b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	69.0B.08924.331B2066; Tue, 26 Mar 2024 20:27:47 +0900 (KST)
Received: from INBRO000447 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20240326112741epsmtip2c4bb25269fa2afbc4dc9993e625bfc5b~ATPI3Fkaj0172501725epsmtip2t;
	Tue, 26 Mar 2024 11:27:41 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Christoph Hellwig'" <hch@lst.de>, "'Jens Axboe'" <axboe@kernel.dk>,
	"'Martin K. Petersen'" <martin.petersen@oracle.com>
Cc: "'Damien Le Moal'" <dlemoal@kernel.org>, "'Niklas Cassel'"
	<cassel@kernel.org>, "'Takashi Sakamoto'" <o-takashi@sakamocchi.jp>,
	"'Sathya Prakash'" <sathya.prakash@broadcom.com>, "'Sreekanth Reddy'"
	<sreekanth.reddy@broadcom.com>, "'Suganath Prabu Subramani'"
	<suganath-prabu.subramani@broadcom.com>, "'Juergen E. Fischer'"
	<fischer@norbit.de>, "'Xiang Chen'" <chenxiang66@hisilicon.com>, "'HighPoint
 Linux	Team'" <linux@highpoint-tech.com>, "'Tyrel Datwyler'"
	<tyreld@linux.ibm.com>, "'Brian King'" <brking@us.ibm.com>, "'Lee Duncan'"
	<lduncan@suse.com>, "'Chris Leech'" <cleech@redhat.com>, "'Mike Christie'"
	<michael.christie@oracle.com>, "'John Garry'" <john.g.garry@oracle.com>,
	"'Jason Yan'" <yanaijie@huawei.com>, "'Kashyap Desai'"
	<kashyap.desai@broadcom.com>, "'Sumit Saxena'" <sumit.saxena@broadcom.com>,
	"'Shivasharan S'" <shivasharan.srikanteshwara@broadcom.com>, "'Chandrakanth
 patil'" <chandrakanth.patil@broadcom.com>, "'Jack Wang'"
	<jinpu.wang@cloud.ionos.com>, "'Nilesh Javali'" <njavali@marvell.com>,
	<GR-QLogic-Storage-Upstream@marvell.com>, "'Greg Kroah-Hartman'"
	<gregkh@linuxfoundation.org>, "'Avri Altman'" <avri.altman@wdc.com>, "'Bart
 Van	Assche'" <bvanassche@acm.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Alan Stern'"
	<stern@rowland.harvard.edu>, <linux-block@vger.kernel.org>,
	<linux-ide@vger.kernel.org>, <linux1394-devel@lists.sourceforge.net>,
	<MPT-FusionLinux.pdl@broadcom.com>, <linux-scsi@vger.kernel.org>,
	<open-iscsi@googlegroups.com>, <megaraidlinux.pdl@broadcom.com>,
	<mpi3mr-linuxdrv.pdl@broadcom.com>, <linux-samsung-soc@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240324235448.2039074-9-hch@lst.de>
Subject: [usb-storage] RE: [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
Date: Tue, 26 Mar 2024 16:57:40 +0530
Message-ID: <001901da7f70$a0a566f0$e1f034d0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGDLceVEO+0my05uzu8PPcEBakLsgIMB2SiA3ffmdqxzGY/EA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA02Te0xTVxjAd+69vS3E4l3BecayiU0cgwWhCuygMqeiu4u4YNTskUXWwOUh
	UJq2zM3MWB4iUJDWJUzKQyhPQcEagTKLkIoSElQ2hIIiRUUUKuAAicgqa7m48c/J7/vO78t3
	zndyeLhgnuvOi5UoGJlEHC8knYnG616ePv56LMrvbL8bGpvvJVHtg1wSFVSfBCjvxTyObqqr
	cfSoaJBA5r67AI1mlOFouHU7sqbUY2iq6TyGUsvqSXS+9gaGGirnAep+bQCo7dxtDmqxNnDR
	8zsmDLXc+xTdNDzC0Nk71zCkMhtIpKs8iaPp8gYCpVwc46CqjjcYummrw5HtTD8HZfUdQ0VW
	JYZ6bFkE0lTU4qjU/IyLLhXfI9B42maU//IJF6kXukk02vUDypjJxNHp4k4SnXt8EOmMmfgX
	3nTP3b201nKLpLNGdARt1HSS9MJINk4/LtJz6bT2CQ7dcyuJvlyTSdKDfUaSVuvaAN1adIFL
	qyuqMfpqyYx9GVCS9G+lf+Jh738fty2GEUcyMg9GEpEYGSuJDhbuPRC+Kzwg0E/kIwpCnwk9
	JOIEJlgYEhrmsyc23j5locdP4vgkeypMLJcLfT/fJktMUjAeMYlyRbCQkUbGS/2lG+XiBHmS
	JHqjhFFsEfn5bQqwiz/GxeQPzHGkDwU/X8/rB0pQQ2UBJx6k/GHKsIWbBZx5AsoIYFOOZjmY
	BnBx5hnpsATUHIAdNTFvK+Ys9wlWagGw4vU8YINnAOZpm4DDIikfaChLX6p2o07AstRBzCHh
	lIEPjcNVHMeGE7UJPl3MXpJcqcMwY9GAOZigNsCCtlTCwXwqCFosyYDld2Fn/shSHqfWwaaJ
	Qpw9kgecf1LJYZvthE2nhpadtXDsRjuXdQacoeUvguUQ+FR/fpld4XjHlWXHHY7lptuZZ2ca
	6v5xZ9MxcKKqHrC8HbbdLSQcCk55wfo/fNlOLjBnYQRjK/kwI13A2htg6mTvcqMPoEal4rBM
	Q5WhE1OD9doV99KuuJd2xfm1/zcrAUQNcGek8oRoJiJAKvKRMEf/e++IxITLYOkPeocZQO0l
	20YTwHjABCAPF7rx02bfiRLwI8W/HGNkieGypHhGbgIB9mlrcPc1EYn2TyxRhIv8g/z8AwMD
	/YM2B4qEa/nWk0WRAiparGDiGEbKyN7WYTwndyX21f3Ds7HTzkbniW5rQbJv20RX+yoVx3N6
	n8Xlkm236mr6XHZJ+QEsp5EPQ5QfN1wMNX24RefF+zp0h82rueWouGRUH7Vnqtnlb6CoNmYf
	+n3fgsnPUtmyf7jNdVXhl0OfXEzgiSYp/bUTvcFRkdneEe0jnK5rQ/tdlM91R4LEx1+Ob41f
	zVi/S5luje1yKk43ry5P9lSUapXNdd8g9dFTSadt+d+qGg9FG+JeLOau/8joGdF0sK5jx9DW
	gWOiUtT8Uh+0poz78MJ7T4z0rluv4jqmNWeO1C1un6m4nbx6cHbWrCrKfGUuTHHNItQqS9qD
	qOOT5krrujfZHifGr/y6s31KSMhjxCJvXCYX/wvwTrePDAUAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0xTdxTH+d17e1tY2G4Lg19hGUsX4mDKRN04GuIGe91tcSEbiZNHtJEL
	4nithfGIxKogUHmUmRipKyLljQ4LYW0GzI5HpcmkLjBeAxGEAmMIUwGRgaM0y/jn5HMe3+85
	fxwBKRrneQhiE5I5WYI0TkI7UT92SLx27dUR0btrTE4wu/o7DfWjRTRcqclGcGlxlQSTqoaE
	Cc0IBQP9fQisuVoS7t96F+bONhCwoK8l4Jy2gYba+i4CmqtWEdx9ZkBgvNrDg7a5Zj78ZWkn
	oG34TTAZJgi4bPmZgAsDBhrKq7JJeFTRTMHZG7M8qL69QYBp/QcS1r8b5IGyPwM0cwoCeteV
	FBRX1pNwbWCGDzdLhyn4M2svlCxN8UG1dpcG668RkPs4j4TCUjMNVx+EQnlrHvmeL9vb9xmr
	HrtDs8rJcoptLTbT7NpkPsk+0Oj4bFbnPI/tvZPCNtbl0exIfyvNqsqNiL2luc5nVZU1BNtS
	9ngzDClo9uK138gQcZhTYBQXF/stJ3vr4DGnEyVDy7ykcVFax6VBpEB1jBI5CjCzDy+P/UEp
	kZNAxLQgXH6xg7A3PPGATsW3swuu3ZjeYhFjRfi6Jc3GNLMLG7TnaZvYlTmDcH5TBc+WkEyf
	My5YN5N2RS3C/W1bCkdmD55+nk/b2IWJwE0T1q1tFOONrxjPUTZ2ZvbjsbEzyM5CbC6Z3KwL
	Nk398HndVplkvLB+/nvSftxreHWqimdjVyYY63PuUfYZdzzb1clXIRf1Nif1/07qbU7qbYoy
	RNUhMZckj4+Jl/sn+SdwqX5yabw8JSHG73hifCPa+kJfHwPS1y36tSNCgNoRFpASV+esJw7R
	IucoaXoGJ0s8KkuJ4+TtyFNASdyd3WcKokRMjDSZ+5rjkjjZf11C4OihIEKPN6UX+le7eb8Y
	9pNXIetfHEd9dfTTgJjkbzofPvJ7I/zlD80a7Sn3fzK7P1gKmp3Oi+w5Mh6BDoZWDI1IRhf2
	N075vLLzc8UhdU9s4Ig0VRgUslFpbFkpmPvyQE7aTUvi88M3DqdHl53csVPYndFQqm97unHA
	yJ+6cKokMDdrTdgu/sV82WF4j2jEss9BW70ket8QdHt+/N5T5cyG2+sJn4jvx+a+TXrql4J1
	CzORkV6pgx4rxYvdReKHx3yshd6zr+qEZMEXz56oq3wCxJ0r0X83n34huPRQuKv049FYS8Dp
	He+YX/rILbs3bHC3NjM6cyVn2XSkayUyIySCI8J9Gk9OFEko+Qmpvy8pk0v/BZqRtFD0AwAA
X-CMS-MailID: 20240326112747epcas5p1a1adffea0ebe925790c1ab569af217e2
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20240324235542epcas5p166ee39673811a3fad942ab69b10b626d
References: <20240324235448.2039074-1-hch@lst.de>
	<CGME20240324235542epcas5p166ee39673811a3fad942ab69b10b626d@epcas5p1.samsung.com>
	<20240324235448.2039074-9-hch@lst.de>
X-Original-Sender: alim.akhtar@samsung.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b="Dl9t/6dW";
       spf=pass (google.com: domain of alim.akhtar@samsung.com designates
 203.254.224.34 as permitted sender) smtp.mailfrom=alim.akhtar@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
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

Hi Christoph

> -----Original Message-----
> From: Christoph Hellwig <hch@lst.de>
> Sent: Monday, March 25, 2024 5:25 AM
> To: Jens Axboe <axboe@kernel.dk>; Martin K. Petersen
> <martin.petersen@oracle.com>
> Cc: Damien Le Moal <dlemoal@kernel.org>; Niklas Cassel
> <cassel@kernel.org>; Takashi Sakamoto <o-takashi@sakamocchi.jp>; Sathya
> Prakash <sathya.prakash@broadcom.com>; Sreekanth Reddy
> <sreekanth.reddy@broadcom.com>; Suganath Prabu Subramani <suganath-
> prabu.subramani@broadcom.com>; Juergen E. Fischer <fischer@norbit.de>;
> Xiang Chen <chenxiang66@hisilicon.com>; HighPoint Linux Team
> <linux@highpoint-tech.com>; Tyrel Datwyler <tyreld@linux.ibm.com>; Brian
> King <brking@us.ibm.com>; Lee Duncan <lduncan@suse.com>; Chris Leech
> <cleech@redhat.com>; Mike Christie <michael.christie@oracle.com>; John
> Garry <john.g.garry@oracle.com>; Jason Yan <yanaijie@huawei.com>;
> Kashyap Desai <kashyap.desai@broadcom.com>; Sumit Saxena
> <sumit.saxena@broadcom.com>; Shivasharan S
> <shivasharan.srikanteshwara@broadcom.com>; Chandrakanth patil
> <chandrakanth.patil@broadcom.com>; Jack Wang
> <jinpu.wang@cloud.ionos.com>; Nilesh Javali <njavali@marvell.com>; GR-
> QLogic-Storage-Upstream@marvell.com; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; Alim Akhtar <alim.akhtar@samsung.com>;
> Avri Altman <avri.altman@wdc.com>; Bart Van Assche
> <bvanassche@acm.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org>; Alan Stern
> <stern@rowland.harvard.edu>; linux-block@vger.kernel.org; linux-
> ide@vger.kernel.org; linux1394-devel@lists.sourceforge.net; MPT-
> FusionLinux.pdl@broadcom.com; linux-scsi@vger.kernel.org; open-
> iscsi@googlegroups.com; megaraidlinux.pdl@broadcom.com; mpi3mr-
> linuxdrv.pdl@broadcom.com; linux-samsung-soc@vger.kernel.org; linux-
> usb@vger.kernel.org; usb-storage@lists.one-eyed-alien.net
> Subject: [PATCH 08/23] ufs-exynos: move setting the the dma alignment to
> the init method
> 
> Use the SCSI host's dma_alignment field and set it in ->init and remove
the
> now unused config_scsi_dev method.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/ufs/core/ufshcd.c     | 3 ---
>  drivers/ufs/host/ufs-exynos.c | 8 ++------
>  include/ufs/ufshcd.h          | 1 -
>  3 files changed, 2 insertions(+), 10 deletions(-)
> 


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/001901da7f70%24a0a566f0%24e1f034d0%24%40samsung.com.
