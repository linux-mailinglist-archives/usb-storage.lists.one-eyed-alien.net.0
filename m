Return-Path: <usb-storage+bncBCO3PDUQQMDRBBMZ7HEAMGQE6LLQMFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id B0804C71690
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 00:02:41 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4ed74e6c468sf3503481cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 19 Nov 2025 15:02:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763593350; cv=pass;
        d=google.com; s=arc-20240605;
        b=XIlneqFx0kYaCvpgJukU1jMGpPnNteuEWYDgMj8eUvpAmwtWOiqD7gVHZPoXvkhcIz
         O9c2/Zr5k7Uvw2CJvi6tBaMmcHAP9wSpAKX3AlgYMvlrGhqK8Zfi4+cOsd04A++cKjUb
         xlvnuzmSOK+Pmr6m7cEMGB8izmwWPv0l78APCZxfbaUHj/+qKxd1NdNMhq2EqsbO2qeK
         gszcuuW2qREs0z/jEGAVy19zmjUwBuAi6wMrp9/WjnHPdsweQViQFa1nUjSfkti4+Mu0
         gtfnTGe4zJNeufNZsGxPYeZM5eoRCcDNl0W9WwW+onedCqEdc6jbjzHNhuXSSFp77GuD
         YxYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=hn7FT/H92oujQqCl54RvKkj4hf5fsGemOtkROOmHnCE=;
        fh=/kTeX9vbBoBgjfUgZ4/a3bCkzFDRcmYF3UcRc29PxCk=;
        b=dwnUvBxfYnaFs1Pz7S2lxrY6zKI/aaNylPW98pThkgEjyGblLydaYxNd8MTVhX8j0P
         WWyrpnwcPy8iTP4AtKdwqbcTN7yFd3UFJa+zUVdUy35HGHqufRvpAGkLErjKQRdopwN8
         qx4Fnoj2hEQTkca2/Yp8Os8ogSmfHsbpKvzk/qDc1VmDCfmpLh9JwZuMbLKhhGNatcM2
         pUk466VT66eIBMPoKx6YRva6+DYXm4UkgLOlMUb2Nn3R8RLz4fmAF+jglDrL4LEnuQEB
         9IWOh7To38bcLMx9AUYgRC19Ifr0Ztgzdl703kM/LvOb5y2VyWeJJYvfL0/I52+G4M8N
         nljw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@runbox.com header.s=selector1 header.b=PsN5RGYw;
       spf=pass (google.com: domain of david.laight.linux_spam@runbox.com designates 2a0c:5a00:149::25 as permitted sender) smtp.mailfrom=david.laight.linux_spam@runbox.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763593350; x=1764198150; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=hn7FT/H92oujQqCl54RvKkj4hf5fsGemOtkROOmHnCE=;
        b=lh6Bgb1GJ5y+yyIraY0w3lDDKvGfvaKjj4TB0wnHBx9XLsKocFGQJPQUVzivCePmzf
         hEKM5HzJbLETCv3q8zu9q+7j9PKTCygIT9eYrKUnsEPgvbLXqmEJN+N0zAS38+2ahhAB
         /TaisxwJdzAmNL3DTG9eguOSX2DXWzLPkn+7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593350; x=1764198150;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hn7FT/H92oujQqCl54RvKkj4hf5fsGemOtkROOmHnCE=;
        b=I/pwL1d9Jh8b16kJ47bc5yvSFxIdeXeIQsE15GUehSeAXj4R1wVJteIiaTqfc4qBNU
         5YUX/S1C2gd87f3nZmBslfb6XubW3jSUE/jMrwh+AIWOIlZGDa3sJlM9Q3t43mlMWFJD
         JJCloJVWw77YjtLfLHkuGeVNIful/P+s5Ph+B6+gDdwj4nlu6kkkwIUymX7qV8qAtbT/
         wtlA0fkiM9mdzxYPndz5VP1IjFnf7ZJa9kPoeF9yZe0FgDdWSpYltKg4eE1CiKmb994S
         KTDnreGz8V8lRhRLzgUSLFutLsnCMmuRKh0znqJAhcYSH+3SDVuvdzsaa+HWmnoOuHK5
         j/xg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUiSiQakkA0my7L2P+feLXaTr4m5i5E3CnXdkCdRPvrTY2vBri/lcHKnl/NY7QU2nXGQ3uRgg==@lfdr.de
X-Gm-Message-State: AOJu0Yyb60pgBxvhxsXfToAoxLb/4YhKHvMDyBER4E1aRS8JhWKMxQnd
	YteuPXx5/RWcTtJGt33J9AB4xoBoC8TW1GROCJFFhX1p5iMLvVS/LGftYu6Oz3m1u58=
X-Google-Smtp-Source: AGHT+IH5j7Ih6gjE76pZ1YoZOkWeqQbNQgPMFao3aPdXEwSCW7Hl6J8jpgKUZj2ZeBU/uzBAeyUPHA==
X-Received: by 2002:ac8:5714:0:b0:4ee:28d1:4b95 with SMTP id d75a77b69052e-4ee4966818emr14884511cf.48.1763593349554;
        Wed, 19 Nov 2025 15:02:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+b0jtX8l4Kb3AZe2PsaYFVhCQSznyhWxfKXf0P7vNfCAA=="
Received: by 2002:ac8:7fcb:0:b0:4eb:7676:b2f with SMTP id d75a77b69052e-4ee49161650ls5556311cf.2.-pod-prod-08-us;
 Wed, 19 Nov 2025 15:02:29 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVN6CySLNxzZwsuSgBe6e+Sw+OZ8VfSW9aAf6KnlduxZJopiJ4u2KLn32lQnvuMkx4HVEqw2EOSy+GXGw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a23:b0:89f:66a7:338a with SMTP id af79cd13be357-8b327311986mr162723885a.22.1763593348893;
        Wed, 19 Nov 2025 15:02:28 -0800 (PST)
Received: by 2002:ab3:785a:0:b0:2cb:e387:155d with SMTP id a1c4a302cd1d6-2d1c47b156emsc7a;
        Wed, 19 Nov 2025 14:43:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWsOFjeoHBCc3UrwvGuYsUqmwITYPcENaZG4H+kXs2fto9YMfMz4QEiT/1xM6o64BfDiduKuGQsdvgg3Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:651c:4356:20b0:372:904d:add4 with SMTP id 38308e7fff4ca-37cc6796826mr3152101fa.28.1763592195069;
        Wed, 19 Nov 2025 14:43:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763592195; cv=none;
        d=google.com; s=arc-20240605;
        b=H3qkphb+n8XyElHFnmHp5Pgs2a9/+dbRpPMqSUuRWdNMcqvTev1/CbbDK2mIlcgfzH
         LmJlIEaKYtnfsyuvQPE3q4FNxGc/hfsOtnY4dF18T02NTqEsx32dgFCVoc53+1jQp+h1
         eUA0bzrm4TJjkRI+N2/XW2mKCI9YNbttyKWhJSEgSnNcdoqGsZJmxnw1+8KgshK81z9t
         2HN2ki1payIfzqylh/INfWGCxNDHYpNaB+s6X01sqmwfO1Upv/nWsDoUoiL8hY3ppFaK
         wKVQUsEBaL/x1hjgqPkyyDNO0WSXub1+6BuXCImgYpAaFW/3O4MmvMsNA/v+y5x4ykzA
         Z6ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vH8FIvcSxGANwVWko1oGmXX5GS5gNWUC/JCXBzpAFv8=;
        fh=eJA0mc1i6196qiqC2oPJMztVNuivG9MUDpghIvfGBkI=;
        b=ghnZ6cXQr/wYIrWILLSorSoHd17+wIO7nOOg+crdZoCOGhTkwSvJyzstXca43aDf7T
         XRbDfXai/5+LwcVFQ++EFij/GlweVFz+KY5FXJnAMA8wWTXOul/767SG9WxpB33EmKwz
         o+OMmPtZubgVrq5P7I2cRDTiKk8r3+Hbvn78zu0zyE4R26TMhith0xM6EkC23zWCpknv
         7lay8iwdWM/jD0XQNBod5St7ifGA+kIrlkQi2oiZQZL0vOxR3j8JwdUsnodvUpNikicC
         BmgMSVvh6KLEjuXAizgJbF+2LkbV5klo/Zs9TLmwdoYN6sfN2vlrM/gaaYm9kj1LQnw2
         SQow==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@runbox.com header.s=selector1 header.b=PsN5RGYw;
       spf=pass (google.com: domain of david.laight.linux_spam@runbox.com designates 2a0c:5a00:149::25 as permitted sender) smtp.mailfrom=david.laight.linux_spam@runbox.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mailtransmit04.runbox.com (mailtransmit04.runbox.com. [2a0c:5a00:149::25])
        by mx.google.com with ESMTPS id 38308e7fff4ca-37cc6bd4f29si991381fa.565.2025.11.19.14.43.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:43:15 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight.linux_spam@runbox.com designates 2a0c:5a00:149::25 as permitted sender) client-ip=2a0c:5a00:149::25;
Received: from mailtransmit02.runbox ([10.9.9.162] helo=aibo.runbox.com)
	by mailtransmit04.runbox.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <david.laight.linux_spam@runbox.com>)
	id 1vLqsC-006yiG-CY; Wed, 19 Nov 2025 23:42:00 +0100
Received: from [10.9.9.74] (helo=submission03.runbox)
	by mailtransmit02.runbox with esmtp (Exim 4.86_2)
	(envelope-from <david.laight.linux_spam@runbox.com>)
	id 1vLqs5-0007yi-PP; Wed, 19 Nov 2025 23:41:53 +0100
Received: by submission03.runbox with esmtpsa  [Authenticated ID (1493616)]  (TLS1.2:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.93)
	id 1vLqs1-00Fos6-6h; Wed, 19 Nov 2025 23:41:49 +0100
From: david.laight.linux@gmail.com
To: linux-kernel@vger.kernel.org
Cc: Alan Stern <stern@rowland.harvard.edu>,
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
	Bjorn Helgaas <bhelgaas@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Christian Brauner <brauner@kernel.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Christoph Hellwig <hch@lst.de>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Dan Williams <dan.j.williams@intel.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	David Ahern <dsahern@kernel.org>,
	David Hildenbrand <david@redhat.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	"David S. Miller" <davem@davemloft.net>,
	Dennis Zhou <dennis@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Ingo Molnar <mingo@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Jakub Sitnicki <jakub@cloudflare.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	Jens Axboe <axboe@kernel.dk>,
	Jiri Slaby <jirislaby@kernel.org>,
	Johannes Weiner <hannes@cmpxchg.org>,
	John Allen <john.allen@amd.com>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Juergen Gross <jgross@suse.com>,
	Kees Cook <kees@kernel.org>,
	KP Singh <kpsingh@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Mika Westerberg <westeri@kernel.org>,
	Mike Rapoport <rppt@kernel.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Namhyung Kim <namhyung@kernel.org>,
	Neal Cardwell <ncardwell@google.com>,
	nic_swsd@realtek.com,
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
	Steven Rostedt <rostedt@goodmis.org>,
	Tejun Heo <tj@kernel.org>,
	"Theodore Ts'o" <tytso@mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
	x86@kernel.org,
	Yury Norov <yury.norov@gmail.com>,
	amd-gfx@lists.freedesktop.org,
	bpf@vger.kernel.org,
	cgroups@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	io-uring@vger.kernel.org,
	kvm@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-block@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-cxl@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-ext4@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-integrity@vger.kernel.org,
	linux-mm@kvack.org,
	linux-nvme@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	mptcp@lists.linux.dev,
	netdev@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	David Laight <david.laight.linux@gmail.com>
Subject: [usb-storage] [PATCH 00/44] Change a lot of min_t() that might mask
 high bits
Date: Wed, 19 Nov 2025 22:40:56 +0000
Message-Id: <20251119224140.8616-1-david.laight.linux@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Original-Sender: david.laight.linux@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@runbox.com header.s=selector1 header.b=PsN5RGYw;       spf=pass
 (google.com: domain of david.laight.linux_spam@runbox.com designates
 2a0c:5a00:149::25 as permitted sender) smtp.mailfrom=david.laight.linux_spam@runbox.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

From: David Laight <david.laight.linux@gmail.com>

It in not uncommon for code to use min_t(uint, a, b) when one of a or b
is 64bit and can have a value that is larger than 2^32;
This is particularly prevelant with:
	uint_var = min_t(uint, uint_var, uint64_expression);

Casts to u8 and u16 are very likely to discard significant bits.

These can be detected at compile time by changing min_t(), for example:
#define CHECK_SIZE(fn, type, val) \
	BUILD_BUG_ON_MSG(sizeof (val) > sizeof (type) && \
		!statically_true(((val) >> 8 * (sizeof (type) - 1)) < 256), \
		fn "() significant bits of '" #val "' may be discarded")

#define min_t(type, x, y) ({ \
	CHECK_SIZE("min_t", type, x); \
	CHECK_SIZE("min_t", type, y); \
	__cmp_once(min, type, x, y); })

(and similar changes to max_t() and clamp_t().)

This shows up some real bugs, some unlikely bugs and some false positives.
In most cases both arguments are unsigned type (just different ones)
and min_t() can just be replaced by min().

The patches are all independant and are most of the ones needed to
get the x86-64 kernel I build to compile.
I've not tried building an allyesconfig or allmodconfig kernel.
I've also not included the patch to minmax.h itself.

I've tried to put the patches that actually fix things first.
The last one is 0009.

I gave up on fixing sched/fair.c - it is too broken for a single patch!
The patch for net/ipv4/tcp.c is also absent because do_tcp_getsockopt()
needs multiple/larger changes to make it 'sane'.

I've had to trim the 124 maintainers/lists that get_maintainer.pl finds
from 124 to under 100 to be able to send the cover letter.
The individual patches only go to the addresses found for the associated files.
That reduces the number of emails to a less unsane number.

David Laight (44):
  x86/asm/bitops: Change the return type of variable__ffs() to unsigned
    int
  ext4: Fix saturation of 64bit inode times for old filesystems
  perf: Fix branch stack callchain limit
  io_uring/net: Change some dubious min_t()
  ipc/msg: Fix saturation of percpu counts in msgctl_info()
  bpf: Verifier, remove some unusual uses of min_t() and max_t()
  net/core/flow_dissector: Fix cap of __skb_flow_dissect() return value.
  net: ethtool: Use min3() instead of nested min_t(u16,...)
  ipv6: __ip6_append_data() don't abuse max_t() casts
  x86/crypto: ctr_crypt() use min() instead of min_t()
  arch/x96/kvm: use min() instead of min_t()
  block: use min() instead of min_t()
  drivers/acpi: use min() instead of min_t()
  drivers/char/hw_random: use min3() instead of nested min_t()
  drivers/char/tpm: use min() instead of min_t()
  drivers/crypto/ccp: use min() instead of min_t()
  drivers/cxl: use min() instead of min_t()
  drivers/gpio: use min() instead of min_t()
  drivers/gpu/drm/amd: use min() instead of min_t()
  drivers/i2c/busses: use min() instead of min_t()
  drivers/net/ethernet/realtek: use min() instead of min_t()
  drivers/nvme: use min() instead of min_t()
  arch/x86/mm: use min() instead of min_t()
  drivers/nvmem: use min() instead of min_t()
  drivers/pci: use min() instead of min_t()
  drivers/scsi: use min() instead of min_t()
  drivers/tty/vt: use umin() instead of min_t(u16, ...) for row/col
    limits
  drivers/usb/storage: use min() instead of min_t()
  drivers/xen: use min() instead of min_t()
  fs: use min() or umin() instead of min_t()
  block: bvec.h: use min() instead of min_t()
  nodemask: use min() instead of min_t()
  ipc: use min() instead of min_t()
  bpf: use min() instead of min_t()
  bpf_trace: use min() instead of min_t()
  lib/bucket_locks: use min() instead of min_t()
  lib/crypto/mpi: use min() instead of min_t()
  lib/dynamic_queue_limits: use max() instead of max_t()
  mm: use min() instead of min_t()
  net: Don't pass bitfields to max_t()
  net/core: Change loop conditions so min() can be used
  net: use min() instead of min_t()
  net/netlink: Use umin() to avoid min_t(int, ...) discarding high bits
  net/mptcp: Change some dubious min_t(int, ...) to min()

 arch/x86/crypto/aesni-intel_glue.c            |  3 +-
 arch/x86/include/asm/bitops.h                 | 18 +++++-------
 arch/x86/kvm/emulate.c                        |  3 +-
 arch/x86/kvm/lapic.c                          |  2 +-
 arch/x86/kvm/mmu/mmu.c                        |  2 +-
 arch/x86/mm/pat/set_memory.c                  | 12 ++++----
 block/blk-iocost.c                            |  6 ++--
 block/blk-settings.c                          |  2 +-
 block/partitions/efi.c                        |  3 +-
 drivers/acpi/property.c                       |  2 +-
 drivers/char/hw_random/core.c                 |  2 +-
 drivers/char/tpm/tpm1-cmd.c                   |  2 +-
 drivers/char/tpm/tpm_tis_core.c               |  4 +--
 drivers/crypto/ccp/ccp-dev.c                  |  2 +-
 drivers/cxl/core/mbox.c                       |  2 +-
 drivers/gpio/gpiolib-acpi-core.c              |  2 +-
 .../gpu/drm/amd/amdgpu/amdgpu_doorbell_mgr.c  |  4 +--
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  2 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 +-
 drivers/i2c/busses/i2c-designware-master.c    |  2 +-
 drivers/net/ethernet/realtek/r8169_main.c     |  3 +-
 drivers/nvme/host/pci.c                       |  3 +-
 drivers/nvme/host/zns.c                       |  3 +-
 drivers/nvmem/core.c                          |  2 +-
 drivers/pci/probe.c                           |  3 +-
 drivers/scsi/hosts.c                          |  2 +-
 drivers/tty/vt/selection.c                    |  9 +++---
 drivers/usb/storage/protocol.c                |  3 +-
 drivers/xen/grant-table.c                     |  2 +-
 fs/buffer.c                                   |  2 +-
 fs/exec.c                                     |  2 +-
 fs/ext4/ext4.h                                |  2 +-
 fs/ext4/mballoc.c                             |  3 +-
 fs/ext4/resize.c                              |  2 +-
 fs/ext4/super.c                               |  2 +-
 fs/fat/dir.c                                  |  4 +--
 fs/fat/file.c                                 |  3 +-
 fs/fuse/dev.c                                 |  2 +-
 fs/fuse/file.c                                |  8 ++---
 fs/splice.c                                   |  2 +-
 include/linux/bvec.h                          |  3 +-
 include/linux/nodemask.h                      |  9 +++---
 include/linux/perf_event.h                    |  2 +-
 include/net/tcp_ecn.h                         |  5 ++--
 io_uring/net.c                                |  6 ++--
 ipc/mqueue.c                                  |  4 +--
 ipc/msg.c                                     |  6 ++--
 kernel/bpf/core.c                             |  4 +--
 kernel/bpf/log.c                              |  2 +-
 kernel/bpf/verifier.c                         | 29 +++++++------------
 kernel/trace/bpf_trace.c                      |  2 +-
 lib/bucket_locks.c                            |  2 +-
 lib/crypto/mpi/mpicoder.c                     |  2 +-
 lib/dynamic_queue_limits.c                    |  2 +-
 mm/gup.c                                      |  4 +--
 mm/memblock.c                                 |  2 +-
 mm/memory.c                                   |  2 +-
 mm/percpu.c                                   |  2 +-
 mm/truncate.c                                 |  3 +-
 mm/vmscan.c                                   |  2 +-
 net/core/datagram.c                           |  6 ++--
 net/core/flow_dissector.c                     |  7 ++---
 net/core/net-sysfs.c                          |  3 +-
 net/core/skmsg.c                              |  4 +--
 net/ethtool/cmis_cdb.c                        |  7 ++---
 net/ipv4/fib_trie.c                           |  2 +-
 net/ipv4/tcp_input.c                          |  4 +--
 net/ipv4/tcp_output.c                         |  5 ++--
 net/ipv4/tcp_timer.c                          |  4 +--
 net/ipv6/addrconf.c                           |  8 ++---
 net/ipv6/ip6_output.c                         |  7 +++--
 net/ipv6/ndisc.c                              |  5 ++--
 net/mptcp/protocol.c                          |  8 ++---
 net/netlink/genetlink.c                       |  9 +++---
 net/packet/af_packet.c                        |  2 +-
 net/unix/af_unix.c                            |  4 +--
 76 files changed, 141 insertions(+), 176 deletions(-)

-- 
2.39.5

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251119224140.8616-1-david.laight.linux%40gmail.com.
