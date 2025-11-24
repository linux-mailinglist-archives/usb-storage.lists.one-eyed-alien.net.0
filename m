Return-Path: <usb-storage+bncBDTY5EWUQMEBBMWRSHEQMGQE7LIXW4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1E9C80F2C
	for <lists+usb-storage@lfdr.de>; Mon, 24 Nov 2025 15:16:20 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-88044215975sf149852986d6.1
        for <lists+usb-storage@lfdr.de>; Mon, 24 Nov 2025 06:16:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763993779; cv=pass;
        d=google.com; s=arc-20240605;
        b=QeNNRkuJqG6KWMZgpbYZZcxl8maXnFI7Y7YgccuxYcV5k4ZIRljqKj/qJUXeAySTcR
         /YERiO78Cu+XndYGwFwnM2OYEhtVS/9mxGzh1qNtYH8Ken0XwbUyB+uw/x2lX8e/cWi9
         vf+gcRAlDPm3wnLClcriLkEdUooQ065dxz9h+L88VZ76tvbkwzzm7qI8P21he9Is/+5R
         25Pu4z8qnlwa4H17wRuRKizeEPaHWtwFQ1/8ls1bY2DjAW1UcALVJfAsFZmMHoGpk4Jd
         h3TgzNPOsWbh+Ee7n45LaeTkz+cMhkAXtmwG4lK7pWrWZikEODeBKbUVnvP3fzORjDB4
         ujsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=V3cetUBMXL/3kEG3mNqE6EeU64jqIvRK/lnUQH0KZnc=;
        fh=TWNo3VmRijvaJ0Ocvog5qecmav50ZONZB0jvJZTW/NA=;
        b=kFv4/e0+kbmyLXW/Zu/SbNoXZYs0jMAJsFUIcVlMBN6nSbwXWp2qkxb4UiUVsWWP7G
         ZPx0T+zt7ueQTJMQNiobj/x3QmN8FTXoKt0Td4ZUhiEyWQIJbBJlDQ9e/iO2zW+GXzNA
         MwoWSgBysa0gz8+WE3qBx5zqZQIT/Gij0oCYFfw+G6ygZZwB1DhS2UE5m0rezcx2D1lM
         cvjR3Mww94sPPz160e3d8UJlTHu21MqVsogYnKEbFJCFoP7WE/J0WQj3vC3Z6IsPfstf
         E39MOJ+DuCvIJLj5yYqPYt99hIurG8+HFsDhrPVgQLuGJ0+lTHUWSumzShhXmGc7Tkrm
         LCUg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gondor.apana.org.au header.s=h01 header.b=P87gnIuA;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 180.181.231.80 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au;
       dmarc=pass (p=REJECT sp=QUARANTINE dis=NONE) header.from=apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763993779; x=1764598579; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V3cetUBMXL/3kEG3mNqE6EeU64jqIvRK/lnUQH0KZnc=;
        b=H+05uIzgG0teg96ksC/xmBQtTTQHa/MNXY0fN2DLJ3p6td5NA7/kxQtlUiPkDIOsCn
         cU4XUXrNdz00Fg0qCJz09y4mGWQg+ueHv/BEBxJPGA6ByHafNMgNMsIiA3cXMxQzN6VW
         F4rKT2sVpzvdavNcTAzh4P7sD9Wt625Hk4Iig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763993779; x=1764598579;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V3cetUBMXL/3kEG3mNqE6EeU64jqIvRK/lnUQH0KZnc=;
        b=f0xHQ9+RdbM3Voe/bmxWugXcuwHkbxsrHRQlk1cr/Lq28Y766dDPSSBNOURPfgE9/S
         G+/d/t8HgLRO33xVHMKjJputS4p9sWp6mgjMHG9pxOFMIZs7D0SOJ/bfPrwLIKNI8fuL
         q6+9g02ahckJITnKl0/4q2TxbWhw/RPyj2W8Spbstm+25wpRxWDHw8qDnPf2eN9WPQF9
         usDpLtj3BnHFGHG5xRTBFH35qePFPpEOt7bqE5wY5JCUht3LYVmDH8hthRTpzhcKyQnP
         i2lOGWNFkcSOQ+IBgd7y/dHN4tgn9MLKQP8W3tljsNPw3unBmIHAB7OtLJLoPcEwUnRw
         MvYA==
X-Forwarded-Encrypted: i=2; AJvYcCUUu9O8x4oUgajz9yeZTeCMo6YJTaAygIKeh0W6W6AaVog9GJJlqd8O/ZfpID/03F4DlP3+Lw==@lfdr.de
X-Gm-Message-State: AOJu0YyoatniF+7NbdjG32yCm8bvTAijQrAhPd50Wm3fRVVcbX+MqT9T
	5BdTY81GU0fWS9OHJ9QuqukCf4oSK7kC8V8Kc2gkgwIesos1Kh/aQlh0hCbvo3+tNps=
X-Google-Smtp-Source: AGHT+IH694aUdrompp/fk0TnIsoQptWc3b9zyLul8xR9Y+bTWxpDsHuImFp2IFgm0k3y/vOO+KfvnQ==
X-Received: by 2002:ad4:5f48:0:b0:882:4a63:63a7 with SMTP id 6a1803df08f44-8847c545834mr178317396d6.60.1763993778990;
        Mon, 24 Nov 2025 06:16:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+a2CWLStarK2oHQKLYld3ptr/TxMQHNnGfHj5qpx7UVzA=="
Received: by 2002:a05:6214:8008:b0:880:803b:bd47 with SMTP id
 6a1803df08f44-8846da603d6ls79171866d6.1.-pod-prod-05-us; Mon, 24 Nov 2025
 06:16:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVFS85tSiLjKjG4W/OcmMAkLJiOGo+4dsUbPp0Wni2CWyBOJDAmdx/z1sm+4O3Fg4sw/6PPGTUgwc0eRQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1993:b0:8b2:ec5c:20cf with SMTP id af79cd13be357-8b33d23b365mr1157549985a.9.1763993778355;
        Mon, 24 Nov 2025 06:16:18 -0800 (PST)
Received: by 2002:a05:6808:8919:10b0:450:d12c:eb7e with SMTP id 5614622812f47-4511142e36dmsb6e;
        Mon, 24 Nov 2025 01:51:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUmSqcrRVNPJaD/KxHsuHzd6pd9BXVDLctXFdXWR4bQNWbdNPAtLY7Vz/ZWOxWj5jcTmfRylVQBPm3mnQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:7022:24a2:b0:119:e569:f261 with SMTP id a92af1059eb24-11c9d70a653mr7752740c88.10.1763977915719;
        Mon, 24 Nov 2025 01:51:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763977915; cv=none;
        d=google.com; s=arc-20240605;
        b=Wc0Nor1XlbSFFreFx98ut4hLaQI7YinLD8r3LkN4/iRLjRfrEBW3wlNNXGUQ3JQQlL
         5B/9pIDAIkEEetCX0FHjpFNhmrHJ8eZy+xYkTL/txTyleyHtOTB4aIXpK6NjUpcKVNQs
         ZPaFWoD3tHaYrsNCxcTcZXqVWNfKxYhaQwP9FSlPakO19k0TfUMzCCqNHDayxEI/7lP2
         2/S6werByAYE8ZRXhSUHipCVTjOru3cbP9a0YgH/9Y3cM+Q0eK/YIrxcGGVEEwr2JAZQ
         Dnv8gxd3q0W+YY4TCwB5fQ7b1Gh4w+TFB/CbcPkxhQNmZjoPdO4VlZzue+vddg3v8enl
         oGxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=B05uJapQfRMGohKkgF1xNVyERBHmagh8Bd3xg1q2NeI=;
        fh=TfxMEuTP8M0SW8pArcdzQ1NpMV+Zy+f0XmYLEgRZxWo=;
        b=UbzMxUHYPNVQtI6tYtEed+A0aiIYk8LxX91nlpVBo++nAcLBSOMfzoZaIp/KYtJtLY
         Qq0/iK3IrqaQ8zewJSTWxDyOj+WBjU41+WBCCyw0Evg4Vcoer7nHv6pMHW1HW/5q5aAP
         IOC1chFGGjRvP/isT9yLbLprzxvrgDMUSdEZPvj5grltQPIGhND+5OCJzVI7YZHv52Au
         1MHGBHCdSVNvTwK/rJdPtOIzpilbNhnv8KN0MM8LMChCuXAs3lwDRBdfXrjklczq+w9X
         SMcQiCcjQ7s66yj4kl2PxZ19Y40g6iVyBw+Z9W0OzQdozMtxNyGt2vvbV+cJV8YXQflF
         1jvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gondor.apana.org.au header.s=h01 header.b=P87gnIuA;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 180.181.231.80 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au;
       dmarc=pass (p=REJECT sp=QUARANTINE dis=NONE) header.from=apana.org.au
Received: from abb.hmeau.com (abb.hmeau.com. [180.181.231.80])
        by mx.google.com with ESMTPS id a92af1059eb24-11ca3a75fe6si8086303c88.280.2025.11.24.01.51.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:51:55 -0800 (PST)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 180.181.231.80 as permitted sender) client-ip=180.181.231.80;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1vNTCh-005XNj-0w;
	Mon, 24 Nov 2025 17:49:52 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Mon, 24 Nov 2025 17:49:51 +0800
Date: Mon, 24 Nov 2025 17:49:51 +0800
From: "'Herbert Xu' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: david.laight.linux@gmail.com
Cc: linux-kernel@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Andreas Dilger <adilger.kernel@dilger.ca>,
	Andrew Lunn <andrew@lunn.ch>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>, Borislav Petkov <bp@alien8.de>,
	Christian Brauner <brauner@kernel.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Christoph Hellwig <hch@lst.de>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Dan Williams <dan.j.williams@intel.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Dave Jiang <dave.jiang@intel.com>, David Ahern <dsahern@kernel.org>,
	David Hildenbrand <david@redhat.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	"David S. Miller" <davem@davemloft.net>,
	Dennis Zhou <dennis@kernel.org>, Eric Dumazet <edumazet@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Jakub Sitnicki <jakub@cloudflare.com>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	Jens Axboe <axboe@kernel.dk>, Jiri Slaby <jirislaby@kernel.org>,
	Johannes Weiner <hannes@cmpxchg.org>,
	John Allen <john.allen@amd.com>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Juergen Gross <jgross@suse.com>, Kees Cook <kees@kernel.org>,
	KP Singh <kpsingh@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Mika Westerberg <westeri@kernel.org>,
	Mike Rapoport <rppt@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>,
	Namhyung Kim <namhyung@kernel.org>,
	Neal Cardwell <ncardwell@google.com>, nic_swsd@realtek.com,
	OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
	Olivia Mackall <olivia@selenic.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Peter Huewe <peterhuewe@gmx.de>,
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
	linux-usb@vger.kernel.org, mptcp@lists.linux.dev,
	netdev@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 00/44] Change a lot of min_t() that might
 mask high bits
Message-ID: <aSQqP6nlqGYOGqcJ@gondor.apana.org.au>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251119224140.8616-1-david.laight.linux@gmail.com>
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gondor.apana.org.au header.s=h01 header.b=P87gnIuA;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 180.181.231.80
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au;
       dmarc=pass (p=REJECT sp=QUARANTINE dis=NONE) header.from=apana.org.au
X-Original-From: Herbert Xu <herbert@gondor.apana.org.au>
Reply-To: Herbert Xu <herbert@gondor.apana.org.au>
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

On Wed, Nov 19, 2025 at 10:40:56PM +0000, david.laight.linux@gmail.com wrote:
> From: David Laight <david.laight.linux@gmail.com>
> 
> It in not uncommon for code to use min_t(uint, a, b) when one of a or b
> is 64bit and can have a value that is larger than 2^32;
> This is particularly prevelant with:
> 	uint_var = min_t(uint, uint_var, uint64_expression);
> 
> Casts to u8 and u16 are very likely to discard significant bits.
> 
> These can be detected at compile time by changing min_t(), for example:
> #define CHECK_SIZE(fn, type, val) \
> 	BUILD_BUG_ON_MSG(sizeof (val) > sizeof (type) && \
> 		!statically_true(((val) >> 8 * (sizeof (type) - 1)) < 256), \
> 		fn "() significant bits of '" #val "' may be discarded")
> 
> #define min_t(type, x, y) ({ \
> 	CHECK_SIZE("min_t", type, x); \
> 	CHECK_SIZE("min_t", type, y); \
> 	__cmp_once(min, type, x, y); })
> 
> (and similar changes to max_t() and clamp_t().)
> 
> This shows up some real bugs, some unlikely bugs and some false positives.
> In most cases both arguments are unsigned type (just different ones)
> and min_t() can just be replaced by min().
> 
> The patches are all independant and are most of the ones needed to
> get the x86-64 kernel I build to compile.
> I've not tried building an allyesconfig or allmodconfig kernel.
> I've also not included the patch to minmax.h itself.
> 
> I've tried to put the patches that actually fix things first.
> The last one is 0009.
> 
> I gave up on fixing sched/fair.c - it is too broken for a single patch!
> The patch for net/ipv4/tcp.c is also absent because do_tcp_getsockopt()
> needs multiple/larger changes to make it 'sane'.
> 
> I've had to trim the 124 maintainers/lists that get_maintainer.pl finds
> from 124 to under 100 to be able to send the cover letter.
> The individual patches only go to the addresses found for the associated files.
> That reduces the number of emails to a less unsane number.
> 
> David Laight (44):
>   x86/asm/bitops: Change the return type of variable__ffs() to unsigned
>     int
>   ext4: Fix saturation of 64bit inode times for old filesystems
>   perf: Fix branch stack callchain limit
>   io_uring/net: Change some dubious min_t()
>   ipc/msg: Fix saturation of percpu counts in msgctl_info()
>   bpf: Verifier, remove some unusual uses of min_t() and max_t()
>   net/core/flow_dissector: Fix cap of __skb_flow_dissect() return value.
>   net: ethtool: Use min3() instead of nested min_t(u16,...)
>   ipv6: __ip6_append_data() don't abuse max_t() casts
>   x86/crypto: ctr_crypt() use min() instead of min_t()
>   arch/x96/kvm: use min() instead of min_t()
>   block: use min() instead of min_t()
>   drivers/acpi: use min() instead of min_t()
>   drivers/char/hw_random: use min3() instead of nested min_t()
>   drivers/char/tpm: use min() instead of min_t()
>   drivers/crypto/ccp: use min() instead of min_t()
>   drivers/cxl: use min() instead of min_t()
>   drivers/gpio: use min() instead of min_t()
>   drivers/gpu/drm/amd: use min() instead of min_t()
>   drivers/i2c/busses: use min() instead of min_t()
>   drivers/net/ethernet/realtek: use min() instead of min_t()
>   drivers/nvme: use min() instead of min_t()
>   arch/x86/mm: use min() instead of min_t()
>   drivers/nvmem: use min() instead of min_t()
>   drivers/pci: use min() instead of min_t()
>   drivers/scsi: use min() instead of min_t()
>   drivers/tty/vt: use umin() instead of min_t(u16, ...) for row/col
>     limits
>   drivers/usb/storage: use min() instead of min_t()
>   drivers/xen: use min() instead of min_t()
>   fs: use min() or umin() instead of min_t()
>   block: bvec.h: use min() instead of min_t()
>   nodemask: use min() instead of min_t()
>   ipc: use min() instead of min_t()
>   bpf: use min() instead of min_t()
>   bpf_trace: use min() instead of min_t()
>   lib/bucket_locks: use min() instead of min_t()
>   lib/crypto/mpi: use min() instead of min_t()
>   lib/dynamic_queue_limits: use max() instead of max_t()
>   mm: use min() instead of min_t()
>   net: Don't pass bitfields to max_t()
>   net/core: Change loop conditions so min() can be used
>   net: use min() instead of min_t()
>   net/netlink: Use umin() to avoid min_t(int, ...) discarding high bits
>   net/mptcp: Change some dubious min_t(int, ...) to min()
> 
>  arch/x86/crypto/aesni-intel_glue.c            |  3 +-
>  arch/x86/include/asm/bitops.h                 | 18 +++++-------
>  arch/x86/kvm/emulate.c                        |  3 +-
>  arch/x86/kvm/lapic.c                          |  2 +-
>  arch/x86/kvm/mmu/mmu.c                        |  2 +-
>  arch/x86/mm/pat/set_memory.c                  | 12 ++++----
>  block/blk-iocost.c                            |  6 ++--
>  block/blk-settings.c                          |  2 +-
>  block/partitions/efi.c                        |  3 +-
>  drivers/acpi/property.c                       |  2 +-
>  drivers/char/hw_random/core.c                 |  2 +-
>  drivers/char/tpm/tpm1-cmd.c                   |  2 +-
>  drivers/char/tpm/tpm_tis_core.c               |  4 +--
>  drivers/crypto/ccp/ccp-dev.c                  |  2 +-
>  drivers/cxl/core/mbox.c                       |  2 +-
>  drivers/gpio/gpiolib-acpi-core.c              |  2 +-
>  .../gpu/drm/amd/amdgpu/amdgpu_doorbell_mgr.c  |  4 +--
>  drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  2 +-
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 +-
>  drivers/i2c/busses/i2c-designware-master.c    |  2 +-
>  drivers/net/ethernet/realtek/r8169_main.c     |  3 +-
>  drivers/nvme/host/pci.c                       |  3 +-
>  drivers/nvme/host/zns.c                       |  3 +-
>  drivers/nvmem/core.c                          |  2 +-
>  drivers/pci/probe.c                           |  3 +-
>  drivers/scsi/hosts.c                          |  2 +-
>  drivers/tty/vt/selection.c                    |  9 +++---
>  drivers/usb/storage/protocol.c                |  3 +-
>  drivers/xen/grant-table.c                     |  2 +-
>  fs/buffer.c                                   |  2 +-
>  fs/exec.c                                     |  2 +-
>  fs/ext4/ext4.h                                |  2 +-
>  fs/ext4/mballoc.c                             |  3 +-
>  fs/ext4/resize.c                              |  2 +-
>  fs/ext4/super.c                               |  2 +-
>  fs/fat/dir.c                                  |  4 +--
>  fs/fat/file.c                                 |  3 +-
>  fs/fuse/dev.c                                 |  2 +-
>  fs/fuse/file.c                                |  8 ++---
>  fs/splice.c                                   |  2 +-
>  include/linux/bvec.h                          |  3 +-
>  include/linux/nodemask.h                      |  9 +++---
>  include/linux/perf_event.h                    |  2 +-
>  include/net/tcp_ecn.h                         |  5 ++--
>  io_uring/net.c                                |  6 ++--
>  ipc/mqueue.c                                  |  4 +--
>  ipc/msg.c                                     |  6 ++--
>  kernel/bpf/core.c                             |  4 +--
>  kernel/bpf/log.c                              |  2 +-
>  kernel/bpf/verifier.c                         | 29 +++++++------------
>  kernel/trace/bpf_trace.c                      |  2 +-
>  lib/bucket_locks.c                            |  2 +-
>  lib/crypto/mpi/mpicoder.c                     |  2 +-
>  lib/dynamic_queue_limits.c                    |  2 +-
>  mm/gup.c                                      |  4 +--
>  mm/memblock.c                                 |  2 +-
>  mm/memory.c                                   |  2 +-
>  mm/percpu.c                                   |  2 +-
>  mm/truncate.c                                 |  3 +-
>  mm/vmscan.c                                   |  2 +-
>  net/core/datagram.c                           |  6 ++--
>  net/core/flow_dissector.c                     |  7 ++---
>  net/core/net-sysfs.c                          |  3 +-
>  net/core/skmsg.c                              |  4 +--
>  net/ethtool/cmis_cdb.c                        |  7 ++---
>  net/ipv4/fib_trie.c                           |  2 +-
>  net/ipv4/tcp_input.c                          |  4 +--
>  net/ipv4/tcp_output.c                         |  5 ++--
>  net/ipv4/tcp_timer.c                          |  4 +--
>  net/ipv6/addrconf.c                           |  8 ++---
>  net/ipv6/ip6_output.c                         |  7 +++--
>  net/ipv6/ndisc.c                              |  5 ++--
>  net/mptcp/protocol.c                          |  8 ++---
>  net/netlink/genetlink.c                       |  9 +++---
>  net/packet/af_packet.c                        |  2 +-
>  net/unix/af_unix.c                            |  4 +--
>  76 files changed, 141 insertions(+), 176 deletions(-)

Patches 10,14,16,37 applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/aSQqP6nlqGYOGqcJ%40gondor.apana.org.au.
