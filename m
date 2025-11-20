Return-Path: <usb-storage+bncBD2NT6VEXYMRBPPG7HEAMGQEQOHVUDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B682C71B45
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 02:47:43 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-297f587dc2esf9067535ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 19 Nov 2025 17:47:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763603261; cv=pass;
        d=google.com; s=arc-20240605;
        b=Gp0jFfLh9Se7yj/lQj6375VA9cNKjPaZEqPk9fF+XVeDISl61cA+9cuQV2vQzeUuv6
         VHVicFNTHNNccIdkP6BMVZap6KQxN99/5j48oyX0JTm6YKQigboQ4B3L3ZxUKRHipULt
         ma/0j102aSz22WE+ZZL7icPDt9sS/jbU1PmJ6SS6sC9ZI6qi5rFM4AbPc3mvYsULN27U
         BjN3IaqgRaKWZ2i6aoTmkwDs6KXwNchXzDx64UybBtwlHyQo9zCiDhaHuATXocHrf52s
         9Mj7UdnF0lhcM2nJnvFj8PRF505zR6jB0sYfPuBCQ3Z29Rlnr6aNPgcmuA6Dk+hGFPkM
         2yfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=A8XdfEV2Z6/q2HJ6zuqB0UT9Fa/p99/ijROLiGfgd/g=;
        fh=TS14IMZmk/iDFr0RiK4zWfs4qrrBksoLPDEArjZNtic=;
        b=gndRmXn/JB2sczX/0GJN01tQcu0LNtaZEpQDzH2h3Zl+5JNDE7Jy0Yg+4A+K9ZtOyk
         6tVnD3ID4BUcgKWlkC31zQFfBWWm2kbMv6kSLpgiqNN1UphWiUwOMgzZ62Z7AD5YSIES
         AcobvLUNMUzgwKbCWL9zfqPrWbUsWaduScAjwbhWpAjJjFo+G/C05K1rLQ7ZO5y5h6/y
         RHPUWNynuik0DNJvuJHYBuEolIgpCEI+Qg3sroZr9YpeGGUnlk/P2AR935dK7MVkHPUA
         Nztw+agPXvfNzMenfgAV0BvcIWlOaf35XXFTqhToJIHBnFCeDI/6znKC5Av1jaJCIfZa
         M2tg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uF2z7xSs;
       spf=pass (google.com: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763603261; x=1764208061; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A8XdfEV2Z6/q2HJ6zuqB0UT9Fa/p99/ijROLiGfgd/g=;
        b=jxDYm7AGpccrVMICRMy2D9VnP2rAaTQYUvDTehT6NPmK9mUeT939sea3IcTVsW72RT
         Bff5Dc4l7KgAIC535sMX0hfltsX/MKbMVJyL4OLljralTtzi/cVnVAvrdrvVxDlMkNp+
         OQkyrhw9GW2uLAC8HUtKp13d+GzwGl6Fl21kU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763603261; x=1764208061;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A8XdfEV2Z6/q2HJ6zuqB0UT9Fa/p99/ijROLiGfgd/g=;
        b=LqpbbcA1GmnY7S8JvKqi0m0v1qPTCNIWC+6AV5H45cpdpj/gaWB4Ok/+xTA0VfxFbZ
         wq4MQkfhCgsM8mpSkbwtI+l/N7RH8WcgemTf2+O1Whss1MKi3u1LRE1rIyshf9hqndJP
         8b4i7U5bewwxW/V+0tRLwZZjhe0SIcoCGVXIOR21gFINbPyBVIQydriO5hmyFDqmrO/g
         x3EMaui9v8Iw97QEPfXs/9zGJpNS4RBn13ceGZQpmCn48TVYJp7jeHWaGZS2p0cYj1OI
         uEXq8lh9StwHqC3ieT/kqxUckL0lVwQ87DlLKc7lbVDXIvHAjVXOoBkRVNSuasqxLCXw
         J8mw==
X-Forwarded-Encrypted: i=2; AJvYcCUVPT/DP+SXUp/ESdsIJS41AhnNsqSjr5bnjrjL1W8h0aswgMK89bqL66j7tRWMHKE8pkbH2w==@lfdr.de
X-Gm-Message-State: AOJu0YyGMONZf6cOXxj29edPh1z262ULUJEIpoCop3kzfrRwl1yqv2mW
	7SLDTpPuuWcB0aMOABYYKwqpceLpEVDy/mBamjoeTxJXfh9WlHnP/dTMEBBYjidLssg=
X-Google-Smtp-Source: AGHT+IFFiHK5d8hAfn2Feaao8DwI7DzbRU4rpYBSsqfBnqyXhlNY1JZIt88i6lVgNejdOI0eUd/mxw==
X-Received: by 2002:a17:902:ef09:b0:297:c71d:851c with SMTP id d9443c01a7336-29b5cd7b83emr12861885ad.36.1763603261460;
        Wed, 19 Nov 2025 17:47:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+blZZoMcp7GL5mbvO53R61sPeUl4mKreawLCm5Lm8eK6g=="
Received: by 2002:a17:902:e28d:b0:297:d774:dcb8 with SMTP id
 d9443c01a7336-29b5b03dd94ls2953645ad.0.-pod-prod-02-us; Wed, 19 Nov 2025
 17:47:40 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWiKBTKVpXy3HtunQGNSjURCvAeuiWJ39qJiRRaYNqxEXGxkXrQgX/QCGqjCAdEFhSIkYnz6L2Psimacg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2342:b0:298:3aa6:c03d with SMTP id d9443c01a7336-29b5cdeb547mr11783335ad.57.1763603259778;
        Wed, 19 Nov 2025 17:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763603259; cv=none;
        d=google.com; s=arc-20240605;
        b=Y3GtuSiJUDTfPDTfwqT4A3sUcKYI8AzJY56tWsMufkevKI49505AoxTsQexhyP2ejx
         fKpFMOc2mPSNRpVrx072BhHg+yzvcCzDMHxhBMZRnrVV57B0eaGElUmA/RNSlKTCC9+b
         oiFOwEySgvO0lf85RZXwb919bE2bg3U01t6XICuvcSyiumGnj+D46Rs/GxGI67agN+3e
         QUHNFZQPt9mnmbZVufFz94U1wQFq4lx+kTdbo37uRoEKKfkgBqPaVCCg2ZpBckzZp4ti
         14Wdtcg3Nyzgy54Yqpor8hU2Qw7dDiFO3wB3lKD3JMkuqaxqnYLK34yQwM8t+mAdvSfb
         P5AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Qz0Kt9BVZotF+W8b8C03wV9uEpjzU2IZVkSaOcZVd50=;
        fh=cMnKcpgt0nB56RDA+Ux39db/IizuXZDt+AFuSBTviRQ=;
        b=ULfGyOOzle8UG2bp0wLjOE8QnmXFsk0Zt6f8+PRvR0eNRspQNlbP1Bg90/eUSTIMjw
         3DsjyNtmg6GXqKTyKSJ0opsYMELB+obCWOVu/F0P59imQBmasIIEUof1WTY7YNEoLnwj
         IqI2PtzdXYRgweASZj1rdPf0AjrGC+IVUeBw7H9cwOSKHVyQx+ZqVemQhz3e9CJ8g32z
         FZPRRV0Y/naf06kADebKIxC0+UhIcqUsp+r377IZMS8cwebMZrwijmQE/LqwNV1tYhBw
         QRHhiYmD1VkjXFCGZWluzU8QfUWHhvS48+e8Hx2C+6hQLw/WR1GjIpLwqF+MNbBamtx7
         EGQg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uF2z7xSs;
       spf=pass (google.com: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id d9443c01a7336-29b5b1e75c9si5726005ad.338.2025.11.19.17.47.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 17:47:39 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E650E43A3A;
	Thu, 20 Nov 2025 01:47:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFC38C113D0;
	Thu, 20 Nov 2025 01:47:34 +0000 (UTC)
Date: Wed, 19 Nov 2025 17:47:34 -0800
From: "'Jakub Kicinski' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: david.laight.linux@gmail.com
Cc: linux-kernel@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Alexei Starovoitov
 <ast@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Andreas Dilger
 <adilger.kernel@dilger.ca>, Andrew Lunn <andrew@lunn.ch>, Andrew Morton
 <akpm@linux-foundation.org>, Andrii Nakryiko <andrii@kernel.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Ard Biesheuvel
 <ardb@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, Bjorn
 Helgaas <bhelgaas@google.com>, Borislav Petkov <bp@alien8.de>, Christian
 Brauner <brauner@kernel.org>, Christian =?UTF-8?B?S8O2bmln?=
 <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, Daniel Borkmann
 <daniel@iogearbox.net>, Dan Williams <dan.j.williams@intel.com>, Dave
 Hansen <dave.hansen@linux.intel.com>, Dave Jiang <dave.jiang@intel.com>,
 David Ahern <dsahern@kernel.org>, David Hildenbrand <david@redhat.com>,
 Davidlohr Bueso <dave@stgolabs.net>, "David S. Miller"
 <davem@davemloft.net>, Dennis Zhou <dennis@kernel.org>, Eric Dumazet
 <edumazet@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Ingo Molnar <mingo@redhat.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Jarkko Sakkinen
 <jarkko@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>, Jens Axboe
 <axboe@kernel.dk>, Jiri Slaby <jirislaby@kernel.org>, Johannes Weiner
 <hannes@cmpxchg.org>, John Allen <john.allen@amd.com>, Jonathan Cameron
 <jonathan.cameron@huawei.com>, Juergen Gross <jgross@suse.com>, Kees Cook
 <kees@kernel.org>, KP Singh <kpsingh@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, "Matthew Wilcox (Oracle)"
 <willy@infradead.org>, Mika Westerberg <westeri@kernel.org>, Mike Rapoport
 <rppt@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, Namhyung Kim
 <namhyung@kernel.org>, Neal Cardwell <ncardwell@google.com>,
 nic_swsd@realtek.com, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Olivia
 Mackall <olivia@selenic.com>, Paolo Abeni <pabeni@redhat.com>, Paolo
 Bonzini <pbonzini@redhat.com>, Peter Huewe <peterhuewe@gmx.de>, Peter
 Zijlstra <peterz@infradead.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Sean Christopherson <seanjc@google.com>, Srinivas Kandagatla
 <srini@kernel.org>, Stefano Stabellini <sstabellini@kernel.org>, Steven
 Rostedt <rostedt@goodmis.org>, Tejun Heo <tj@kernel.org>, "Theodore Ts'o"
 <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>, Tom Lendacky
 <thomas.lendacky@amd.com>, Willem de Bruijn
 <willemdebruijn.kernel@gmail.com>, x86@kernel.org, Yury Norov
 <yury.norov@gmail.com>, amd-gfx@lists.freedesktop.org, bpf@vger.kernel.org,
 cgroups@vger.kernel.org, dri-devel@lists.freedesktop.org,
 io-uring@vger.kernel.org, kvm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-block@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-cxl@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-mm@kvack.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, mptcp@lists.linux.dev, netdev@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 00/44] Change a lot of min_t() that might
 mask high bits
Message-ID: <20251119174734.5cba3f95@kernel.org>
In-Reply-To: <20251119224140.8616-1-david.laight.linux@gmail.com>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uF2z7xSs;       spf=pass
 (google.com: domain of kuba@kernel.org designates 172.234.252.31 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Jakub Kicinski <kuba@kernel.org>
Reply-To: Jakub Kicinski <kuba@kernel.org>
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

On Wed, 19 Nov 2025 22:40:56 +0000 david.laight.linux@gmail.com wrote:
> I've had to trim the 124 maintainers/lists that get_maintainer.pl finds
> from 124 to under 100 to be able to send the cover letter.
> The individual patches only go to the addresses found for the associated files.
> That reduces the number of emails to a less unsane number.

Please split the networking (9?) patches out to a separate series.
It will help you with the CC list, and help us to get this applied..

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251119174734.5cba3f95%40kernel.org.
