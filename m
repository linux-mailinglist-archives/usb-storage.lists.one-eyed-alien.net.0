Return-Path: <usb-storage+bncBDR5N7WPRQGRBINA4TAAMGQEW5PCDBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id B18A5AA9C79
	for <lists+usb-storage@lfdr.de>; Mon,  5 May 2025 21:23:14 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id ca18e2360f4ac-85b3a6c37e2sf509321339f.0
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 12:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746472993; cv=pass;
        d=google.com; s=arc-20240605;
        b=QEhOzErBDbXQG7nZ81IKJRdN4sGFJx0dgeiQGRA1TEXRPNxVwzHRhybr7x3zYx96KN
         3jPbrfMWYrAE+2u5isqyDgBe4OF1DOOB8bylp5A+rOlz82Ntl5t5WHWaNmiCpuXyd4zM
         rwaUHdg1vs2ZKqC1NVWQJ3Ei7ugnACaE3MbWBIM9hNCLaStu+r4Uwgb+9iKNE2sTkmBR
         ZxM5yiffHGutnNzLupLjwdS+0qYU92591iyUeRHc0kao4qsEbp4LxYFP6m/cobw8KIKr
         A/ef2vWxo/Z3sGEg5ySb9QqOikCaaHXo1dMwJx4+hgFXFG/yuyoYFABpZ6hfpOubCAX7
         QuNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=knV792ua2Q7mcsOJEd275XZG8SBv2Hgc+1b/g9Cy2oE=;
        fh=mzhiXbBFJzsCljQ1Ru+CMqA84UZJVlbqaz1G00enI7w=;
        b=HF2MkiXuQSy5KSjhjkYN2TdvkC/flULK7XtBMJurUdupbmuGvpZDsE9EWkWb9c0aRO
         8PJYqw/pnLLebRM5BgiTaQhAfrou6VB9gSmzthWYZ3BurXW8raGXUn04lL8B7crrGpSx
         OUU9jDEYB22nntgQ23IN8Om7xco6qPf13ml1uH5O4ZlxmT4I9TCeKMPoXllrW4Lq5Gxw
         yJJNhtGLIhCXSs6/57hZu72lNaY+rONwftQY5k07IEiWZ05SWBjqfZi6iVAPjs1iIMlW
         S6nBQVpOIBMk2yV74Ke8YAOkjTnNFaIImG0sbB/qlMPEgAXM+EXjEHVe4aPVyJCyWTzW
         ddtw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=gppMDPIl;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746472993; x=1747077793; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:date:message-id:subject:references
         :in-reply-to:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=knV792ua2Q7mcsOJEd275XZG8SBv2Hgc+1b/g9Cy2oE=;
        b=P6AdrTtGNn1ZZM4dfcYGQqSqW9ZpwNOkq0EUPpQRdIuvZO38XpZIIwAOTlvKVTLXGd
         Rk9mW6PcekqpvEfHCfotrjILlZiO4c6pCnC8vOtYowZivKKxDHhHkPh/Tm26Z36W6rIV
         lGwOcoq9KOS9Ei7R+Zbk2adunUgRpujpqwKWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746472993; x=1747077793;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :date:message-id:subject:references:in-reply-to:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knV792ua2Q7mcsOJEd275XZG8SBv2Hgc+1b/g9Cy2oE=;
        b=LWJr4S+D/nhMAlaL9AT+0pfH9dGHngvv4Gc2on7Aappq1dozeYcIbAotzL6rhm30ND
         YWWhoXd49polPIKCMfIYUQgARmjO6os2u3Zoi7CYwrCIy/lpE0SPsqoRlvTryOlCYlKg
         GpY7pD01YkSwGmz+5onYZvy8x9wq/Ri5RVMIK5cSe0HatmgyKFPdKOaAQSTlanznsR2j
         AZZZPpC4vIRduOJukuMJtE4CK+0U9WBlMQiBBQbMxsWwr8pp1zqgyCIriRzDVsVMdZT4
         LouU+Vg+KgKClDIwhcjkgbq0Da1IhBcTYN9EJdNj7vjQ+jds99mgshynAYtCPXBriJ3m
         YEcA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWEFoIYaVZPcIybKp0Nn10dF5Q1RhPudqdNFY3HWJoD9MURTvqpG2COOElEjaGX+leXj2fUbA==@lfdr.de
X-Gm-Message-State: AOJu0Ywc+hrrDrkiH9/EhSSWyyQcnrdUw/foMDLWfJxwlxEdcto/3BjL
	6VuJVNRGboloEPz1du1en/SAh7qvjayl+Te0lwGWlB9U7IHMpFuL0b7DVVF7Ce4=
X-Google-Smtp-Source: AGHT+IH+KNntdjlGAsxEf1s8P+s5+gxha6C1+zaThrp21zT++Bcxm+ORGK8qmuPUxeF9fvm4VOaanw==
X-Received: by 2002:a05:6e02:2588:b0:3d1:97dc:2f93 with SMTP id e9e14a558f8ab-3da5b349058mr85312265ab.20.1746472993419;
        Mon, 05 May 2025 12:23:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBEIVrpYEv4DvfwR6bQhp3azPVn4nP709ygL3zlTR67vYw==
Received: by 2002:a92:c6d2:0:b0:3d8:8909:9ed1 with SMTP id e9e14a558f8ab-3d96e7fe550ls27673145ab.1.-pod-prod-09-us;
 Mon, 05 May 2025 12:23:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWYGf+LORhpbTHpPNBul7NO1qKmwvTDL3c7mLh4OX+q1/IsEfxVfGYWKwqqbwDYJa7MHQLCYQ6pkyDvkg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:2283:b0:3d8:20f0:4026 with SMTP id e9e14a558f8ab-3da5b23c4bbmr79474475ab.1.1746472992535;
        Mon, 05 May 2025 12:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746472992; cv=none;
        d=google.com; s=arc-20240605;
        b=YswFMl7Wmcr6j0V/0qnqc0P/lEZC6rWMO6HX5EPmO4oHyi4DMLQ6k0ViaJzyRdKyEX
         xXwfhVMXew4BHVxws9P42JK9fUgpqWjsN8g+gJMKHj1ECdeKma/Zbfv/YsBUv8jU3K5z
         BGfIPFv9J4CuojiJdm9f/Q3cbRhpJGo0HLgO5LyhDz/G/2zzcjOIOht0jSIRHqz0EH3G
         qsDtDOBu6bqjZrYxvAfDyrvY6hCdhtZi3JITEQHBPV3MxKBkg9JstIfshCvgPZmKQLa8
         xkz8Kog047Cbioy+XKCZxGqqYIbu5oSadiXmByUVM3mefgj8bC3KjV+or7dwbgdawoLO
         DpVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=ZMVeIpMgFF4mocy+t3rzmtkLWK0EgWsZb4AtQGZnRAs=;
        fh=2c7uhjjlVSTfPAVTf5JGSg0MPOf75WORQMZOjaDWpfg=;
        b=ltDcN6T4/H6TMu0qkEiblh192jppF3LC45XBe7AD5M4EhbbyTXzqVi/IqFGbrPbQ1E
         4Zf+P1KG3N56tZzHbR7FIizHgsHNwLLflhX3vtzxxIfNKh1j4NSqPrM35W4pWyPR7vgh
         Ku9ls/1oNWRenHlxbv0mRJ2wvQub0YZl7EFWK+ExSGS2dLwFd/0gIeGDgvjlEhAjFINT
         6CeovUyZtk0nsY7aSyVih2DeCRWb2uIpCR42xqgDKVT8SMp4VJTq+tiUcPC23Vp8BEdW
         XwKtsjT9aZ/sZpD0rb573eREym0+kwii0Y+DrUM/Iaa4crhcImiVNlygQVh3KVL0r1iT
         /zww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=gppMDPIl;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e9e14a558f8ab-3d975e9bd7bsor30935105ab.5.2025.05.05.12.23.12
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 05 May 2025 12:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVbiI7VSt4yU7IhC0zhB+CnrsBdEpsa3bK2Lo1E9kgSn6bwpVukzqob5yilTmocazs9hXznCABHqT+Dgw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncs+77FxWwp8bqcyK+0613Sc+r4+n9zCp6rxtB5zjMPVOg4PDWJNiEPuBAqyjDl
	ed/q5osOBjaUDO9mFnUHsIXW0M4mt5kJDmGLTHH191HwxGVy4rG08cG7r8ILrIdZdanbzdNVZGp
	hzhpnmRgXw6/1qAXllXPQfjF2s6zWu8QbPZEqacwkHENSQnBt4FlMTkokjfBqMoR3gRX8mUVyRN
	gPAsbo0mfsqVLPHc1dSiI+z6oPg7gOicpIrmigJXRgrQSQEkODAGNK/lC0XcoHX70HU+fvtjWmm
	H1qUwlIbj+x2kcKjAXTJgwQuy5IOCJe6
X-Received: by 2002:a05:6e02:378a:b0:3d3:dfb6:2203 with SMTP id e9e14a558f8ab-3da5b34518cmr82097595ab.19.1746472991964;
        Mon, 05 May 2025 12:23:11 -0700 (PDT)
Received: from [127.0.0.1] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d975f6d771sm21077235ab.63.2025.05.05.12.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 12:23:11 -0700 (PDT)
From: Jens Axboe <axboe@kernel.dk>
To: Christoph Hellwig <hch@lst.de>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>, 
 "Juergen E. Fischer" <fischer@norbit.de>, 
 Alan Stern <stern@rowland.harvard.edu>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
 usb-storage@lists.one-eyed-alien.net, linux-mm@kvack.org
In-Reply-To: <20250505081138.3435992-1-hch@lst.de>
References: <20250505081138.3435992-1-hch@lst.de>
Subject: [usb-storage] Re: remove block layer bounce buffering v2
Message-Id: <174647299114.1416870.3005554851862973144.b4-ty@kernel.dk>
Date: Mon, 05 May 2025 13:23:11 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: b4 0.14.3-dev-7b9b9
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601
 header.b=gppMDPIl;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=pass header.i=@lists.one-eyed-alien.net
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


On Mon, 05 May 2025 10:11:19 +0200, Christoph Hellwig wrote:
> the block layer bounce buffering from the early days of highmem keeps
> being a wart in the block layer despite usage by only four drivers,
> all through the SCSI layer.  One of them is an old PIO-only ISA
> card, two are parallel port adapters, and the fourth is the usb-storage
> driver.
> 
> This series makes the first three depend on !HIGHMEM and for the fourth
> rejects the probe only when used on highmem system and the HCD is one
> of the few annoying one that does not support DMA.
> 
> [...]

Applied, thanks!

[1/7] scsi: make aha152x depend on !HIGHMEM
      commit: 7b32cb540bff6d6c8a1659babf930e9f66283c2c
[2/7] scsi: make imm depend on !HIGHMEM
      commit: bf69bd3fc26a107611e76b342027bb60b2411d4e
[3/7] scsi: make ppa depend on !HIGHMEM
      commit: 27a0918d4b701d4825e191448e44b9f14dc0a3b3
[4/7] usb-storage: reject probe of device one non-DMA HCDs when using highmem
      commit: 48610ec22f0cf7ee5b5658b2b3bab27a8f2ef78b
[5/7] scsi: remove the no_highmem flag in the host
      commit: a9437f6a1d8d0b3787fe6ff03d9aab4d3fe9b940
[6/7] block: remove bounce buffering support
      commit: eeadd68e2a5f6bfe0bf1038ec49e3a8d99eb5fe8
[7/7] mm: remove NR_BOUNCE zone stat
      commit: 194df9f66db8d6f74f03c78c2ad47b74a5a8b886

Best regards,
-- 
Jens Axboe



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/174647299114.1416870.3005554851862973144.b4-ty%40kernel.dk.
