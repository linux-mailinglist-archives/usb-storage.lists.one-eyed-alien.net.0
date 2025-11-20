Return-Path: <usb-storage+bncBDR5N7WPRQGRBQGW7TEAMGQE3N2WQMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FD1C74A92
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 15:52:50 +0100 (CET)
Received: by mail-io1-xd45.google.com with SMTP id ca18e2360f4ac-945c705df24sf226396139f.0
        for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 06:52:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763650369; cv=pass;
        d=google.com; s=arc-20240605;
        b=VWYqYiSXU36QIbGHreqG2d0tkjVlxsL4LVTV32cYqcy1BJkF8iD3RsgEHyzYxZMdnv
         w59QiR8fDyMTLZkt3ZU5MmGrQwM+mawZTO+jCryzSK4kwwwgZed0ryBJ0RZnXEG7Ka1W
         +bC8m8mSHbaFBbPjlwQzUTm+NkuZxLSMSqu9WQulEQtxPp6uduMl0CtVpzu6fiPQDId3
         WAeOirzLQU6UihKutwZclyMjRPBu6HDg68FngDGhDMiRRw23v51v3yc7D+s6792bWrDk
         FWnGLCxsAMpVWWUnKvvnQJVwnqmvVD39PfzGn31fWL0+O4Xd5kBMFzEwXBcu/vh87vLa
         rafw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=qlZt1XE2CeQZZ7ASdP72qZ1uJ/wyS6HTLnmB23sN9+A=;
        fh=IvE6CEugNHeOJavIvS5/kdBJsCyH4VdxnewbGCrZ0j8=;
        b=CVBWWOns/wpRkRdbmGyg3JDofpzQ9lKHEJJodXP7VcBQYgoN5MxiavvRzRAUK2eNoO
         eu2tpEfYn0MUUDpnqJDKIo5rKSCZRTHO8C1ObAr3zBAIWCtSFLFvU5SCpd1JMuO3aQWZ
         MfaJIiP+3oqcKROaC9j5zwqzg7YCD58hnWzZKVJ847ghML3aOTnIGABMS8pacXizjuTp
         Si+Uqg8b56rDv1W5qCreBOIqm2LgKkfRqZHC4TcZRlHG1fyn1hWaIoABMXQL4WWnXmIq
         sythEPU9PK8Vm9qca6h6yv8kM3ZnwwMXjyzDMCkuXXhCbfIEb4dVtjJdhFaGTk+9cBJD
         /1sg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=uDnxkxwU;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763650369; x=1764255169; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:date:message-id:subject:references
         :in-reply-to:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlZt1XE2CeQZZ7ASdP72qZ1uJ/wyS6HTLnmB23sN9+A=;
        b=XDnABG9yjL0WZGDX2OPm4oJ1K6QylxkBugUa0p1RGo/TMwaKYnnI9uPmP9XvUU8jY2
         KofAPPUIdZBTSxuOV9QTqgytmpT2TVH2ExEG6v9zYksx7VICWSVuVmIPRy/sr4rHuf77
         ou+OkrJRccf6jrnIgdOHjHAtmnKRx8W0y86aQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763650369; x=1764255169;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :date:message-id:subject:references:in-reply-to:cc:to:from:x-gm-gg
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qlZt1XE2CeQZZ7ASdP72qZ1uJ/wyS6HTLnmB23sN9+A=;
        b=VcOFruifyewD0Psh3WKl1jOv8n0hvk9Iw6kCFWzKIF7f2xRhmlz+/Irbljzp6leEgb
         f1ggaKq8AVqRsSByvo0bBzUNnF8okyXwXDdd08Ez1acGii2kXycRHR54em0sO/IDIQd5
         l7+jZRtd+aNtFU6fUtM6B2R5IJe4DpUzMNNHG5x7tzOe45XNwIAynkXmvUs/SFl/Tjkj
         rJET0H2Xg7SqREvESFkFlG91XAd4Rj2Fs38RDfp9OBPZBthgr6A5l1Tdj3HBWvHe7T32
         5QXxbJvDp6eqQNx2P83dzMudVG2DneRnvrf5hn8nIkiLfO005zAsCBt8P1YySZeuNavs
         kW0Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXc2GsvQZC1UcS2Eqy7lubS+uNywiHdgIreZxphmTE1ck3mNxBF3YQ24XLVEc2Q7ooJAwTwgA==@lfdr.de
X-Gm-Message-State: AOJu0Yyu0rVCVRriYflBE/eC9yUcNxWCL9+l7fESvsI0bgCh8narHUE5
	sbddfbwke3JVL4K5yWrj3cGhh5T67OQ5vWhlS7jgvuvgSoKbl4SZpNbhEPFYogMTQRc=
X-Google-Smtp-Source: AGHT+IHklsj3V+T4vbBNNGpRwg1K75X92ZMp6Q63mcUkQ91F2I7DPbqGuTa5cq3LC4P4G+twQ4QmlA==
X-Received: by 2002:a05:6e02:1fc9:b0:435:a410:d8b5 with SMTP id e9e14a558f8ab-435aa87639dmr24820105ab.1.1763650369105;
        Thu, 20 Nov 2025 06:52:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+ZTslYx2rgKv+x7kodwoIUb33NoM//i4i1wTGDa7cwrAg=="
Received: by 2002:a92:ca08:0:b0:433:33b0:720b with SMTP id e9e14a558f8ab-435a95a39d8ls3847195ab.2.-pod-prod-00-us;
 Thu, 20 Nov 2025 06:52:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUDOsQ7OXv9bv2z0Vst36PxlyUl9VqJ6t5B3601aGuRt5EUMTqtaJQ3qXFJ7U/6CJnB2afuABrRQt2CVA==@lists.one-eyed-alien.net
X-Received: by 2002:a92:c04b:0:b0:434:96ea:ff42 with SMTP id e9e14a558f8ab-435aa8db78amr15223725ab.16.1763650367751;
        Thu, 20 Nov 2025 06:52:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763650367; cv=none;
        d=google.com; s=arc-20240605;
        b=NBUsdulDwP9CZ/Io8tcGHyKWPdf4azUJb77t1GgKIqMoo9V2jNnqhlInt9jZoITefk
         sdPqNg79k6Y+5H6xxIrfTvnJ4IvnZLVLD8Hthzs82OG9cJPfugpVyx8mTIl5XMWHfGVl
         4uvJxwn+2pY3HbX8uskUMQVBJ6Ovh2/SJT4rGlVMhk8hrDU3LOoj0DfVXlUuCW02Xsmd
         XTxKsNeIusWhspp+wwcs8ciqC0Wa789zE4gJAegTKU2vx6xYQ0cCrLFONoIfT1Q5xf19
         DYJ/UQ1mbDXCCdSMzVQvSuUYoQp/50FD+ECgm5Hhws11Z3qYDAKQBtMR00KnjAR5IfDv
         2xKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=mIp1emodWmrQX+c6TjoXmEBGWcecINECr9nK+dGHBUw=;
        fh=kPnCeeqdqBP52PowRlwwZHEL06YFbDfNRiQzW4/Ef/g=;
        b=HHTb4xMpa1XQMwigJNQfPzzzn+AJLBwbLHVjV7KLTaoJuEyoZV8WfIDesDFtMcWfxz
         ueRAjDAsvw2rX5hvhBjmFjURbwZMi0EzaRkYL6mK4AmK/i6g40NY6AUddq34jwe1BSJD
         pRZLcX+SfHuKgRiWxcM5G2LBpAlQRDR1CxlMexH1dr4lxISImiwLk73b+j8OKmVooau5
         wQ6PWK8uUN0DddLImu6XJQNB/pqodqSrCz/vURU+pXqG80ERSc9/nJXcyORvuZxbIHFp
         2l3kTxCXLrFh5ymyx3PrTq39BqIAqQMv8I+zdrUnnEvsq0qAStxvA7M9A2Ye+RYhlND4
         CTOA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601 header.b=uDnxkxwU;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e9e14a558f8ab-435a90ab661sor8391765ab.7.2025.11.20.06.52.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 20 Nov 2025 06:52:47 -0800 (PST)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUAKkvK7qS2vJNhb+wp+w3xvt7OMqjDA5renr/Mg/8AzW0++M0bbT4ZhOcbSAZFHEtyICmtvopdUoY4xw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsxJ3oTgkfODIqHQW+C/J/Mumg4OPIjPzNTUGs7Qwo8bEQuf9mxD/nbfYbgD4y
	cteJcPtJZovRlWyPXIj64DaowMwlHSNg45guM8uMvTRQv0VWcwn0rdcf7AvLKd4XIUsJQp4CWsL
	Ol4LH3mm5K8hzaWQOoi+gHIXX5H9XWeKVlr7WV4OMTckZms5n5cSEv+gdzZFuAW4jO6OoYLGDen
	F2eQrvTkaqjlwh4hMkggfkgx+VfeK38mY4gUzXTMcl+SgYPEAwGH1xKumzQtKr8j8ujFYgchUf5
	cy84vHhjmh/Irw/DB82vmZo3zillJyx+B10bdXnzx8ZUmx3tz1JzZAKsvDRIg++187EetuqKPjW
	qwNPZC8zcMtcgxHeKomssgjtGudHYOFe/oq2PXtDZpOLVTBnmzM0OVzGlImrPF+OjsQvubwJ0Fl
	rH8w==
X-Received: by 2002:a05:6e02:1c01:b0:433:1d5a:5157 with SMTP id e9e14a558f8ab-435aa88e822mr21434775ab.6.1763650367018;
        Thu, 20 Nov 2025 06:52:47 -0800 (PST)
Received: from [127.0.0.1] ([96.43.243.2])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5b954b207d7sm1008611173.33.2025.11.20.06.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 06:52:46 -0800 (PST)
From: Jens Axboe <axboe@kernel.dk>
To: linux-kernel@vger.kernel.org, david.laight.linux@gmail.com
Cc: Alan Stern <stern@rowland.harvard.edu>, 
 Alexander Viro <viro@zeniv.linux.org.uk>, 
 Alexei Starovoitov <ast@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Andreas Dilger <adilger.kernel@dilger.ca>, Andrew Lunn <andrew@lunn.ch>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Ard Biesheuvel <ardb@kernel.org>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Borislav Petkov <bp@alien8.de>, 
 Christian Brauner <brauner@kernel.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Christoph Hellwig <hch@lst.de>, Daniel Borkmann <daniel@iogearbox.net>, 
 Dan Williams <dan.j.williams@intel.com>, 
 Dave Hansen <dave.hansen@linux.intel.com>, 
 Dave Jiang <dave.jiang@intel.com>, David Ahern <dsahern@kernel.org>, 
 Davidlohr Bueso <dave@stgolabs.net>, 
 "David S. Miller" <davem@davemloft.net>, Dennis Zhou <dennis@kernel.org>, 
 Eric Dumazet <edumazet@google.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, Ingo Molnar <mingo@redhat.com>, 
 Jakub Kicinski <kuba@kernel.org>, Jakub Sitnicki <jakub@cloudflare.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 Jarkko Sakkinen <jarkko@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
 Jiri Slaby <jirislaby@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, 
 John Allen <john.allen@amd.com>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>, 
 Juergen Gross <jgross@suse.com>, Kees Cook <kees@kernel.org>, 
 KP Singh <kpsingh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, 
 Mika Westerberg <westeri@kernel.org>, Mike Rapoport <rppt@kernel.org>, 
 Miklos Szeredi <miklos@szeredi.hu>, Namhyung Kim <namhyung@kernel.org>, 
 Neal Cardwell <ncardwell@google.com>, nic_swsd@realtek.com, 
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, 
 Olivia Mackall <olivia@selenic.com>, Paolo Abeni <pabeni@redhat.com>, 
 Paolo Bonzini <pbonzini@redhat.com>, Peter Huewe <peterhuewe@gmx.de>, 
 Peter Zijlstra <peterz@infradead.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Sean Christopherson <seanjc@google.com>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Stefano Stabellini <sstabellini@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Tejun Heo <tj@kernel.org>, 
 Theodore Ts'o <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
 Tom Lendacky <thomas.lendacky@amd.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, x86@kernel.org, 
 Yury Norov <yury.norov@gmail.com>, amd-gfx@lists.freedesktop.org, 
 bpf@vger.kernel.org, cgroups@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, 
 kvm@vger.kernel.org, linux-acpi@vger.kernel.org, 
 linux-block@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-cxl@vger.kernel.org, linux-efi@vger.kernel.org, 
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-integrity@vger.kernel.org, linux-mm@kvack.org, 
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org, 
 linux-perf-users@vger.kernel.org, linux-scsi@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, mptcp@lists.linux.dev, netdev@vger.kernel.org, 
 usb-storage@lists.one-eyed-alien.net, David Hildenbrand <david@kernel.org>
In-Reply-To: <20251119224140.8616-1-david.laight.linux@gmail.com>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
Subject: [usb-storage] Re: (subset) [PATCH 00/44] Change a lot of min_t() that
 might mask high bits
Message-Id: <176365036384.566630.2992984118137417732.b4-ty@kernel.dk>
Date: Thu, 20 Nov 2025 07:52:43 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: b4 0.14.3
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20230601.gappssmtp.com header.s=20230601
 header.b=uDnxkxwU;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk;
       dara=neutral header.i=@lists.one-eyed-alien.net
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


On Wed, 19 Nov 2025 22:40:56 +0000, david.laight.linux@gmail.com wrote:
> It in not uncommon for code to use min_t(uint, a, b) when one of a or b
> is 64bit and can have a value that is larger than 2^32;
> This is particularly prevelant with:
> 	uint_var = min_t(uint, uint_var, uint64_expression);
> 
> Casts to u8 and u16 are very likely to discard significant bits.
> 
> [...]

Applied, thanks!

[12/44] block: use min() instead of min_t()
        commit: 9420e720ad192c53c8d2803c5a2313b2d586adbd

Best regards,
-- 
Jens Axboe



-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/176365036384.566630.2992984118137417732.b4-ty%40kernel.dk.
