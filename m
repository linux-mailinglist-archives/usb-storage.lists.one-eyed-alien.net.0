Return-Path: <usb-storage+bncBAABB6GNWWYAMGQEXDGE7IA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAAC897282
	for <lists+usb-storage@lfdr.de>; Wed,  3 Apr 2024 16:26:02 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6e461f6f991sf7013518a34.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 Apr 2024 07:26:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712154361; cv=pass;
        d=google.com; s=arc-20160816;
        b=g5w9jtbaCSYXkXeAfl6nIrn9BwsGiv5a1ZUp0EUd4XbGudCFjtJdjp9wee0jQxAORk
         4lFPu8GsZbeCS+VWwNQI4LHN8iQX80HeSVKIZx9G2puzZ2StFBs2roO9zTzMW6UkZAnE
         2zIWqmJYN0BfZ31/rGhHdL54QmCRi+TyJYfxZ4NNz856u4y5O77A+gu1id17YDLm3bF2
         IcQ9KtdZVmbKU/fNtUYtsfsVGflNwUymMW1GJqc3T8rnS3f7bfBtLZAF6a2VAygjfov8
         Y/HUFmad+jde9FMMidq9n+GfDXWlLnX7QhBFl4bTkmGWTh+Asz+w64x7fwCW9EmPyATt
         ri4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:dlp-filter:cms-type
         :in-reply-to:from:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:dkim-filter:sender:dkim-signature;
        bh=j1oKDTM/UcMSGavE5MQn3L+eNJfyEORow0s/C+QIHbY=;
        fh=7WDpp6w/4yqFGvBD1iun8adjIqYc57YAnB5f6wthfg0=;
        b=dadlZM8XRca4UWnbw3n3WksGsWZectRcTKQdm6xtuO6T5pD+nBEch5wEZboqzstGha
         /OyY/35CSI06wB5ALcj8HenEpLNdOprGsa3R/odV/lI6BZ0UpP1amJsETovL2DLGRqT/
         JuqLT0Yb4z7ifTvg7o09GN+bQkXdvILEWRHneJMPcZF25Ll1f0vvyO0wBrHYthSNqqnJ
         Ph9eHUhtBMCqHEBRWosUfK7/Bzia5iKIXr5GKWzfDNFWlJpbHYFUfmX/2TfmJBEIeca2
         GZuO1kAwU5PH72JKHv6QMZTKW7IvOGIzI8hlcCs9SN/xZcQDNd4f1VyM8mUhO7b5S+z0
         8VlQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=bU4IHYY1;
       spf=pass (google.com: domain of joshi.k@samsung.com designates 203.254.224.25 as permitted sender) smtp.mailfrom=joshi.k@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712154361; x=1712759161; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:references:dlp-filter:cms-type:in-reply-to:from
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-filter:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1oKDTM/UcMSGavE5MQn3L+eNJfyEORow0s/C+QIHbY=;
        b=hr26O9XQSVMO+cFa4GjP8MS+IMYdaRsY0GLHeidNPFGD9/psjF0gXbZXmT0ocmXvwA
         gn43fMF4/6BPAZe/YpqMjsBYxvqIutWPVXq3yli63QH154n6VZv9AwepwzOYQ8sdFveB
         VDIdQDX7XnMaPyebDXnifOX2qDHMWB0a+VC2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712154361; x=1712759161;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:references:dlp-filter:cms-type:in-reply-to:from
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-filter:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j1oKDTM/UcMSGavE5MQn3L+eNJfyEORow0s/C+QIHbY=;
        b=mXnb2MTcMwiO0/cV3GpCcyWhpUavIWlp+jQl+4aE3bQ9m+U2QQxHckWvoR1jtm5oKL
         xAB+Fkx7tn09VXL2O1QHByDwiMsrWhLR9O5oL8Ob2B9S2D0GDqMTNn17Nb8EDrtFU/dM
         O8c88CwaUUdCkOoN1767KI/uxjIR4Et/8I+2DPzFWZVi8MXa2lfiLmTXv5C1nrXnRkd4
         wOizMBsXiHbFABcy/Jnmvw2M4yRhLoLNVOtDdvORZirk1dcLwHxj5XdNsLmsswCum0aC
         EKdkwoEbv9S0qnUiZ8tf3PWYohD4mrJKZYOGRtjjzrijW5MBGLyjuy55wALKIL9M3SuG
         2B2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUfMP3MPzE+rgdoZADY7YpJPXpmN1PUsOmZZKRzFG/ood8wGNQwYLjFK/e201OPhecdkcj2MLKlViKa8ZUSnbiSZWC3Jky3VtPh
X-Gm-Message-State: AOJu0YwLENB3mnmaLr6BpB3lkxfl51XRWOzR9N4YytM++3p+emyg1/ws
	V0BYOT6BsxxGd0TZZ2GPVTMjd7+eX+CNbEG5RBJsKpVScjt7PVd42RGCcOJGduI=
X-Google-Smtp-Source: AGHT+IFcjGrWrSnf0NcR69M0QpxvubhS14qCV1kUe9PK80wAGUXNSjeHIYrEYWXi7QNvW8Q6seIjJA==
X-Received: by 2002:a05:6870:8181:b0:22e:9452:b37d with SMTP id k1-20020a056870818100b0022e9452b37dmr2192467oae.28.1712154361064;
        Wed, 03 Apr 2024 07:26:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:75c9:b0:22a:33ae:1107 with SMTP id
 de9-20020a05687075c900b0022a33ae1107ls613601oab.1.-pod-prod-07-us; Wed, 03
 Apr 2024 07:26:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW0S+2/0cPeewovNvvpd1iA5R3Wq/Y0WsS1yN/ZCYmz3Tn2U94enoFjnH9QfY422aYOiTMo+ECJrBPRT9xb282zJHXr0naGdXod7ozgydPcT/yKzKM=
X-Received: by 2002:a05:6808:219d:b0:3c4:f705:41cd with SMTP id be29-20020a056808219d00b003c4f70541cdmr73522oib.11.1712154360640;
        Wed, 03 Apr 2024 07:26:00 -0700 (PDT)
Received: by 2002:a05:6808:1449:b0:3c4:e934:6e65 with SMTP id 5614622812f47-3c4e9347769msb6e;
        Tue, 2 Apr 2024 22:05:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUfW3nHLEqiUkABTe24Z2JJkE9o6LToeWP7SflKJ3nedhyEOCRDuEYGxXjz9tD8dRkQJWUfujoXLk/zdRP1tgpJG+k6DE7jfycwQlf+xPzuVfDogHs=
X-Received: by 2002:a05:6a20:431b:b0:1a7:2437:3d58 with SMTP id h27-20020a056a20431b00b001a724373d58mr4001576pzk.13.1712120712911;
        Tue, 02 Apr 2024 22:05:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712120712; cv=none;
        d=google.com; s=arc-20160816;
        b=qXjwk7pX0PUeh38382XOer9JTrIVsLW8fHHhxn54AijIJWbHDdEV+rtXUFpTNLSJXb
         vwK3dm61lbfcYfZWbkzABgmaM9kydWvyEv7JGO3tOXh497cfVaFmqi5GWH6VQk4YeyO2
         HlVlKX509WAOx397qwMNeZiNYAVK4Fo2YMmWuJnMq3LyUDdBSCJt7sM7GeOcfgF7KdoY
         FvVda/TvGV304R8SinHi4QZWx0GfA8S0AK7mbzvwkqC953o68FZixLpZFSuDViNgpn0t
         LfE6rwrr5E4nEe7sWpuqwAAly3olQfu5sq1lHaT8OhbrjrvBNBxK5T5cTBvb0dKrJasv
         D7pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:dlp-filter:cms-type:content-transfer-encoding
         :in-reply-to:from:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:dkim-signature:dkim-filter;
        bh=HBVnHnFiaSeakBuX5QW6q4GFFtBNcnBXqAJmCexHKlg=;
        fh=9aauSyI5eQk5b4s5O16fFO5a6x/LXiZqBjzkmnuA6As=;
        b=r7pCpdHeRlrxilLfc/ep5jeLjGCvceMxnbE54zg2puTmoe67BTShPWl4Q2UnuyggZm
         2kcyaPH0APt8u1M4krzocojREJ3SS6rSdq7G1kYqsEZil+jTsgqJRYH4ysCIECmAEsQV
         BVrmIM9zBQB84IbGKoALYPjst2GZuCaULuqKGJPXwthwjqS23Z2Fd2fF3WddJvrk7CPY
         dzTjDTwGqSl5u+iXb9/3sVkJ7PjolsaNuJ4tbDm3oncDmb5AHNUcW107A+LJ9tRNgBLF
         FuVDuUwVDd6kSSKz0AgSh1TPFI8Tzv3sX2I7dq5ScTyH7Bu+xW5r4dNAKtd0C2Jr+FVU
         MYKw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=bU4IHYY1;
       spf=pass (google.com: domain of joshi.k@samsung.com designates 203.254.224.25 as permitted sender) smtp.mailfrom=joshi.k@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout2.samsung.com (mailout2.samsung.com. [203.254.224.25])
        by mx.google.com with ESMTPS id z18-20020a170902ccd200b001e245bfac79si7966953ple.230.2024.04.02.22.05.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2024 22:05:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of joshi.k@samsung.com designates 203.254.224.25 as permitted sender) client-ip=203.254.224.25;
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20240403050510epoutp02853d2b02a644c5237f17d3a2ff1f4a8d~CrLcTIlQQ0562305623epoutp02i;
	Wed,  3 Apr 2024 05:05:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20240403050510epoutp02853d2b02a644c5237f17d3a2ff1f4a8d~CrLcTIlQQ0562305623epoutp02i
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20240403050509epcas5p403dd7ebe021271f903400e1c396af10f~CrLbNnpAk0822708227epcas5p4D;
	Wed,  3 Apr 2024 05:05:09 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4V8XkC68WJz4x9Px; Wed,  3 Apr
	2024 05:05:07 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	BB.26.09666.383EC066; Wed,  3 Apr 2024 14:05:07 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20240403050507epcas5p2af93e8855bc0d5d18f54c47f8d7252e5~CrLZCgT1j1997219972epcas5p2J;
	Wed,  3 Apr 2024 05:05:07 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20240403050507epsmtrp1bd94e3a21b1b18ee4c74b0bde18aeb70~CrLZA8rX80314003140epsmtrp1e;
	Wed,  3 Apr 2024 05:05:07 +0000 (GMT)
X-AuditID: b6c32a49-cefff700000025c2-d0-660ce3831133
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	5C.64.07541.283EC066; Wed,  3 Apr 2024 14:05:06 +0900 (KST)
Received: from [107.122.11.51] (unknown [107.122.11.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20240403050500epsmtip28e7bcd4a3801345fd12b86c84d7d1fb4~CrLTKkC3d1682616826epsmtip2C;
	Wed,  3 Apr 2024 05:05:00 +0000 (GMT)
Message-ID: <6ea60c2c-9dba-43e5-e91f-30c833146499@samsung.com>
Date: Wed, 3 Apr 2024 10:34:59 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
	Gecko/20100101 Thunderbird/91.13.1
Subject: [usb-storage] Re: [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, "Martin K.
 Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>, Sathya Prakash
	<sathya.prakash@broadcom.com>, Sreekanth Reddy
	<sreekanth.reddy@broadcom.com>, Suganath Prabu Subramani
	<suganath-prabu.subramani@broadcom.com>, "Juergen E. Fischer"
	<fischer@norbit.de>, Xiang Chen <chenxiang66@hisilicon.com>, HighPoint Linux
	Team <linux@highpoint-tech.com>, Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>, John Garry
	<john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>, Kashyap Desai
	<kashyap.desai@broadcom.com>, Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>, Chandrakanth patil
	<chandrakanth.patil@broadcom.com>, Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart Van
	Assche <bvanassche@acm.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>, Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org, linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net, MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org, megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
From: Kanchan Joshi <joshi.k@samsung.com>
In-Reply-To: <20240402130645.653507-2-hch@lst.de>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Te0xTZxTfd297W4gslwrhgz9m18yIKI9qqZ8bqJmP3YUlc0wnmpnawYUq
	ULo+Nuai6xQEKkopY2oZohQRRGQ4W8qE2SKPoPIQsDiG8iiQ8XASnS60YlZo3fzny++c73fO
	7zxy2DjHwQpi75cqablUnMIjvBmmmyuDQ4/alyRGGNqC0fBZE4Em5+4RqOpBHoGKKjIB+nF2
	Dket2gocjRYPMlC/rQ+giWwDjoZvbETTR2ow9LiuEkNHDTUEqqxqwZCxfA6gbocZIEtJJxM1
	ThtZaKarCUONA6tQq3kUQ6e7fsPQ8X4zgUrLM3H0pMzIQEeqJ5noYttLDLXOX8HRvO4+E2ls
	B1HxtBpDvfMaBsq/UIWjn88OMNBUxlp05tk4C2md3QSauPM5yn6ag6OTZ9sJVGLfgUobcvBN
	IVRvXwylH+ogKM1YKYNyjuXilL24lkVlND9iUr0dKurqpRyCGrQ1EJS21AKoG8WXWZT2QgVG
	XT/31PX8riaogvN3cWq0uRbfHrgnOUpCixNoOZeWxqcl7JcmRfNiPhVtFkUKI/ih/PVoHY8r
	FafS0bwtH20P3bY/xTVlHvcrcYrK5douVih44Rui5GkqJc2VpCmU0TxalpAiE8jCFOJUhUqa
	FCalle/yIyLWRLqI+5IlTuMAU9aFpec+1BFqoMM0wIsNSQE8f+8FrgHebA55HcDHBY+ZbuMJ
	gN/fvO4xngPY1z9IvAq59qwPuD8aAbT3X8TcxiMAbxdexhdYPuQG2GG+z9AANptBvgMbJzlu
	ty9sPzPGWMD+ZDyc01gWky4ld8Kn5dZFjJMBcGCsZLE+P1IFnWXji/lxsmEJ1A5YmQs5CXIl
	7C5QLXC8SD5s+aPOE7sM1j36abEfSLZ7w8KRGaa76i3QOTHqwUvhVNs1lhsHwcm8Yx4cD3vO
	dHoGo4T2BqsHb4SZt/LwBV3cpVvza7hb6014wjmGLbgh6QOzj3Hc7LfhQ924RykAjpwu82AK
	Dqu1hHtUVQA6psqBFnD1r41F/1r7+tfa0f+vfA4wLoFAWqZITaIVkTK+lP76v4XHp6VeBYtH
	GPKhGTwYng1rAhgbNAHIxnl+PnMxXokcnwTxNwdpeZpIrkqhFU0g0rWefDzIPz7NdcVSpYgv
	WB8hEAqFgvVrhXxegM90ZnECh0wSK+lkmpbR8ldxGNsrSI1pAify7NRFx1CsZJ9IovPNzx6U
	fzIUOuOYmYqlSixf/FDYk3X6vfCPvQzLIlcntlita1YX4rvqM3z/lM06dsuIF9wTgz2VK9q3
	bVq3XJKdbMwdatx7aGlccFN/T7Qt5yDSq805cfgvB6ynlEOJI3vB1i/rr7y1YnVu8bPd5/r8
	75huLSnSGe6ZDHu+tRw/+dfDklh2QMEH6WWCw3kipeNUzJrOhoKA3Oq2Xe/fshkzLSfDY5ov
	sNSzvbYDqeW3lz/f/E9LtZ/5kN/L4c2m2tz0KGtgYn3cG8KRPMN3gVneouoTdaptHfNh7fkr
	Xh7OsLdsLbq7M8tUm77q789SjIYdYbErh3gMhUTMD8HlCvG/O81uAg0FAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf1DTdRjH+3y/3303di6/TYkPZBFQdwoJLj3vqUur68TvhXdlWVcW5WJf
	kGKTNldokSiu2PRig8sbUxiMQOYUkHOw5JeSkHQQEHPYRCQYyI84EI5iEbsYqzv+ee71vJ/n
	/TzPH4+AFPfywgSpisOcUiFNi6SFVO2PkeGbs4fXJG8Z2ACDRbU0jHtv0WC7m0vD2QoNgjMz
	XhLa9BUkDBX2U9DnciIYzSklYbD5RZg8UUXAdJ2VgOzSKhqstlYC7OVeBN1/OxBcM//Cg8ZJ
	Ox/+6GohoNEdA22OIQKMXU0EnOpz0GAp15Aw+72dghOXxnlw/icfAW1LlSQs5d3mgc51FAon
	swjoXdJRYCizkVBd5KZg4uRWKJgf4YN+sZuG0Y73IWdOS8K3Re00mIf3gaVBS74UzfY6E1jT
	vU6a1XksFLvoOU2yw4WX+ezJG1M8trdTzdZc0NJsv6uBZvWWa4htLrzIZ/VlFQRbXzy3HH7L
	otn8kh6SHbpxmXw9dL/wBRmXlvoZp4zbeUB4cNHu5qV3ERmnB/LoLJRH6FCQADPb8JV5J/Kz
	mKlHuHhEFtBDcLZrgR/gddjqu88P9EwiPDrD87OI2Yk7HbcpHRIIKOYp3DguDsiP4PYCD+Xn
	YCYJj/9jWLGuY97Cc+XXaT+Ty+PdHvPKCesZNc71GZdZuKy3rcEXNVcofyJmbAi3aJsI/wKa
	2YS789V+QxAjwa136v4btB3r7DoU4HBcN3WO1COxadUdplX7TKssplWWYkRdQKFcukqeIk+S
	pEsU3OexKqlcpVakxCYdkteglb+L3uhAA2ZfbAsiBKgFYQEZuV7kTQhKFotk0iNHOeWhD5Xq
	NE7Vgh4TUJEhIonxrEzMpEgPc59wXDqn/L9KCILCsoioPa5a9YJnJDF0uzD0yBtV0w2Ljphb
	xqqFYPHWDb/GbLZbyrXvffrk/R3xd6xrH01+IsfRRF3a4SubEXzxe/MuLEmwfXfzce9DXOLd
	qLVhz+XP9rMZB0Ly9Ve3jQ1klX3ZuvHlV+czx3ZZRNZ7SxM9SJRc0PfX2N5jzzyt+0auHfjo
	+LMdgyXJmVMZH6tLO5wGrcI5Hj/VbHg3P+qH6qvBDwrfju3vemdT3O69lbh4Nrch++HnZ7rM
	vHpLtW/ig5/Dv1K8prku1yZmOv/cp6JFEfszwnebRdOZ3lc0JR2GiPjUzAdsz5tbEnTaCdmp
	iNbpmmPHe91x5zWVX1My+7kRd2j7TWMkpToolUSTSpX0X1F7cdTmAwAA
X-CMS-MailID: 20240403050507epcas5p2af93e8855bc0d5d18f54c47f8d7252e5
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20240402130741epcas5p2b14c5c7f4ed5999a0b8816f9d007ca08
References: <20240402130645.653507-1-hch@lst.de>
	<CGME20240402130741epcas5p2b14c5c7f4ed5999a0b8816f9d007ca08@epcas5p2.samsung.com>
	<20240402130645.653507-2-hch@lst.de>
X-Original-Sender: joshi.k@samsung.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=bU4IHYY1;       spf=pass
 (google.com: domain of joshi.k@samsung.com designates 203.254.224.25 as
 permitted sender) smtp.mailfrom=joshi.k@samsung.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=samsung.com
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

On 4/2/2024 6:36 PM, Christoph Hellwig wrote:
> Drivers might have to perform complex actions to determine queue limits,
> and those might fail.  Add a helper to cancel a queue limit update
> that can be called in those cases.
> 
> Signed-off-by: Christoph Hellwig<hch@lst.de>

Reviewed-by: Kanchan Joshi <joshi.k@samsung.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6ea60c2c-9dba-43e5-e91f-30c833146499%40samsung.com.
