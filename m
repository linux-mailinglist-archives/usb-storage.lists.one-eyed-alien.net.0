Return-Path: <usb-storage+bncBDUNBGN3R4KRBIXO525QMGQE3P272HI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x647.google.com (mail-ej1-x647.google.com [IPv6:2a00:1450:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC2DA0239E
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:57:59 +0100 (CET)
Received: by mail-ej1-x647.google.com with SMTP id a640c23a62f3a-aa6a831f93csf215746366b.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:57:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736161059; cv=pass;
        d=google.com; s=arc-20240605;
        b=F+xtHZaKI6A3qzoUODNUl3RcH3FhEzJBiyOEMF2V8a4ccK9qtZO7Q48jKNHztcVemV
         B+g6shAVtSf9lawihEgJqR7zq52vDS3QsGh8oaarj0QRp6I6Q01jiZrMUmHRqnZGI9Nu
         wCJEa6PSxcdi0lQS4Tt9DnpPyWQ5vWJkXmfHtuUKVXrxvsEhbJNjo+B0gvsVAiaM6hC1
         4GVqt6BrOcoMaJ6gDLSJslOglEus1tPSKPjZe85gqx80UhARMGHoZldJYovydaoJOU9x
         p77Ki9xrlrSwKTlloeiPldLLIJFcAnA8g9W92PvhQ4S2vpqv0D30hf4UBfPMl6dlrNLt
         NbGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QFXieMAOixNe8DUwaqwpDWKYbxLa7P5dAJCyM4CL2fE=;
        fh=jdep1yLuiPGV6wROft4Nd6hvBd0wJ9EHS4mLIdGVyyE=;
        b=Pxwjh1FdD40A5TxG9vPL9RZFfLJVTfj238XTyGvvlkLhKpWiGqglLy91jNyzI3GjIT
         kDJRG9+W9y7o99bANggjWLJKx2/6QiUdMiMsdSNhKAx53UrGgetRaaJmVrO+IX0XUU57
         cVLQaSlShEPdsropBGo12BLF7VCE5sIe2oBBBeCmfN5D9i70vt8f1ZeozvSv+O5t/Gmh
         ZMlfbT4V5zRTM7hy5FlSa7Kw7VExiSki/p1SMyhKoypdjs61Lve3F0imTRe3o4E3gquT
         ZRGQ1h9ubee12ifIVqa7sloB/cksL0KLwDtIejgofrIk9fquVuqjvjlKKPTsP1SSJDub
         7p4g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736161059; x=1736765859; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QFXieMAOixNe8DUwaqwpDWKYbxLa7P5dAJCyM4CL2fE=;
        b=goOgKUL95VIZY4k5o2bxq8G43AgEbRhxExmOe8LLwv3fDSjv8RPbz+A+Pr69bQ/Nuy
         JCJJ2xGdcKPoun2i+MwolQac2/d1oUMBamlpucClhk08dFD40/UwwiRdgtD6+3FqacrW
         fffpG2y1MfmJ8yNOMHn0i5IstXp5sq1YZ0cKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736161059; x=1736765859;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QFXieMAOixNe8DUwaqwpDWKYbxLa7P5dAJCyM4CL2fE=;
        b=tXogCufGfp53sUSaf4rCJYW8zeykdRMZnMy/m4GGGekpc/3qIfgF40X6b0vCoYDF7d
         Eq1I+pbtsw+HgVpM/bcM0txs8I2ibqTHeZ+lPxcc2k4BctUFK7FLEw4zGxdMyJ9VpWuu
         hZtYRlNnKxNC1u4wv3IJyIa19H/splrBABBBJLzgRkCHGfuN01QzfkMQYwNmX5shwk64
         aZKck5PbGw3/8BCJB/QyBbCK++sew4fb3IR9rdTjN1UENqaUKNSXgLp7yUX1Ca6vZsIv
         Crv/ewXuXJMH0qiLyxdeTNzO3O2336rtCp8zYa+ocgd2sjx4VZv6Q27dKqy32oZb+UFO
         0u5A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXo3/ek1vXOjN3WETsHCIVzPFlgQxCTeMTmQsqM1hssK/5V+zBeDwVOb5LjEop8TF+FHUsosw==@lfdr.de
X-Gm-Message-State: AOJu0YzMIVPGwtgJBVyWljeN/z1e59rS2z9vZ+CaTGAWbIRECTTgnGl0
	QIjXruCyanVCJWsbxdF6UqYWodhj/1PRlpXmwNSaI30Obh6GG5Lq5gW+Dog2uPQ=
X-Google-Smtp-Source: AGHT+IE8YlzDTfstDDSlvoM41tDS5pMmgBensl1H9auWXXy6VdALCDfnTlGWzAx9qyUYURZaIKeVzw==
X-Received: by 2002:a17:907:7f0b:b0:aab:dc3e:1c84 with SMTP id a640c23a62f3a-aac2b0a56b6mr5010739266b.17.1736161058516;
        Mon, 06 Jan 2025 02:57:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:d68b:0:b0:5d3:cfc7:9ef6 with SMTP id 4fb4d7f45d1cf-5d92608a8bfls231873a12.2.-pod-prod-01-eu;
 Mon, 06 Jan 2025 02:57:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVYRgigdkT4CuQh3+L5LzMIOW09MdOzoNYyqK9POjjhU42krEynoZtYjJxTRUuABX/EYewrGlSr2MglYg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:354b:b0:5d0:e2f0:d578 with SMTP id 4fb4d7f45d1cf-5d81ddbdfe3mr53549823a12.14.1736161056057;
        Mon, 06 Jan 2025 02:57:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736161056; cv=none;
        d=google.com; s=arc-20240605;
        b=IJR8cM2xbhngtRcXN20/sM2TwJEjSyTSgy7jk4OTVxdbUPadNWLxBb3SDrVp/hlU0c
         9cZYUyiAiC370vSVNDnH7o2v8nXlisZQlqUNhr914bT1ca9aW539n9CM2c7z4LCYN1FN
         BIS7vQfaaIvY4eRNamxFACDmBLUaypVvKGwiHN9j+4VvmhbijbelLHGDsg7r4puW6SRe
         Puz3A61jVuwj9LUA/9/NaegO83ckEUIOF20z91j2mwd0O8xgTriLyAnDE/InGiJEluxj
         K2bb46YLmvMuu0OwpUYbjuzle5HAy5OqVMjT5HVbVYM2Ik+2wZeSFURoOMI6lFZeIzki
         3PqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=hKV+7G2lsPSXWjYYeFvLeXfYpDcDcbPcSxXFXE7hzXI=;
        fh=0qHgCB7+SOrarOTC3pV+ALWol5rvcqRtlHP+Nymp0i4=;
        b=R5UCiNbvOm2BPu05ROzaYqmgL/OMUYOvRT2QccgFlYR6XaM3nttBf5NiU/KIoYZpX4
         QOEVLd61Uv52S0xwL3jRPVdr9L4SPozRhDkqpRMjW+CYwZUCSs9KUkrt8MK/ojLh6bLt
         FWtm33L/sDIwGUv3ilyYdbd8KkBXsvmjQpOLrVRzAWqozVxuTKfIG8/nMrWQ7n9TM7q/
         5ItRDbC8xDaETEdVv4eUIMifTQehM7+6xNT7m0qds/VnGBXs4vg/2rsb9eZt1dXXwvoI
         Gp1qKu9+xD+zuxjQSc4z7S/fJ0QX9k1V+/LYWz20+pgtBQCkPNQOGnxEihpYvpz9i3dJ
         0tTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806fc7977si21495004a12.299.2025.01.06.02.57.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 02:57:36 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 7D08D68C7B; Mon,  6 Jan 2025 11:57:32 +0100 (CET)
Date: Mon, 6 Jan 2025 11:57:32 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 03/10] block: add a store_limit operations
 for sysfs entries
Message-ID: <20250106105732.GA21833@lst.de>
References: <20250106100645.850445-1-hch@lst.de> <20250106100645.850445-4-hch@lst.de> <a461bbbc-f251-4f44-89c7-f80f72e6e96d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a461bbbc-f251-4f44-89c7-f80f72e6e96d@kernel.org>
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

On Mon, Jan 06, 2025 at 07:46:19PM +0900, Damien Le Moal wrote:
> The freeze must NOT be done for the "if (entry->store_limit)" case. So this
> needs to go int the "else". Otherwise, you still have freeze the take limit
> lock order which can cause the ABBA deadlocks in SCSI sd.

That is fixed in the next patch.  This one is pure refactoring without
behavior change.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106105732.GA21833%40lst.de.
