Return-Path: <usb-storage+bncBDUNBGN3R4KRBSVT7K5QMGQE2N4K3LY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA36A0601D
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 16:29:15 +0100 (CET)
Received: by mail-ej1-x645.google.com with SMTP id a640c23a62f3a-aa6869e15ebsf99322766b.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 07:29:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736350155; cv=pass;
        d=google.com; s=arc-20240605;
        b=CdIjA1Cl+bTaIpMrMENTPziLf0tT34zRkZRWmsublbZfWAtvvHPtYh8E1CWMq7nGbB
         WdnJ5a7/aMVgWMtfv3FiSnxpykKv+DQI6LdvrfYgmHqCdLS98CDceygGIw+/Wkvv+hBD
         tlBpQbnpocuwf9n1DEA/hgvaiD0/ZQ61+HVZLFOjtK1JIZWv9A8/HH2hqTSg+O0PGc8k
         MjY/imihTbNXvNcFRy7+My1IxtuSw1EPIiE3ZJh8sXf5NDzjha4l3uvqx38xN9rY2no6
         T4QTXbftKnkmaNEmg3bNx4KXWVROBUhapz1WVYjsMGkBUIz3qrD1ClowXkoLrxPV2nBJ
         LXDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tpnDtsDNwFmMZu1SBxRVpBlxneGd6jjTTRYvf1ZK+Wo=;
        fh=OguYpsgUhILiTvY4kSG1UKzMk9VvBpSE6zmw7tXaPmM=;
        b=GGXhnW32puJ/4N0BjwgaXwv6Pw2/VRPFEgL/Rvr0vhobmpLdWlgrxyr4XBuizF9iHf
         STXZ0k8i5AZPKKut1OjlOdsNT5QzrtFX0K9w61XETw9IKh/u5/In0F9ViahQ1z9TQMv0
         2n7HLk0e5y+47tZJCOfVVQ6YwcrysUJLV5Eqwxu6KQL6kB3twqngeTIU19oE1uJgrAfq
         VQBGFGtvit/zB9l5crK80hUNfC1oZ4fwYHc7oogYJUWcG1jpW1pF7+6YE7IpdMgJUVlf
         32ThsRxGsPnZC2Gts99aNITpN9qqKWW2tygmI0n8X0q/yysgoqvV6HgG2kaxOzbv2NsN
         ldtw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736350155; x=1736954955; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tpnDtsDNwFmMZu1SBxRVpBlxneGd6jjTTRYvf1ZK+Wo=;
        b=e4+jfEpDnFZGrKVNkGXmkkhA5o+PRVubhGd4yaylNOiqkPcrnhFMAhUOP8jPvUHDR8
         490pq6uy0RxpxMduV6CTjiZKHe6MpTEwxfz2CaESCka300ZSwtoBHbMB2fbYRdBEVjk/
         5zkBg9K2lkfwuDOEttSuunui3br/bQ7QuVcBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736350155; x=1736954955;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tpnDtsDNwFmMZu1SBxRVpBlxneGd6jjTTRYvf1ZK+Wo=;
        b=cIrhWcsnqmkTvRyc4fQLNYjOe/soT42yyOvvxqYtqH3XXdbHdlhgNjIdhEEQInfv3V
         vwAxeuJrUuN+fqXHonbRX2UF6Wo6CwSbzkx7rzUqXGVUiy4pPvmtghHFR1ZaBatP9mhM
         pM8JrdDZaCdJKEgK9EMEkNH15kfxZ99Mgy1C47iDOR2//07aGeEeI2EjNK9TNRPLxv/L
         YzmxZHnMOTEzOM12vpPYfDAA8lXXlONOhrQPrCivDtUl6Gv+1+4cfMn6k+HmJgAtfYO2
         jmqb4Q96vlUZzLMZDh49S46eg0YvRm8s0s0lzTodCR45XWHaBTl4LNYaLzJPaf5T/CBC
         HR4Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXj9UDaxc5i0lbw7f4wPTjdkg5vPobdtGfnTBbJJqV0r4eog+XkmpdA8MSrHFVSsW1gSHkKDQ==@lfdr.de
X-Gm-Message-State: AOJu0Yyu5wNpZE93d5CIHLIzw4vkMdQ7EvvfmYJ3yY/MeDz2APxsGG47
	BQ4S0VNGlvIuFy6iUKYx0Lz4dO13XWFZwHFvDlfDMNX3MXj+jGLyHCpsE+32Axk=
X-Google-Smtp-Source: AGHT+IGvE2RkWw4T4V+1FGMR83YC1lNB0rmaNyaU4a2dYAj7YLYkp727LJkurbp0PdgRVPmE8+h5Eg==
X-Received: by 2002:a05:6402:42c3:b0:5d4:c0c:70f9 with SMTP id 4fb4d7f45d1cf-5d95e8cf064mr5714723a12.6.1736350154684;
        Wed, 08 Jan 2025 07:29:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:8d48:0:b0:5d0:acf2:b111 with SMTP id 4fb4d7f45d1cf-5d95debca0als327808a12.1.-pod-prod-00-eu;
 Wed, 08 Jan 2025 07:29:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXeU3v+UDaaa0OAcG4FV71hlHq6ned0uil+Yv/4o1eTm2RphvwZuodSlx6ujDQM+J5/5Vcyhiy1uB9V6g==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:7b96:b0:aab:9341:e1bd with SMTP id a640c23a62f3a-ab2905018b3mr586814766b.11.1736350152165;
        Wed, 08 Jan 2025 07:29:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736350152; cv=none;
        d=google.com; s=arc-20240605;
        b=dJrf2pGV7XvNR2aw8AJuKmfTH2TPeCky6jfvACSn6dvAE0qLfWxUMRtHTD2Sy8yzqz
         mfVMsK62cleFr5xWUSABa5DI8tF7kknupxMj3kmcHp4wDMK6OZSUjnZ2vgLFpZv8eUWb
         nyqeflGddTV/f+fZQRVLerKAp0uQR2sUtZWeOFr4khhAd6qW8aBxnzg6ZF4rHXPqjmQf
         +8aHZZ/EyGug78gaPjZ3oCxF644u8BZAAqtNXYzx9pwRqHUhCdSzx520QgFEWzhA8V6Q
         NrSzXOw5e2w7o2o48BBY6YYJa5c9bk5J2l0Ex5U3RgOMelgSfe0ssHxSYUi0t62o1yg2
         Rgng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PxDXBix9Vkf9rlHacss1vKZYtKq6qzLG9Usz7Z81wHQ=;
        fh=ASjV2SCNhw3+0CjjC3hMIlcKstd2UC2VvTKUuWyRC/Y=;
        b=jiwQQgbGdvtLRoF/QMaupOawbiewR38VKARA4hn7MhpFyTNvGSou5Aluu1AC/OO4RZ
         S5Miw7NgDuTVYrKyEvqkgkse+nIGDJguXM9l4s78QIwqvJu35fLWsLc58SFw/EIBzb53
         UuzMb0HoX9YJmwA4hCIi2lp7Yvx9Bn9QMvBN04Bf3YsSnYXlZEu6lWrEHA3SUN3twpxn
         ps5g+WNt9Z94srbCy3LRkwhARoVSRhsrAVjtdV3cdNHDAl6WLqQntf0MbJjD/HjY8H1w
         S3c1CXr6URbKhGkTGQ6GxiI6ZHvOAEFsEbWlwAXSpgtO23D8nEx3Nz6xaWwLWbUhgnU1
         aMIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-ab2bd0fca61si36661166b.351.2025.01.08.07.29.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2025 07:29:12 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id F1EFA68BFE; Wed,  8 Jan 2025 16:29:08 +0100 (CET)
Date: Wed, 8 Jan 2025 16:29:08 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 05/10] block: fix queue freeze vs limits
 lock order in sysfs store methods
Message-ID: <20250108152908.GB24792@lst.de>
References: <20250108092520.1325324-1-hch@lst.de> <20250108092520.1325324-6-hch@lst.de> <Z35Vl6ob0zLH_Kh-@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Z35Vl6ob0zLH_Kh-@fedora>
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

On Wed, Jan 08, 2025 at 06:38:15PM +0800, Ming Lei wrote:
> Looks fine, but now ->store_limit() is called without holding
> ->sysfs_lock, maybe it should be documented.

Ok, I had this in my own commit log, but it got lost when I stole
Damien's much better one instead :)

I assume you're fine with just documenting it in the commit log?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108152908.GB24792%40lst.de.
