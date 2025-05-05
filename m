Return-Path: <usb-storage+bncBDA6VNV634ARBY4C4LAAMGQEPKWJYKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E751AA8F1E
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 11:14:13 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-2c72e6e51cesf914398fac.3
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 02:14:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746436452; cv=pass;
        d=google.com; s=arc-20240605;
        b=g7UCcPs0j3v2eGWRJ3NqNwsIytskhYZV8aOXNuoiHe1Nn85LlQa9hqt339lKjBfGWc
         n5DOxZVeONDO4sX0MzXgTW2D5jzgP3/vP/0R9W72ROPcenSYFIf8pRjnRRO2xXX74XSX
         azVDouMqXnZPO/tiQxS/DjwEGiCUsT9076ffsbUNI0gp9GA2vgCjZ6Q1UEWV02OJZlSh
         +dULyvY3Lr5EADadU3tb1RYpo9KoUJCdYUxRiX89u7JhshDiptvRKI5T54oq1uD9nDPD
         stlnXmf3cr6FBJm8zz3ROgW27kV66/jeJ1hRA42c6iM4XiISxTYf6NUyrj8f4JAYwH7z
         9grQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zcTNnaeozZxwLS2mhmhca+aD/dtPLI3K/URkDx0Q60g=;
        fh=oSXJSElM+D7O8hMMxyXOk1+U/MctlHupACaoKKOLiKI=;
        b=fC2KztZUC0xp9BMjvEEtKpO3755wxqq8vEMMnKjs7XdYfUdJm46jT9nIu8c6lfm+X9
         9AlRpAFmsHMWFBrvDDbtLDs4z9WN9jYOsRVLQ5IToALXAh5g+RfURJfbRT8hkjzBOFL5
         lW76iNwsCMh2ov594ApiAx1K/AC5dq6pTj4gSDfpWOrYdCumiWZCkKvnQ+D26FFsYkwL
         6gfTWC62iK/ePJ/je/RJuW9yi81YE3cXIIWKUb+cHbS5zHbBrIAi+VWyKIYJxSvaTmHc
         IJvlURX8fRMrp0frnlxdbxCAAE3rtck5eCs2y5fk49pBAFtpBG/3nOhYifzEvfAK8Y1Y
         7GBQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=morbidrsa@gmail.com;
       dmarc=fail (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746436452; x=1747041252; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zcTNnaeozZxwLS2mhmhca+aD/dtPLI3K/URkDx0Q60g=;
        b=Cem0Ic5IKfOObLjPFUV9Rf6lwnxHibO/hHjX/r+ZnzVZ96E4yDrFLpbT5doAxIWBFU
         9cF/yXUmnyYbHHJATEMNhIvulFFyFx7c2rQqnIgmrFI6Bz6sCyeOVzy/9PpDSA6u5nbi
         mYfoIg4h19FvhH4dn85pKJmN3TMBin0t6dmMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746436452; x=1747041252;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcTNnaeozZxwLS2mhmhca+aD/dtPLI3K/URkDx0Q60g=;
        b=Igk7nfwLj2qRhLJNxJ0tIl41vPGh6PWPZOFdS8vHS6+KQ+o3q6EjzXkbVCqQQne5Jb
         dmRaOQDUezE2Z5HmVl0YBr7IqQ2nkh19RaBTzfdYbYdRxieIj+nPuMSLMqgqgsuJy2Dn
         zZgdmqXvlrNOkxWxGBMt1IOZDnuKe3IvTVhyewYkMIfyJ5zy1a+ZXKMLl4Ki8+P2I6AI
         xV0OP0Ulwxn4HkkwlGddBP2wuk0j4tq8Zq12ViRyUdrfFB10aOXD64E5KNLVhe3wJH8Y
         Ack6OABDV1ydC27d637Lr/berlAcFJFS1+MmZJ7acwLkpW5F5g5H00mIdT7WzGlR177J
         y+Eg==
X-Forwarded-Encrypted: i=2; AJvYcCX80VcT1G1gRwyCHoAvsmrdZ4AK1wwouIk4Yv9yRwBn8cXKCwZuvhB7oSYdXNRwoICsNSrmpA==@lfdr.de
X-Gm-Message-State: AOJu0YwzI5ns3SVJDZR/BufHg+IM+ozL4VH5VzEXX/rM7czIWxqtSvPw
	wVgQqdfnE/C3GpeIGs7XT1kxb2omhLnRYfzNTFh11AB40pR+BmyFhLpZiacV9f0=
X-Google-Smtp-Source: AGHT+IGdugOuBC1l4J8wtnh5v9UpcZBEkc9Q7c386eHynjo9eocRvnNT+z5Bp/VkgZNYn7d6j54KfA==
X-Received: by 2002:a05:6870:8983:b0:2c7:6f57:3645 with SMTP id 586e51a60fabf-2dad6a2c9f2mr4255213fac.18.1746436451644;
        Mon, 05 May 2025 02:14:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEwVJy3P8yHfVN/yeedG3R6YpyL06rfKrb8qC2mnDIIZA==
Received: by 2002:a05:6871:8082:b0:2a9:5c2a:c3b8 with SMTP id
 586e51a60fabf-2da89de06efls1551959fac.0.-pod-prod-02-us; Mon, 05 May 2025
 02:14:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUZ3lhPeLE7jlP98YO3oE7dv6ALYDKoPu8b/uuvNhka7DLc7JXokO8rJnwEfFlQq7jvgPAztDw5kAqqYw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1c09:b0:402:aba:79d2 with SMTP id 5614622812f47-4035366f8f6mr5580124b6e.19.1746436451078;
        Mon, 05 May 2025 02:14:11 -0700 (PDT)
Received: by 2002:a05:600c:6dc9:b0:43c:fd8b:faa8 with SMTP id 5b1f17b1804b1-441bbded934ms5e9;
        Mon, 5 May 2025 01:41:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVBwXD1WuUyT5liv98fm0osfmZD72KjCLxgjJ7gEOx5414bcIUETuYs2GgLMKO8SwFWNAxrIE2E0ZcWsw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:3c90:b0:43c:f44c:72b7 with SMTP id 5b1f17b1804b1-441c48bdfdamr54359975e9.14.1746434515598;
        Mon, 05 May 2025 01:41:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746434515; cv=none;
        d=google.com; s=arc-20240605;
        b=Qz1/bApAxmQAGXKffjKSSMZru/kl9tY7Z/7UvFsyyzNjMi3nNa6wOWKNL9NoNjdB3B
         XQYq4MKlex12fpEuizqxdmHzfWQQuqUxo8WNYXlvv0cepguXBUivcCc/MNnJsxcR40zI
         cxp416qg81Jxj77ey2+a9T2aa73S3dWnLgi8nC9+8dWaRjqUC174WxCTTju+6OYRZHMT
         M83gYLetSmtVXXONU0Rn9jQETXv2k0V6NV2mVJwV6o0SMbv3aK9nrQ8wxcht9Qn6gQ3e
         wWWIT3aahEV2+w5qBf43/u9RiRoouhpv8SNbL+cnNFyLaKVCLJQSdaPeozJJ1Ihc7h1+
         e/3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=6l78IWpKeCD5XLJCd4To9WBB21MJVFSRgrzcgdX6x6c=;
        fh=vYHxaUfUrgrCakn3bZOr2mK2TYipUTf4q69wHjaHsz0=;
        b=VjTFIha2/wugNQ5f7tAlfkRX5pe34V7DTfROw1OuQblEhLo0YwyMn4tXJYpawFppKV
         OiIDEldl8TkODV2ZcMZgJ1u5qTL/d+pEWKWZxWHsqoJ+DOM8oBn08PxSW6I2dSbVZUss
         4LjFSsIrOHQMlVlM+axUx8YOszFMfCJ1lD8kYqyR/hasIt+ELmpn35+2sY6yF82ojp6F
         yq65J0v81OJ+deEjr8A/8jLOfZ7Z6tomiHq37bJd1xS/Fao1H4+7v7G2TbfjSA1Y8tmo
         ByIdYEZyK+VPkXjKdNhKWvlvyyaBmlH0ChkhKcmzk4rPDFe3bUk6NXmM7HCKWmugeTqE
         xQWg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=morbidrsa@gmail.com;
       dmarc=fail (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-441b8a31faasor21264645e9.8.2025.05.05.01.41.55
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 05 May 2025 01:41:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUSAfL3ZleWsDW9bV3NYhbvya7FLoWobpsG6D5phwx/TcYNXMCqlYoDNyd0Wl86gaAVR0gPvU74odDvng==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncv0RcRklMSEmkr0ttRgtNmONwessI8AxR2Q3j3vOTDM442THh0TwaEN0e+v3ad
	cvLs0kiJgWtNi08kLS/bGXB47ZDjwYsrhYibntRJzyKnhwwxTKqGFRqOAfser64UQubD+mrhGG0
	9BI7WfwEO4AkiHRUam90gcpBHi44dyHbf51C7iyZVldltxVa5h+aijDHmWX3w6A9qWXbBqI1SBU
	M/aJCqRt2yoI8ifE+9xcmKBzo45eyuiUrei3jYgx92AMTenzpEYLcnbzCnm4F82YSOWCo4tzx1P
	lFKBonZN82IMNUlI5NwNVWkktot9rOPiU3W/sBG3/wsSh+x2h2g5R6Uy
X-Received: by 2002:a05:600c:8283:b0:43d:8ea:8d7a with SMTP id 5b1f17b1804b1-441c4948691mr46858925e9.28.1746434515156;
        Mon, 05 May 2025 01:41:55 -0700 (PDT)
Received: from fedora (p4ffae10f.dip0.t-ipconnect.de. [79.250.225.15])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae3339sm9637506f8f.21.2025.05.05.01.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:41:54 -0700 (PDT)
Date: Mon, 5 May 2025 10:41:52 +0200
From: "'Johannes Thumshirn' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Alan Stern <stern@rowland.harvard.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] Re: remove block layer bounce buffering v2
Message-ID: <aBh50ErQRhyfL1Y8@fedora>
References: <20250505081138.3435992-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
X-Original-Sender: jth@kernel.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of morbidrsa@gmail.com designates 209.85.220.41 as permitted sender)
 smtp.mailfrom=morbidrsa@gmail.com;       dmarc=fail (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Johannes Thumshirn <jth@kernel.org>
Reply-To: Johannes Thumshirn <jth@kernel.org>
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

On Mon, May 05, 2025 at 10:11:19AM +0200, Christoph Hellwig wrote:
> Hi all,
> Changes since v1:
>  - return -EINVAL from usb-storage ->probe
>  - improve the error message in usb-storage
>  - improve comments in usb-storage

Sorry for sending it to v1:
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/aBh50ErQRhyfL1Y8%40fedora.
