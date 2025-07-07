Return-Path: <usb-storage+bncBCUJ7YGL3QFBBG4UV3BQMGQEXLDUFOY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AADAFAEE9
	for <lists+usb-storage@lfdr.de>; Mon,  7 Jul 2025 10:49:33 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-311ef4fb5fdsf2944008a91.1
        for <lists+usb-storage@lfdr.de>; Mon, 07 Jul 2025 01:49:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751878172; cv=pass;
        d=google.com; s=arc-20240605;
        b=RrA2CvTOJbXxgi8lRZN7Q/5Ch6ZyDkLTsKaVsv7lUowOdgVTZYazoY4w81exia5Psp
         qJi7hIbISUJzubmF6FB6XQOxuF2qk+LGyXKdqTjNpyWc3sADfIAG1kduZfWLecpU5pIU
         E19syH2/E7kk18sawv5ldtwHKfmslKnjvgDK9EosQTKuqrbc0rpCX/VOcORUlQ/wjX2d
         +asjP1jhTHoue19e8upX5vSrdnOoeNCAGHMJCwRwyTp9/J5wCzTHagpJTwG/sn/nNouk
         /8h91ZYMiLHBPf6R7B1LcQaL5qLicPwKy4HL/Hn0FzF6JgnYVGewH+jw3V6HeDyq7OtK
         oMoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JKE95QtaflM8fEE+4he/3maiJYxx1G9IEwPyVYh5q6g=;
        fh=oENHQYFX3r/Uwd0XI5RT/wKX5QXUs2fCh6yRPp++YUg=;
        b=Ley4slIPp1kmewoJ4JnZJbj0jOQNvtJZDJ4XHl/L8Prmr9YBRBeRWzwdyW0u8cVtzz
         r6YueWTio++i3fk0dWiZWlqPjp7JfN1/nxlCORHlYmiOShs15dpFZ4aQ8X6+vXI8oluq
         mtoSVbJhE/bKdFF8LH3v5zP2uPHdLKgVqLQDbpOPFnZ6/RY3Pr1nic9kb7PM3YQ96V6z
         o9xT2n+Mjpv5bA82Uwjn5IPS7VuU+HCBXVCwF5WsLZfWVZpGZI8jIhN28kE5OzGlpCrP
         IhIIChtPLagVuV1lPc/tWCaNQjB5Jkh41D8hT+NSLsnV7ikrMdPD5FFWK1jpNNo2z8H3
         bEAg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DEmAoLcy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751878172; x=1752482972; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKE95QtaflM8fEE+4he/3maiJYxx1G9IEwPyVYh5q6g=;
        b=Ju5DmLJ5uJUN3yw2diz9bDdQ3Fie1nevc6LB2pWF8MB1UHelfF5A3RrD57dkJ5+TGv
         3YtKC3EkCgJnqd1KgxTrMVhysBoRDMjEcVymqPthEhNO7rVGoOx8H+UsDpoF59l2W34u
         +QxH6fl7iwPdfK+l+R7jkZIdITdDPGaZIh98c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751878172; x=1752482972;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKE95QtaflM8fEE+4he/3maiJYxx1G9IEwPyVYh5q6g=;
        b=nIIyvVXxqMnbSTrf2ahvdyGD7NKQcqfmuopzVk7x/N3krvGc6I58MuNWHBE/pItoEA
         Zf0LuXN8oU3qIqfzVhJH6gSYOQi/NbQiJId//E7y6z6e3g6jtF2STrVUNsKoI1h3wmgh
         sxwP+h+SUYKm6ftYBru3g3IKWzsM1xvegBdc3OjRCfGdB5f7BhHE8jFGmyaLD8PMWnwU
         NNe/4FaFY77UYvxccS611FMnlbyGdSj9qjsfoH27Ja/UqKdSlC9k8t/J/CQKE0SnxhP0
         wwc8cw9/548t6EQLcyl03d+1HWUpye7UMxRejedZy7Cf6ZFaGq8hIH6OLNkP0gMt/Vkp
         o1+w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU8f+ewlFG7TtpfjB08FAuZG8Yye2/ylz2uCYxOXYdb6tDpLT97tSeSoTVmCZf1PT40uOcSFg==@lfdr.de
X-Gm-Message-State: AOJu0YzCQiKU8GtYLmiRQu8dP8QYs0Zp8JLxRR9IOudupBLEDqSB/J7z
	7hxm7Q1RbGTihgguWP/tNaty5Y0ObBaQIvHwrxmBoZ5y3DH9jvnTRu2wf52P00XzJzA=
X-Google-Smtp-Source: AGHT+IFzZiJX9bHWymcWUb8XDlbgEUr39k/PT0QmAglxyqFKmLNt3eFfAlOQzlcFEtdXCAKWRq4fkg==
X-Received: by 2002:a17:90b:3910:b0:311:a54d:8492 with SMTP id 98e67ed59e1d1-31aba828617mr10538746a91.6.1751878172238;
        Mon, 07 Jul 2025 01:49:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcZxuBd4gzu3NdazF4QrECvUqskau0Kn97ionX37sSfdA==
Received: by 2002:a17:90b:2283:b0:30e:b1d1:94d3 with SMTP id
 98e67ed59e1d1-31ab035b7d7ls2182949a91.1.-pod-prod-02-us; Mon, 07 Jul 2025
 01:49:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXpuh+NwdABj9yBtihtE5SmQFZZgHbG9S3QjBYGVkrtKlVBcTPNj6bz4eV8CW3wdKvgZh+4lLFNWIf1Kw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90a:fc4c:b0:315:b07a:ac12 with SMTP id 98e67ed59e1d1-31aba84b709mr12966127a91.14.1751878170870;
        Mon, 07 Jul 2025 01:49:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751878170; cv=none;
        d=google.com; s=arc-20240605;
        b=lv/B8Ik0breMk9dnYq9SnfIbYwZEV46Of9wmxoEJ3tl/iTGVZkqyHLIIWDYF2JtHoc
         eh0a+XvjUjXa1/TJK8DlF9PaKwuO2q6Urn8IE6pY16LrlDlxGCLGZzTl5GcsiwIxu9fd
         0pydl88dKyrQ4Xh6h6Rgp9qXX80324L7aZdxt8j2R8fSpqQYgpALhTBjl0Y6NhFrtgUw
         S19XA3HVStikqARgXTCfOtHJCJlpUR4mj7OnypYWKmE6hJovkPYbgODCXuWBZ0d4wDGh
         is+4rG98/826QJaB+T408uAxOYMCED05V92lppzPfP8Dz20FEX/dq/IbNlrv+r8xMqAA
         nE9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=p3/4TYjtUw3ZYqqZwXzmIxodcuAT4JmcUyQNI0EXN5Q=;
        fh=a1YKTi9pHnywQ2XBEVGe7xjTioXL4dc+m9vRhIedUME=;
        b=PGhqHoakniWmixtaWXeeXKMaw07rMWZlty5eVuZEpOQu7SU1DEJm8ksVJsZ8qF0E4k
         v9BeFAy4QD/rtJrMDaaUGUE1INeUhcox3k8hiD84KLP9fSCvFYtyinim4nh1lwTE3LdV
         WkTkhEO7zC1FwyaDCgfj3UU44YRE5+niQmTBypm/n1R81DxV5vshBp2wok3el8Z93M3z
         EDSyVzPXLwOzNigdHZPDdyk6c+bLi09tkDAGjeHRApJlcirLOuamspdU1mAGN82Ds+uO
         GZP7XxpoV2moBD5eW/lLePosAKy9wqSezK9jWq8OYSlumq6fY30TpaC8zUB1koFiNMUB
         3xDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DEmAoLcy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-31a9cd2608bsi13444738a91.160.2025.07.07.01.49.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 01:49:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4E5B045945;
	Mon,  7 Jul 2025 08:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD4CC4CEE3;
	Mon,  7 Jul 2025 08:49:29 +0000 (UTC)
Date: Mon, 7 Jul 2025 10:49:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
Message-ID: <2025070702-unsigned-runny-62c6@gregkh>
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250707062507.39531-1-dengjie03@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=DEmAoLcy;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Jul 07, 2025 at 02:25:07PM +0800, Jie Deng wrote:
> The SanDisk Extreme Pro 55AF storage device(0781:55af) has poor compatibility with UAS drivers.
> The logs:
> [    1.359859][ 0] [  T163] usb 2-1: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd

Nit, the [] stuff should all be removed, it's not relevant, right?

> [    1.385708][ 0] [  T163] usb 2-1: New USB device found, idVendor=0781, idProduct=55af, bcdDevice=10.85
> [    1.385709][ 0] [  T163] usb 2-1: New USB device strings: Mfr=2, Product=3, SerialNumber=1
> [    1.385710][ 0] [  T163] usb 2-1: Product: Extreme Pro 55AF
> [    1.385711][ 0] [  T163] usb 2-1: Manufacturer: SanDisk
> [    1.385711][ 0] [  T163] usb 2-1: SerialNumber: 323234323935343030343636
> [    1.927603][ 0] [  T306] usbcore: registered new interface driver usb-storage
> [    1.940511][ 0] [  T306] scsi host3: uas
> [    1.940584][ 0] [  T306] usbcore: registered new interface driver uas
> [    1.940843][ 0] [  T188] scsi 3:0:0:0: Direct-Access     SanDisk  Extreme Pro 55AF 1085 PQ: 0 ANSI: 6
> [    1.941363][ 0] [  T188] scsi 3:0:0:1: Enclosure         SanDisk  SES Device       1085 PQ: 0 ANSI: 6
> [    1.941697][ 0] [  T188] sd 3:0:0:0: Attached scsi generic sg0 type 0
> [    1.941783][ 0] [  T188] scsi 3:0:0:1: Attached scsi generic sg1 type 13
> [    1.942296][ 0] [  T189] sd 3:0:0:0: [sda] 1953459617 512-byte logical blocks: (1.00 TB/931 GiB)
> [    1.942373][ 0] [  T189] sd 3:0:0:0: [sda] Write Protect is off
> [    1.942374][ 0] [  T189] sd 3:0:0:0: [sda] Mode Sense: 37 00 10 00
> [    1.942534][ 0] [  T189] sd 3:0:0:0: [sda] Write cache: enabled, read cache: enabled, supports DPO and FUA
> [    1.943586][ 0] [  T189] sd 3:0:0:0: [sda] Optimal transfer size 2097152 bytes
> [    1.976797][ 0] [  T189]  sda: sda1
> [    1.977898][ 0] [  T189] sd 3:0:0:0: [sda] Attached SCSI disk
> [    1.980406][ 0] [  T267] scsi 3:0:0:1: Failed to get diagnostic page 0x1
> [    1.980408][ 0] [  T267] scsi 3:0:0:1: Failed to bind enclosure -19
> [    1.980414][ 0] [  T267] ses 3:0:0:1: Attached Enclosure device
> [    1.981068][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 data cmplt err -75 uas-tag 1 inflight: CMD
> [    1.981071][ 0] [    C0] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
> [   33.819186][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 uas_eh_abort_handler 0 uas-tag 1 inflight: CMD
> [   33.819188][ 0] [  T188] sd 3:0:0:0: [sda] tag#10 CDB: Read(10) 28 00 74 6f 6d 00 00 00 08 00
> [   33.843186][ 0] [  T309] scsi host3: uas_eh_device_reset_handler start

So new devices are being made that can not handle UAS?  Are you sure
there's not some other quirk that could be used here instead?  How does
this device work on other operating systems with the UAS drivers there?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025070702-unsigned-runny-62c6%40gregkh.
