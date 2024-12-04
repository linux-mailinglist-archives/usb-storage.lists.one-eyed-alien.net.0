Return-Path: <usb-storage+bncBDG6BBUEQIJBBAXZYC5AMGQE5MUKCGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3179E38BF
	for <lists+usb-storage@lfdr.de>; Wed,  4 Dec 2024 12:26:59 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5f1e2358e96sf3732770eaf.0
        for <lists+usb-storage@lfdr.de>; Wed, 04 Dec 2024 03:26:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733311618; cv=pass;
        d=google.com; s=arc-20240605;
        b=EkrDmO1dCuE5RUSO3iIwDWR6A8IVxo02170hZVL5s8JzwKoQikGnBzjHrPxYE1sIT9
         zrgn39Z6S8pti5lQ17zq3tpmJQJOUc7yJXKAI6N89aNyX7SyEs5D9bMur+hZU+CGJIou
         RoqBTDpkpZxveCrtWNvMOhK6DpTHdXbDp+XJg+sp+2wQEEZgbVD7y9UFWuIAJiO+Gas2
         R7paqbtjwFvUKaDt4SP1NFaSnPgGKwHK99GQDlROiOXJGQ92DO2FSSJQHkMrwM1U4neJ
         0nw4E2v/qq5IkOeTXBiWyjQRGHFGbQqudNt1Bmj38olgdKXUFENbSKPNLo7kdx4TPh2i
         2gkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yXGVwL/KoNnS+GBKZGT83r/WbwFsjOm4otPjax2Umko=;
        fh=7zlbO1VKzmCd7KhUM2+4wRc0piTTGQCojFedhl1ntQM=;
        b=T1XjKgOd9zp7RVxiLD8WoTaX+IHI2yngXET6kMUg6pH/5wkCLlXDaBiIdAMDBukAsG
         ZZEOWQIaDkaZgO92bvkaXzG9CKmuDxlJL7+NNO7DOnbRYeC4BCF6rBke09owv6ZudTmJ
         eoSb0UpVDbXyW4IyXNBNz3M+CqmAVORcWLd5HGof0dWlLIeLtIjP0gI7Zquca2j2oY6k
         uC4kTV0kkrJU0XhLSHM1nsDe7h/EljfFLyJBPS6wTelR6Y90jECeJZsgXHPoxzOPgj6u
         Ao7A84IOx1YXnJyfihlu0mR0rtWWexpOWyw+aZGiFZN6cnzQB8+qebxyLQw3k35b6sgZ
         WJcw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XM9jBZ1P;
       spf=pass (google.com: domain of johan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1733311618; x=1733916418; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yXGVwL/KoNnS+GBKZGT83r/WbwFsjOm4otPjax2Umko=;
        b=Je+N2tUrkGy+ogzAVGSV7PcOctS3B5P64PafBYRFR0LKoQfYSLqwVgx+2WRV3hnw13
         upgYdUjpwMp3pSGh9HOcy6XIFhaAgx1H5hDgULoI9NpNr2HnXCt06mgKqShi++oRGv+z
         dlbwES4IraiNWro2hpfRbNFt8jpQBiTU5hb70=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733311618; x=1733916418;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yXGVwL/KoNnS+GBKZGT83r/WbwFsjOm4otPjax2Umko=;
        b=g6I/TQE1c4+B8TxB39+zaDJpjuVadPXvxq4jQcPO33JCChvLhk+0rrcL7v3hG9H4aS
         4cYqhEmV4Fbg/O2789QX0awrv2umDu6PQcRCknPNYbU1FqbDU/mtVfJm5+bkJ8EhDuSR
         ICZUl3UHu2UtdgHfuJdqzaXl0Nmk8vtDPcdH/yONX9R4yJBexykxiKD2/25U3yhNr/dy
         BFTlIiYx14Q8b2CdroojtBgLI6ulsxmDzmZ0aziyQKMEiVHDBuRT1BsIx+hWoCaXlTFo
         9JBj/pFS3ZTQWOOCFFT9MBWjoB04g36601cbXcToCpljqNZ4H05B0CESoGGvi79QAap5
         Hh0Q==
X-Forwarded-Encrypted: i=2; AJvYcCXOSg5Dt6h+TNd0494y8T2yWWNeY9miyHhZ2Cj6vpJdky0J+yWh3fzUVSdbft8ygU5r5v5dzA==@lfdr.de
X-Gm-Message-State: AOJu0YxUdpnZVd8tAtyY8jRNxbN9wWKI1MMGp4SbVZEILO7K0TVyxhOs
	fbznQ5BJgoHs1I0eECqpeUM9dRY6hyLbqO22hdveEj5Y2bFEYHqERFCRUDNYr8o=
X-Google-Smtp-Source: AGHT+IH/w02QMo8Pe+HF6ft0wks1qiE5LYXc1Pou6t1hC1WKvSAIN3w2je2GaFlpu8KHYubuY8BIKw==
X-Received: by 2002:a05:6820:208:b0:5ee:dc92:ffb9 with SMTP id 006d021491bc7-5f25adf28fcmr5825303eaf.4.1733311618449;
        Wed, 04 Dec 2024 03:26:58 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:b483:0:b0:5f2:32b1:a144 with SMTP id 006d021491bc7-5f232b1a29fls2523709eaf.2.-pod-prod-09-us;
 Wed, 04 Dec 2024 03:26:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV8vvFnQyzOM17EPC5NBSAquG5dhzlG4sGsMw2nAaoGXBVrtPe5hCOqyMPR03d1Lrcu61uyCXzmFuDp1g==@lists.one-eyed-alien.net
X-Received: by 2002:a4a:e918:0:b0:5f1:e905:bc93 with SMTP id 006d021491bc7-5f25ae0e5c4mr5003912eaf.5.1733311617284;
        Wed, 04 Dec 2024 03:26:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733311617; cv=none;
        d=google.com; s=arc-20240605;
        b=RpGPbwuh/mMFAAFOEpJP4FQquTFotRN8/VEgLgTeGXwwRN37NSLjUb3/CN/1ksC2dQ
         IlYueDx8/6Pe0NT5LCYykOEkRWNpuZiEcYxHxtGFSehdWBczCK9eSROxaNvDls/pMu9n
         ZG+vR+Veoh94aLA5uYMV3FuxCDbC+jkRpBqxZddmyeEpz6rjwOwe1JXhvkjO5RyVIVO1
         MHVzWS8tO6RM/UuM1V0uZOMj9cnLY7sTLGiUMWK9pFLXGCaslGA9kkDeKo1Cr30FrF/6
         NtttGC+Uhh1wUOZIxCTRZ39KvkQW/r1Z016vQo9gNvOYO3zRmNFgFuItZzM81lwHoceF
         Kf0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=1ctLiJWbESKCH0WrRkUdh7eZNcYhnQ4WD7fpwmODNsY=;
        fh=9JNLguUlA5HhIyfxybh4ACswYUGOSJLur0f+dESUM7Y=;
        b=fECokoUkaxUaY+A8Ccy5Wl3RWIWLzZYzplXjlU5olzCCW0CdPU2G0Wb/l0WdCLAeC0
         kSaCJ2WuB+f8MI6JfWnCGAdVJ5qpoPDZ8Dq6g0C5+q3/9208bSY/Z+ENLQEXjcnm3O0R
         DVXPwMFu+7vRps/exis9ZK2DNoGnOrbbtv/LD6Tdg2t2ifCKByu4n/0wH5groPUjxrck
         NEi1o2/NcTaDrFRP7zF8hIUGq0BK0G67ep37F3cYMw5EVk9GNZEZtdgq8d59J/H6qulg
         3rRmvx82x9hVY3DC0bHjGCABRwIA2IsPhIjzC6XvRzmYxnKN7klVGc5/mVHI2MfH2Mm5
         i42Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XM9jBZ1P;
       spf=pass (google.com: domain of johan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 006d021491bc7-5f21a4dbc4esi6757607eaf.59.2024.12.04.03.26.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 03:26:57 -0800 (PST)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1AEB25C6CFA;
	Wed,  4 Dec 2024 11:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89EEAC4CED1;
	Wed,  4 Dec 2024 11:26:56 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1tInWv-000000002Gw-0Mne;
	Wed, 04 Dec 2024 12:26:53 +0100
Date: Wed, 4 Dec 2024 12:26:53 +0100
From: "'Johan Hovold' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Jens Axboe <axboe@kernel.dk>, Ming Lei <ming.lei@redhat.com>,
	Christoph Hellwig <hch@lst.de>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org, regressions@lists.linux.dev
Subject: [usb-storage] Lockdep splat on UMS disconnect (6.13-rc1)
Message-ID: <Z1A8fai9_fQFhs1s@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XM9jBZ1P;       spf=pass
 (google.com: domain of johan@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Johan Hovold <johan@kernel.org>
Reply-To: Johan Hovold <johan@kernel.org>
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

Hi,

I'm seeing a new lockdep splat with 6.13-rc1 on resume after having
disconnected a USB mass storage device while suspended. This does not
seem to show up with 6.12.

On one attempt to reproduce this with a ThinkPad T14s, the NVMe was
hosed after resume as well so I fear that this is not just about missing
annotation.

I don't have time to look into this myself right now so I'm reporting in
the hope that someone familiar with these paths would be able to
pinpoint any potential regression without too much effort.

Johan


#regzbot introduced: v6.12..v6.13-rc1


[   59.529878] Restarting tasks ... done.
[   59.534619] usb 5-1: USB disconnect, device number 2
[   59.536537] random: crng reseeded on system resumption
[   59.541059] xhci-hcd xhci-hcd.7.auto: remove, state 1
[   59.547012] PM: suspend exit
[   59.584871] ======================================================
[   59.584873] WARNING: possible circular locking dependency detected
[   59.584875] 6.13.0-rc1 #11 Tainted: G        W         
[   59.584877] ------------------------------------------------------
[   59.584878] kworker/0:2/126 is trying to acquire lock:
[   59.584880] ffff1a9a948b83e0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: __flush_work+0x1c0/0x504
[   59.584894] 
               but task is already holding lock:
[   59.584895] ffff1a9a948b00e0 (&q->q_usage_counter(queue)#3){++++}-{0:0}, at: sd_remove+0x38/0x88
[   59.584905] 
               which lock already depends on the new lock.

[   59.584906] 
               the existing dependency chain (in reverse order) is:
[   59.584907] 
               -> #3 (&q->q_usage_counter(queue)#3){++++}-{0:0}:
[   59.584912]        blk_queue_enter+0x174/0x1c4
[   59.584917]        blk_mq_alloc_request+0xa0/0xcc
[   59.584921]        scsi_execute_cmd+0xbc/0x3c8
[   59.584924]        read_capacity_10+0xcc/0x1e0
[   59.584927]        sd_revalidate_disk.isra.0+0xad4/0x26fc
[   59.584930]        sd_probe+0x2a0/0x42c
[   59.584933]        really_probe+0xc0/0x388
[   59.584938]        __driver_probe_device+0x7c/0x160
[   59.584941]        driver_probe_device+0x40/0x110
[   59.584944]        __device_attach_driver+0xbc/0x158
[   59.584948]        bus_for_each_drv+0x84/0xe0
[   59.584950]        __device_attach_async_helper+0xb0/0x10c
[   59.584954]        async_run_entry_fn+0x34/0x14c
[   59.584956]        process_one_work+0x20c/0x610
[   59.584960]        worker_thread+0x23c/0x378
[   59.584963]        kthread+0x124/0x128
[   59.584965]        ret_from_fork+0x10/0x20
[   59.584968] 
               -> #2 (&q->limits_lock){+.+.}-{4:4}:
[   59.584972]        __mutex_lock+0xa8/0x468
[   59.584976]        mutex_lock_nested+0x24/0x30
[   59.584978]        nvme_update_ns_info_block+0x1a4/0x6c4 [nvme_core]
[   59.584990]        nvme_update_ns_info+0x9c/0xf0 [nvme_core]
[   59.584995]        nvme_alloc_ns+0x2f0/0x9f0 [nvme_core]
[   59.584999]        nvme_scan_ns+0x278/0x378 [nvme_core]
[   59.585004]        nvme_scan_ns_async+0x2c/0x70 [nvme_core]
[   59.585008]        async_run_entry_fn+0x34/0x14c
[   59.585010]        process_one_work+0x20c/0x610
[   59.585014]        worker_thread+0x23c/0x378
[   59.585017]        kthread+0x124/0x128
[   59.585019]        ret_from_fork+0x10/0x20
[   59.585021] 
               -> #1 (&q->q_usage_counter(io)){++++}-{0:0}:
[   59.585025]        blk_mq_submit_bio+0x82c/0x9ac
[   59.585028]        __submit_bio+0x78/0x168
[   59.585030]        submit_bio_noacct_nocheck+0x2d4/0x3b8
[   59.585033]        submit_bio_noacct+0x148/0x3f8
[   59.585035]        submit_bio+0x12c/0x200
[   59.585037]        submit_bh_wbc+0x144/0x1c0
[   59.585042]        __block_write_full_folio+0x210/0x4cc
[   59.585045]        block_write_full_folio+0xc8/0x14c
[   59.585048]        write_cache_pages+0x64/0xd4
[   59.585054]        blkdev_writepages+0x4c/0x88
[   59.585057]        do_writepages+0x84/0x2b8
[   59.585059]        __writeback_single_inode+0x64/0x5d8
[   59.585062]        writeback_sb_inodes+0x244/0x500
[   59.585065]        __writeback_inodes_wb+0x50/0x108
[   59.585068]        wb_writeback+0x3a8/0x4a0
[   59.585070]        wb_workfn+0x2e4/0x5fc
[   59.585073]        process_one_work+0x20c/0x610
[   59.585076]        worker_thread+0x23c/0x378
[   59.585079]        kthread+0x124/0x128
[   59.585082]        ret_from_fork+0x10/0x20
[   59.585085] 
               -> #0 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}:
[   60.565855]        __lock_acquire+0x1344/0x20e8
[   60.565860]        lock_acquire+0x1c8/0x354
[   60.565863]        __flush_work+0x1e8/0x504
[   60.565868]        flush_delayed_work+0x50/0x84
[   60.565874]        wb_shutdown+0x9c/0x10c
[   60.565881]        bdi_unregister+0x88/0x1e8
[   60.565887]        del_gendisk+0x330/0x370
[   60.565892]        sd_remove+0x38/0x88
[   60.565897]        device_remove+0x70/0x80
[   60.565902]        device_release_driver_internal+0x1e4/0x240
[   60.565908]        device_release_driver+0x18/0x24
[   60.565913]        bus_remove_device+0xd0/0x148
[   60.565918]        device_del+0x148/0x374
[   60.565921]        __scsi_remove_device+0x124/0x18c
[   60.565925]        scsi_forget_host+0x78/0x80
[   60.565930]        scsi_remove_host+0x74/0x194
[   60.565934]        usb_stor_disconnect+0x74/0xfc [usb_storage]
[   60.565942]        usb_unbind_interface+0x80/0x2bc
[   60.565946]        device_remove+0x70/0x80
[   60.565951]        device_release_driver_internal+0x1e4/0x240
[   60.565957]        device_release_driver+0x18/0x24
[   60.565962]        bus_remove_device+0xd0/0x148
[   60.565967]        device_del+0x148/0x374
[   60.565970]        usb_disable_device+0xf8/0x244
[   60.565976]        usb_disconnect+0xe4/0x314
[   60.565980]        hub_event+0xbe8/0x1950
[   60.565985]        process_one_work+0x20c/0x610
[   60.565990]        worker_thread+0x23c/0x378
[   60.565995]        kthread+0x124/0x128
[   60.565998]        ret_from_fork+0x10/0x20
[   60.566003] 
               other info that might help us debug this:

[   60.566004] Chain exists of:
                 (work_completion)(&(&wb->dwork)->work) --> &q->limits_lock --> &q->q_usage_counter(queue)#3

[   60.566014]  Possible unsafe locking scenario:

[   60.566015]        CPU0                    CPU1
[   60.566016]        ----                    ----
[   60.566018]   lock(&q->q_usage_counter(queue)#3);
[   60.566022]                                lock(&q->limits_lock);
[   60.566026]                                lock(&q->q_usage_counter(queue)#3);
[   60.566030]   lock((work_completion)(&(&wb->dwork)->work));
[   60.566033] 
                *** DEADLOCK ***

[   60.566035] 9 locks held by kworker/0:2/126:
[   60.566038]  #0: ffff1a9a81cb8148 ((wq_completion)usb_hub_wq){+.+.}-{0:0}, at: process_one_work+0x190/0x610
[   60.566049]  #1: ffff800081c63de0 ((work_completion)(&hub->events)){+.+.}-{0:0}, at: process_one_work+0x1b8/0x610
[   60.566060]  #2: ffff1a9a9960f990 (&dev->mutex){....}-{4:4}, at: hub_event+0x5c/0x1950
[   60.566070]  #3: ffff1a9a94f8a990 (&dev->mutex){....}-{4:4}, at: usb_disconnect+0x84/0x314
[   60.566080]  #4: ffff1a9a94f8b160 (&dev->mutex){....}-{4:4}, at: device_release_driver_internal+0x40/0x240
[   60.566092]  #5: ffff1a9a9409c0e0 (&shost->scan_mutex){+.+.}-{4:4}, at: scsi_remove_host+0x24/0x194
[   60.566101]  #6: ffff1a9a94abf378 (&dev->mutex){....}-{4:4}, at: device_release_driver_internal+0x40/0x240
[   60.566112]  #7: ffff1a9a948b00e0 (&q->q_usage_counter(queue)#3){++++}-{0:0}, at: sd_remove+0x38/0x88
[   60.566123]  #8: ffffd15e3cd706c0 (rcu_read_lock){....}-{1:3}, at: __flush_work+0x48/0x504
[   60.566134]
               stack backtrace:
[   60.566137] CPU: 0 UID: 0 PID: 126 Comm: kworker/0:2 Tainted: G        W          6.13.0-rc1 #11
[   60.566143] Tainted: [W]=WARN
[   60.566145] Hardware name: Qualcomm CRD, BIOS 6.0.231221.BOOT.MXF.2.4-00348.1-HAMOA-1 12/21/2023
[   60.566149] Workqueue: usb_hub_wq hub_event
[   60.566155] Call trace:
[   60.566158]  show_stack+0x18/0x24 (C)
[   60.566163]  dump_stack_lvl+0x90/0xd0
[   61.400051]  dump_stack+0x18/0x24
[   61.400055]  print_circular_bug+0x298/0x37c
[   61.400059]  check_noncircular+0x15c/0x170
[   61.400062]  __lock_acquire+0x1344/0x20e8
[   61.400066]  lock_acquire+0x1c8/0x354
[   61.400069]  __flush_work+0x1e8/0x504
[   61.400074]  flush_delayed_work+0x50/0x84
[   61.400080]  wb_shutdown+0x9c/0x10c
[   61.400086]  bdi_unregister+0x88/0x1e8
[   61.400091]  del_gendisk+0x330/0x370
[   61.400097]  sd_remove+0x38/0x88
[   61.400102]  device_remove+0x70/0x80
[   61.400107]  device_release_driver_internal+0x1e4/0x240
[   61.400113]  device_release_driver+0x18/0x24
[   61.400118]  bus_remove_device+0xd0/0x148
[   61.400123]  device_del+0x148/0x374
[   61.400126]  __scsi_remove_device+0x124/0x18c
[   61.400130]  scsi_forget_host+0x78/0x80
[   61.400135]  scsi_remove_host+0x74/0x194
[   61.400139]  usb_stor_disconnect+0x74/0xfc [usb_storage]
[   61.400144]  usb_unbind_interface+0x80/0x2bc
[   61.400148]  device_remove+0x70/0x80
[   61.400153]  device_release_driver_internal+0x1e4/0x240
[   61.400158]  device_release_driver+0x18/0x24
[   61.400164]  bus_remove_device+0xd0/0x148
[   61.400169]  device_del+0x148/0x374
[   61.400172]  usb_disable_device+0xf8/0x244
[   61.400178]  usb_disconnect+0xe4/0x314
[   61.400182]  hub_event+0xbe8/0x1950
[   61.400187]  process_one_work+0x20c/0x610
[   61.400192]  worker_thread+0x23c/0x378
[   61.400197]  kthread+0x124/0x128
[   61.400201]  ret_from_fork+0x10/0x20
[   61.508474] usb usb5: USB disconnect, device number 1
[   61.618437] xhci-hcd xhci-hcd.7.auto: USB bus 5 deregistered
[   61.618467] xhci-hcd xhci-hcd.7.auto: remove, state 4
[   61.618472] usb usb4: USB disconnect, device number 1
[   61.619930] xhci-hcd xhci-hcd.7.auto: USB bus 4 deregistered

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Z1A8fai9_fQFhs1s%40hovoldconsulting.com.
