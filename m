Return-Path: <usb-storage+bncBDUNBGN3R4KRBYHB6S5QMGQEQ2K6CEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D43A0412C
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 14:49:22 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5d3eae7a9b8sf8495860a12.1
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 05:49:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736257762; cv=pass;
        d=google.com; s=arc-20240605;
        b=gEtg+da9CKMyABcfE+q3B8bkSXsPcYbjv/go9cvBIzcKIj3XExNRNPVmm7EIel1Klf
         Uo9B62RRcUhLb25C0/rBs9+AGkZ1PiT5O0gc7uAPxw89iO7GyDYvfNyduZM58/HFepTp
         chReUJZWAXDNXmJAtPQnk3cH1KfxlQBZV1fEOYe1BbcbMTagKGcYkkL+hK4XJqWfmDKx
         C0uxH1WrEciuUfbbtP1C09KGLtilfKTgoLh0i4Foy4bPPPWOFzLQmtR+LUAvvXy63Mqo
         TmqeynONq/lR50nP4LQy+ZbSiSm3Gn/XDmEpGvquPfUO0G/OSPYvxVhKCxncyvpYMozM
         za3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=k1sjhoe0GNDqx+iPikvkTpArw0VpBVdKKgEfuKS9TnQ=;
        fh=7TzHO8fPi1jzBpvud8lK+YHFnjaz/pvBL7GRSmo6tS4=;
        b=OeG/GvWwlCJAPxQwyUp9rwmuQB9zb4GIXKFXNWga4OdbDjCUzTnT2x1+oG93Tkvk5i
         eMBFnhkhlyihAyTUmKhifJIi4XKZkfszbeJ+a6kL8EgN1njmojyFZDgkH8BykMuN5xnS
         /ge6pI43lskCA719nN1NuRC/P5Qd0aiNjTnYPqQ//zZf+ANs5FPGBQY4pTOXsMOOBwgE
         kryWlh7oO2Enr0WDBXTDrjcMgkcSpjB6UKZWnOx6Q5rOkhBJye7eiHRAi/2BTmaDg2HS
         Q8u81JlZY6YHRceHxVMYjCqmFeOreT6WOTP5GL+dWcyCbvjvooGv+RhHxWp68aet3mTb
         I7Hg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736257762; x=1736862562; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k1sjhoe0GNDqx+iPikvkTpArw0VpBVdKKgEfuKS9TnQ=;
        b=fbse9kJko8Vs7AFthZtzeMMS6z+DWoHxkjAIW4HV40UKq+a7lS2eZ+1HNES6UFWNpc
         mFMhpCu1IM/AHhSiTH1D9nvjYSUWw+k891/eHi3wjVwM4ZvTcVtMOIVIN365lW5uMqb9
         2l3DjiWOvl/VPAcWmsbxKicDEVoE+OyaHJ0vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736257762; x=1736862562;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k1sjhoe0GNDqx+iPikvkTpArw0VpBVdKKgEfuKS9TnQ=;
        b=ugK1SQUZwzoarJEuSIFtfnrqUlbxlATBeFjwaxwSD5Yn+tWxzv5P9iolVLi4IsZLWB
         DDThDPHD3eR66VInBMAJHK6fB1MNA05TQFRjKqNQJhH4JP2ooX3FHP+AC1eQ6BQu3tyF
         h/L+cKfvFbTvOGJN3+D47PpAMt7q4qmCPw8hjtSAFfJU3hZ65yTiKB7aAoXzCJmIWmDH
         bv1jAzgAU0b7v1QI+zeSes8vYX46nh1kq/Ab4OjmfAIf3nO3Pcg2XrJQtDkbEnzSd8YQ
         2p9ZStDXh7c8czF+YyocyAzbFuJO/ULL4/5ssNjavAAUEKU6IOckXHMyYi+LNlO/cCwu
         mfjg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWsgrZLLD/4Sska8T5Fp9nRbVS/l7weyIF20ovmvwuIQIhYPjnidFXC9ACmmPrT2XjBOso/uA==@lfdr.de
X-Gm-Message-State: AOJu0YywRBH4P5XGdmbVspceeAmkauUnA1Do0S0ccGvoGIncZxuh7xAr
	zyn8+i2yoW6hchHs9N4TPJBkqU4sAEGU/QN5AoDpo1nBcdIZsm9XL0eHpn8foeY=
X-Google-Smtp-Source: AGHT+IG6nmwx+N559Mfku2Win6lAUss/54dPLuPq9jS60vE4a9zMAnYw4oizdxReQIn3z70GVJasVA==
X-Received: by 2002:a05:6402:354b:b0:5d3:cfd0:8d3f with SMTP id 4fb4d7f45d1cf-5d81ddfd82bmr55990299a12.24.1736257761470;
        Tue, 07 Jan 2025 05:49:21 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:bb06:0:b0:5cf:e3e9:1723 with SMTP id 4fb4d7f45d1cf-5d93bd5913cls62288a12.2.-pod-prod-04-eu;
 Tue, 07 Jan 2025 05:49:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXXz+O9/13ge15+/Dtp6bYfoSb3/gp6fVqW33qFRPu4SgxUBchdXwODYNKPUhmilQZel0ePJSJBEP1fjQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:971f:b0:aa6:894c:84b9 with SMTP id a640c23a62f3a-aac2ad87f3cmr5188707166b.23.1736257758082;
        Tue, 07 Jan 2025 05:49:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736257758; cv=none;
        d=google.com; s=arc-20240605;
        b=cSSwBj8a3o/D9lK0UV2iXngQUq5MaD5bCAlAMqnyBBOuOPBiW/ElZeDhwH0jGH16WV
         5ztR6/9uuxnmE8r8TH/MlRrcToEl+FYuKHCrbwy2lTN8gT9EnyE4Tqwhsr8l2YPBHLyx
         RbXLrJ6p3CPQSAy4UFqatJKAK2ID4+viAwY9FesO3T5nDeLyK+EIDxHdPUO7/B2teF8E
         Yle0mjcyafJB7/L9F7TEIhgjzltD5+edUSNFlTGXqGP6UjoJu0sRGVmTwvCBlKQhDYhy
         FonWkTWq7/7J8e3HIcrR8jM2YlMqDXGPYizqD53yAbZduHlLzT50MedcYnUOwW8f9e92
         HpRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=kYNpoilx7wSK1OmAquEjOwqVDywqYi5WQfbhG3p32fg=;
        fh=wrZ6guRwWChhrxl9svvYT1a5hjs2X1lk6P2Up0aoAa8=;
        b=KE0Vfqhn3R3C2YfNxro4JHUSNYVL/Thfsn++tyFg3TyzLCLZYdC+Q02GKvjFXd3XSG
         UWHw5hCLRcKawPhbUkZUFvIRJpLrC1IynBRb0GpJkF4r1lh0s01fxqQRmjvsoU02Nu1B
         IlAzx21V8FB8f4MWBAqhpP4psdnxrTpXg1qTSxpwRZp1h9N/l4JtW3AwLzciJggW6a7V
         PTjE8CduTG+HmVmHbOs3Uj6rzSss2Af4s/OdK2nuR5ZSmI/Ocu5ZW6x6lJaYfLtE6Hh7
         jBjMXrYRi6fYJIiwbguNNTFY+SWKV1RMK2NidHgrNODaAPKrpRk/uljoWCkKCkaFcgNy
         MIPg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-aac0e7f5608si2252099566b.35.2025.01.07.05.49.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 05:49:18 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 92DC968D05; Tue,  7 Jan 2025 14:49:14 +0100 (CET)
Date: Tue, 7 Jan 2025 14:49:13 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Cc: Nilay Shroff <nilay@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 4/8] block: add a store_limit operations for
 sysfs entries
Message-ID: <20250107134913.GA22046@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-5-hch@lst.de> <Z3zXANbFk6GBZg_z@fedora> <ae6b7727-64d6-4d9e-9bf5-951e38d8a768@linux.ibm.com> <Z30AsQq89_lcstNl@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Z30AsQq89_lcstNl@fedora>
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

On Tue, Jan 07, 2025 at 06:25:20PM +0800, Ming Lei wrote:
> __blk_mq_update_nr_hw_queues() freezes queue before acquiring ->syfs_lock too.
> 
> So yes, it is a mess wrt. order between ->sysfs_lock and freezing queue.

Let's sort out the current freeze vs limits lock issue first.  Next step
is to kill sysfs_lock in it's current form.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107134913.GA22046%40lst.de.
