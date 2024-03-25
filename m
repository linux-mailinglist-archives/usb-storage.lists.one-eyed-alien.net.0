Return-Path: <usb-storage+bncBAABBC76Q2YAMGQEDGKM2AA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id B90D688AD66
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 19:14:36 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a4873596e8sf4699030eaf.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 11:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711390475; cv=pass;
        d=google.com; s=arc-20160816;
        b=S93Whdtn47GXXhUrYqrOxqA0JKZdxOLMGFiyWn9WH2O577+ahkEtj+vI0DOLJeJI/x
         F3AgImqSl6og7z6N0+NRS89wwuJt1NMUGdGSyKN84YUDdcPjICxcLtlrDenb11BB9rll
         GfZoQVNPL6THFihdo0EjKHERQxaasw4Ad2AhE7PoJ4yySTlOg+02Rx2iBKanABvPXfy/
         fHT4KrDtpUGlXJcPexerOSLUr4J5wbkvsFnW8h/yPsk2OoOLnoW+InMKHXZqUUrpQJJx
         Pf/P1uaIST4RJVkM+rz2pC9T1D3NI9EiCqRKnYUpVF84zlIdZVGqKG5PoU1lUBuO3KJo
         tJ6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=Atl1/oop1j8UPhHrzkzylAE0nwYBmGGX11fyN37d2f0=;
        fh=iUMDovD+uMQjCYxU/SVYmBnTLsGm2DI2L9KY7O/j+G8=;
        b=KrTEekSkdvkW/y1lILsa0Pxbgomxj6yRp8Hjv2kCTX/5r1PwxDoP7uUiRL6wlmEWXx
         sNHgNEFmw8e2rWeOD0M/bPzwORkHtY1VP4Mb8sROMf32+WIwODcZ7vlxYBpuKRfM8h1v
         JF2TozBN6VzErKmKjFh8pl9OrdlHh8ajbyEV8Q5AQ1UzbVxrB9Gsvl7uEQj6VmUXygce
         kc6DVMdd09BVkLTCMZWMQiH5ttCygfYNPy3nH6tXxB/ckukoFpTf1Pzwzg2l8ZuefQLO
         HU1jccn1F92q+mPMwjFRQtkxgQZLLpJrSodfDqawudySOd6SwNpXxc0RU2JuVr9IaF7d
         u6DQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IeufiVsA;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711390475; x=1711995275; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Atl1/oop1j8UPhHrzkzylAE0nwYBmGGX11fyN37d2f0=;
        b=IT202JCnJJA6FpbQ1QnOhG72Z2XdC4kHLD9MW0hr66Spm3Xa5/3paYYAB+ZT+n6Gx6
         dDf9zcjkQziIrCDgw4DeQEckA6SkMmmC04jf41G8mYZBwGdvxHakWFEoy9akCl+AGZ8A
         odatP9EiuyllrDOEOaikv+ouorSc0SFQwBY4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711390475; x=1711995275;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Atl1/oop1j8UPhHrzkzylAE0nwYBmGGX11fyN37d2f0=;
        b=rxNDrJQhiMCWl/WrGdN8EISP2eOFs+rO8ew63r9thhCFbj6pofE7A2CDSv+WOmLe40
         zRZ+lvVrrqX6EeISO7EuYKdHzvkFgG84i3mu5SaS72eqgLhWiEaiTQ0x6NHeUiF6byL1
         pgC8vMF+Amycl+VqexBHCivUqxn9weqjmQtU+gCqcMIkcRP71RwIqnrRIAfTrAMPq6dw
         YgRqJJ0aYgU6eky6VJcn6Agxf2yfpxVK2QcK7CKyJiSFDEZaEo435WJ8iol5HLhZR9e2
         ZE8MF11ZD5/onoDvHyovWXBo1M2LKiUAoubdPtQE90p0ZmUZtJ7VQIvb4d66qGs5QVgh
         1Q6w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW58aOl4XHZ7THJkJDsxJy2esAVq/1En8y+yIF85ZpoFahyVyKFA8t8us3L56wFSJczwRmcGjNvBA54UnoFhkuQd0FrhUn6JQht
X-Gm-Message-State: AOJu0YyWGcWqFAu+mGDZpvJI08CnMg4/LBy22BIPpP3kAEmjaRuXrD52
	JSJQelScyZ9hWta5JzDJDQlviVqeBWkXDxr/iSpLtSI7MdvTAxKxW7hraJv5VOU=
X-Google-Smtp-Source: AGHT+IGfsccj4ojPqi5mg11DO5OQ6PDjSAdjvkX9WwmcN9H1l2rsYhL5sJfedKgoFs9eaX1XGcNi0Q==
X-Received: by 2002:a4a:6c3:0:b0:5a5:3b23:8494 with SMTP id 186-20020a4a06c3000000b005a53b238494mr352430ooj.9.1711390475636;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:e0d1:0:b0:5a4:3b6f:c4fa with SMTP id e17-20020a4ae0d1000000b005a43b6fc4fals4477778oot.2.-pod-prod-02-us;
 Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWItvIQi3abgczAMYTMWFwkAP/6wcDzxM5PjgS0FUv5FEIILxPOVWj5r7zatr+hP87KVEXpbyHk7u3FkasomoySnKw5AeCtMocR9dKL/NDbu3/nrLU=
X-Received: by 2002:a05:6820:514:b0:5a5:60c2:39e1 with SMTP id m20-20020a056820051400b005a560c239e1mr72957ooj.1.1711390475300;
        Mon, 25 Mar 2024 11:14:35 -0700 (PDT)
Received: by 2002:a05:6808:2120:b0:3c3:cc75:72a7 with SMTP id 5614622812f47-3c3cc757394msb6e;
        Mon, 25 Mar 2024 00:49:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU4JAYUGmYNtA0pV45Bn91Mw3jZAwwhGKxhU6QvgDqPX1UhZ+ZUhoZm9epaURW4x8IGJJ88XMMtWw4Cvow+R0Yhgp0+lLqM4HRJhhAiOiLc0aqdMc4=
X-Received: by 2002:a17:902:64c2:b0:1e0:e16:8ce0 with SMTP id y2-20020a17090264c200b001e00e168ce0mr5632503pli.5.1711352986048;
        Mon, 25 Mar 2024 00:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352986; cv=none;
        d=google.com; s=arc-20160816;
        b=hw3qOrOL0IFv1AqM1sAetueWPzDt4ocM5yaZG56fDB5cQdZDiOOz2DmE+3thuc8Feg
         15znSVFrJCBcGuksuObbAMmpp7PUT3FKBq/pW1ph4W5t8D0eV5y5sd2syLek9uxTbLsM
         94s+SlYg8lUw8CmPtiTMIfWo/Ba6Qe95LPLIGdwV1ey++8KpwD3etRrfhxr/CQd9c0ui
         CTrNoBmNEI3LpAzGbDQAn6yvhQlQubaSxRNHGGALtdHaPYa9aYOc/3fX4HSIFrcZGwUA
         S1Tp7h7R1Dxn/MGKfviMefj+BFwvW6POqEPuqKE71ZY2QnJc72lfWmYi37XklQXRzazo
         I1qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=e40gzKWQ7xUOKu7nUJHkyrD8AYoIRciYCQiK2DXthTc=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=AtRrn91bvsXOtlu2EyFvq8tndnJNfsLpMr8ABDMPLI7bzE4uaxB3n0pAxdmKyK7edw
         F9L1GahXf/yB89qic7up3eFWO12h4eEBA/X1w40W604BFdeNxFVw0+zkiT7zj/x+P+LB
         LtL2V+JXgp7njJWK2AUdikbcS1MqnO2h2CYTyyRDpOq1Dcs+5Pb7Djy4DEpBRlcv8Io6
         I194JIM3SF8TgFcmMj/0M7ZEHdFoyaHhK5HH9hrTjqlOzL94xL+iSf8nFOl89gjzsxOq
         g+zIB0mQ9OnI8ORroF/90LkNbKhs3cYMCiSdH9VFjO89nCVlijhmGC+5TRMHLGXkM0g+
         7cwQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IeufiVsA;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id mf6-20020a170902fc8600b001def0b8f86fsi4768529plb.62.2024.03.25.00.49.45
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:49:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B2F9BCE0FC5;
	Mon, 25 Mar 2024 07:49:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F84EC433C7;
	Mon, 25 Mar 2024 07:49:37 +0000 (UTC)
Message-ID: <b1dba4fa-5a5d-443c-aae3-e8e5aea3eafe@kernel.org>
Date: Mon, 25 Mar 2024 16:49:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 18/23] sata_nv: switch to using ->device_configure
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
 <20240324235448.2039074-19-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-19-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IeufiVsA;       spf=pass
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Acked-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b1dba4fa-5a5d-443c-aae3-e8e5aea3eafe%40kernel.org.
